package com.iscas.iccbot.client.obj.target.ctg;

import com.iscas.iccbot.Global;
import com.iscas.iccbot.MyConfig;
import com.iscas.iccbot.analyze.model.analyzeModel.MethodSummaryModel;
import com.iscas.iccbot.analyze.model.analyzeModel.ObjectSummaryModel;
import com.iscas.iccbot.analyze.model.analyzeModel.PathSummaryModel;
import com.iscas.iccbot.analyze.model.analyzeModel.UnitNode;
import com.iscas.iccbot.analyze.utils.SootUtils;
import com.iscas.iccbot.analyze.utils.output.PrintUtils;
import com.iscas.iccbot.client.obj.ObjectAnalyzer;
import com.iscas.iccbot.client.obj.model.atg.AtgEdge;
import com.iscas.iccbot.client.obj.model.atg.AtgNode;
import com.iscas.iccbot.client.obj.model.component.*;
import com.iscas.iccbot.client.obj.model.ctg.IntentSummaryModel;
import com.iscas.iccbot.client.statistic.model.DoStatistic;
import com.iscas.iccbot.client.statistic.model.StatisticResult;
import com.iscas.iccbot.analyze.utils.ConstantUtils;
import com.iscas.iccbot.analyze.utils.output.FileUtils;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class CTGAnalyzer extends ObjectAnalyzer {

    private String methodCallGraphPath;

    public CTGAnalyzer(List<SootMethod> topoQueue, StatisticResult result) {
        super(topoQueue, new CTGAnalyzerHelper(), result);
        String summary_app_dir = MyConfig.getInstance().getResultFolder() + Global.v().getAppModel().getAppName()
                + File.separator;
        methodCallGraphPath = summary_app_dir + ConstantUtils.CGFOLDETR 
                + Global.v().getAppModel().getAppName() + "_intent_mcg.txt";
    }

    @Override
    public void assignForObjectName() {
        this.objectName = IntentSummaryModel.class.getCanonicalName();
    }

    /**
     * getSingleClassAnalyze
     */
    @Override
    public void getSingleComponent(MethodSummaryModel methodSummary) {
        ComponentModel model = appModel.getComponentMap().get(
                SootUtils.getNameofClass(methodUnderAnalysis.getDeclaringClass().getName()));
        if (model == null)
            return;
        for (ObjectSummaryModel singleObject : methodSummary.getSingleObjects()) {
            IntentSummaryModel intentSummary = (IntentSummaryModel) singleObject;
            model.getReceiveModel().getReceivedActionSet().addAll(intentSummary.getGetActionCandidateList());
            model.getReceiveModel().getReceivedCategorySet().addAll(intentSummary.getGetCategoryCandidateList());
            model.getReceiveModel().getReceivedDataSet().addAll(intentSummary.getGetDataCandidateList());
            model.getReceiveModel().getReceivedTypeSet().addAll(intentSummary.getGetTypeCandidateList());
            for (Entry<String, List<ExtraData>> entry : intentSummary.getGetExtrasCandidateList().obtainBundle().entrySet())
                model.getReceiveModel().getReceivedExtraData().obtainBundle().put(entry.getKey(), entry.getValue());

            model.getSendModel().getSendActionSet().addAll(intentSummary.getSetActionValueList());
            model.getSendModel().getSendCategorySet().addAll(intentSummary.getSetCategoryValueList());
            model.getSendModel().getSendDataSet().addAll(intentSummary.getSetDataValueList());
            model.getSendModel().getSendTypeSet().addAll(intentSummary.getSetTypeValueList());
            model.getSendModel().getSendFlagSet().addAll(intentSummary.getSetFlagsList());
            for (Entry<String, List<ExtraData>> entry : intentSummary.getSetExtrasValueList().obtainBundle().entrySet())
                model.getSendModel().getSendExtraData().obtainBundle().put(entry.getKey(), entry.getValue());

        }
    }

    /**
     * analyzeCurrentSetMethods for a set of method
     */
    @Override
    public void drawATGandStatistic(MethodSummaryModel model) {
        if (model == null)
            return;
        generateATGInfo(model);
        generateMethodCallGraph(model);
        makeStatistic(model);
    }

    /**
     * generateATGInfo
     *
     * @param methodSummary
     */
    private void generateATGInfo(MethodSummaryModel methodSummary) {
        SootMethod sootMtd = methodSummary.getMethod();
        if (MyConfig.getInstance().getMySwitch().isImplicitLaunchSwitch()) {
            implicitDestinationAnalyze(methodSummary);
        }
        SootClass cls = null;
        if (appModel.getEntryMethod2Component().containsKey(sootMtd))
            cls = appModel.getEntryMethod2Component().get(sootMtd);
        // trick method
        if (cls == null) {
            String currentClsName = SootUtils.getNameofClass(sootMtd.getDeclaringClass());
            if (appModel.getComponentMap().containsKey(currentClsName))
                cls = sootMtd.getDeclaringClass();
            else
                return;
        }
        List<SootClass> subClasses = new ArrayList<SootClass>();
        boolean isEntry = appModel.getEntryMethods().contains(sootMtd);// ||
        // sootMtd.getName().startsWith(ConstantUtils.ENTRYID
        if (MyConfig.getInstance().getMySwitch().isDummyMainSwitch() && !isEntry)
            return;
        if (MyConfig.getInstance().getMySwitch().isPolymSwitch()) {
            try {
                subClasses = Scene.v().getActiveHierarchy().getSubclassesOfIncluding(cls);
            } catch (Exception e) {
                subClasses.add(cls);
            }
        } else {
            subClasses.add(cls);
        }
        for (SootClass sootCls : subClasses) {
            if (sootCls.getMethodUnsafe(sootMtd.getSubSignature()) == null || sootCls == sootMtd.getDeclaringClass()) {
                String src = sootCls.getName();
                for (ObjectSummaryModel intentSummary : methodSummary.getSingleObjects()) {
                    if (((IntentSummaryModel) intentSummary).getSendIntent2ICCList().size() == 0)
                        continue;
                    getTargetOfSrc((IntentSummaryModel) intentSummary, src);
                }
            }
        }
    }

    /**
     * getTargetOfSrc
     *
     * @param intentSummary
     * @param src
     */
    private void getTargetOfSrc(IntentSummaryModel intentSummary, String src) {
        SootMethod method = intentSummary.getMethod();
        UnitNode lastNode = intentSummary.getNodes().get(intentSummary.getNodes().size() - 1);
        for (String des : intentSummary.getSetDestinationList()) {
            ComponentModel comp = appModel.getComponentMap().get(des);
            AtgEdge edge;
            if(intentSummary.getSendTriple()==null) continue;
            if (comp != null ) {
                //TODO create method & the sendout method
                edge = new AtgEdge(new AtgNode(src), new AtgNode(des), method.getSignature(), intentSummary.getSendTriple().getInstructionId(),
                        comp.getComponentType());
                edge.setIntentSummary(intentSummary);
                Global.v().getiCTGModel().getOptModel().addAtgEdges(src, edge);
            } else {
                edge = new AtgEdge(new AtgNode(src), new AtgNode(des), method.getSignature(), intentSummary.getSendTriple().getInstructionId(), "c");
                edge.setIntentSummary(intentSummary);
                Global.v().getiCTGModel().getOptModel().addAtgEdges(src, edge);
            }
            String name = SootUtils.getNameofClass(src);
            ComponentModel sourceComponent = Global.v().getAppModel().getComponentMap().get(name);
            if (sourceComponent != null) {
                sourceComponent.getSendModel().getIccTargetSet().add(des);
            }
        }
    }

    /**
     * implicitDestinationAnalyze
     *
     * @param methodSummary
     */
    private void implicitDestinationAnalyze(MethodSummaryModel methodSummary) {
        for (ObjectSummaryModel singleObject : methodSummary.getSingleObjects()) {
            IntentSummaryModel intentSummary = (IntentSummaryModel) singleObject;

            if (intentSummary.getSendIntent2ICCList().size() == 0)
                continue;
            if (intentSummary.getSetDestinationList().size() > 0)
                continue;
            List<String> actionSet = intentSummary.getSetActionValueList();
            List<String> cateSet = intentSummary.getSetCategoryValueList();
            List<String> dataSet = intentSummary.getSetDataValueList();
            List<String> typeSet = intentSummary.getSetTypeValueList();
            if (actionSet.size() + cateSet.size() + dataSet.size() + typeSet.size() > 0) {
                analyzeDesinationByACDT(intentSummary);
                /** add destination match **/
            }
        }
    }

    /**
     * for implicit ICC destination match ICC-intent filter match rule
     *
     * @param intentSummary
     */
    private void analyzeDesinationByACDT(IntentSummaryModel intentSummary) {
        List<String> summaryActionSet = intentSummary.getSetActionValueList();
        List<String> summaryCateSet = intentSummary.getSetCategoryValueList();
        List<String> summaryDataSet = intentSummary.getSetDataValueList();
        List<String> summaryTypeSet = intentSummary.getSetTypeValueList();
        List<String> resSet = intentSummary.getSetDestinationList();
        boolean findTarget = false;
        for (ComponentModel component : appModel.getComponentMap().values()) {
            for (IntentFilterModel filter : component.getIntentFilters()) {
                Set<String> filterActionSet = filter.getAction_list();
                Set<String> filterCateSet = filter.getCategory_list();
                Set<Data> filterDataSet = filter.getData_list();
                Set<String> filterTypeSet = filter.getDatatype_list();
                if (filterActionSet.size() == 0 && filterCateSet.size() == 0)
                    continue;

                boolean actionTarget = false, cateTarget = true, dataTarget = false, typeTarget = true;
                // if a action is find same with one action in filer, matched
                // usually, only one action in summary
                //如果该过滤器未列出任何操作，则 Intent 没有任何匹配项，因此所有 Intent 均无法通过测试。但是，如果 Intent 未指定操作，则只要过滤器内包含至少一项操作，就可以通过测试。
                for (String action : filterActionSet) {
                    if (summaryActionSet.contains(action))
                        actionTarget = true;
                }
                if (!filterActionSet.isEmpty() && summaryActionSet.isEmpty())
                    actionTarget = true;
                /**
                 * android will add android.intent.category.DEFAULT to all
                 * implicit Activity ICC.
                 * https://developer.android.com/guide/components
                 * /intents-filters.html
                 **/
                boolean addDefault = false;
                if (component instanceof ActivityModel) {
                    if (!summaryCateSet.contains("android.intent.category.DEFAULT")) {
                        summaryCateSet.add("android.intent.category.DEFAULT");
                        addDefault = true;
                    }
                    if (!filterCateSet.contains("android.intent.category.DEFAULT"))
                        cateTarget = false;
                }
                // all the category in a summary must find a match one in filter
                for (String category : summaryCateSet) {
                    if (!filterCateSet.contains(category))
                        cateTarget = false;
                }
                if (addDefault)
                    summaryCateSet.remove("android.intent.category.DEFAULT");
                if (filterDataSet.size() == 0)
                    dataTarget = true;
                else {
                    for (String data : summaryDataSet) {
                        if (dataTarget == true)
                            break;
                        for (Data ifData : filterDataSet) {
                            boolean ifMatch = true;
                            if (ifData.getAuthority().length() > 0 && !data.toString().contains(ifData.getAuthority()))
                                ifMatch = false;
                            else if (ifData.getPath().length() > 0 && !data.toString().contains(ifData.getPath()))
                                ifMatch = false;
                            else if (ifData.getScheme().length() > 0 && !data.toString().contains(ifData.getScheme()))
                                ifMatch = false;
                            else if (ifData.getMime_type().length() > 0
                                    && !data.toString().contains(ifData.getMime_type()))
                                ifMatch = false;
                            if (ifMatch == true) {
                                dataTarget = true;
                                break;
                            }
                        }
                    }
                }
                for (String type : filterTypeSet) {
                    if (!summaryTypeSet.contains(type))
                        typeTarget = false;
                }
                boolean flag1 = actionTarget && cateTarget && dataTarget && typeTarget;
                if (flag1) {
                    if (component.getComponentType().contains(intentSummary.getTargetType())) {
                        findTarget = true;
                        intentSummary.setImplicit(true);
                        resSet.add(component.getComponetName());
                    }
                }
            }
        }
        if (!findTarget) {
            String res = "interICC_" + PrintUtils.printList(summaryActionSet) + ", "
                    + PrintUtils.printList(summaryCateSet);
            res = res.substring(0, res.length());
            resSet.add(res);
        }
    }

    /**
     * makeStatistic
     *
     * @param model
     */
    private void makeStatistic(MethodSummaryModel model) {
        // computeTraceDepth();
//		DoStatistic.updateTraceStatisticUseSummayMap(false, model, result);
//		DoStatistic.updateTraceStatisticUseSummayMap(true, model, result);

        DoStatistic.updateICCStatisticUseSummayMap(false, model, result);
        DoStatistic.updateICCStatisticUseSummayMap(true, model, result);

        DoStatistic.updateSummaryStatisticUseSummayMap(model, result);
        DoStatistic.updateMLSStatisticUseSummaryMap(true, model, result);
        DoStatistic.updateMLSStatisticUseSummaryMap(false, model, result);

    }

    /**
     * computeTraceDepth
     */
    public void computeTraceDepth() {
        for (Entry<String, MethodSummaryModel> en : currentSummaryMap.entrySet()) {
            MethodSummaryModel intentSummary = en.getValue();
            computeTraceDepthForOne(intentSummary, intentSummary, 1);
        }
    }

    /**
     * used in computeTraceDepth
     *
     * @param currentSummary
     * @param topSummary
     * @param i
     */
    private void computeTraceDepthForOne(MethodSummaryModel currentSummary, MethodSummaryModel topSummary, int i) {
        List<UnitNode> list = currentSummary.getNodePathList();
        for (UnitNode n : list) {
            if (n.getInterFunNode() != null) {
                if (topSummary.getMaxMethodTraceDepth() < i)
                    topSummary.setMaxMethodTraceDepth(i);
                computeTraceDepthForOne(n.getInterFunNode(), topSummary, i + 1);
            }
        }
    }

    /**
     * 生成 Intent 交互方法调用图（依赖框架已有映射，避免猜测）
     */
    private void generateMethodCallGraph(MethodSummaryModel ms) {
        if (ms == null || ms.getPathSet().isEmpty()) return;

        Set<String> edges = new LinkedHashSet<>();   // 保序去重

        /*
         * 1. 过滤出真正含 Intent 的 Path
         */
        for (ObjectSummaryModel obj : ms.getSingleObjects()) {
            if (!(obj instanceof IntentSummaryModel)) continue;
            IntentSummaryModel is = (IntentSummaryModel) obj;

            // ======= 原 hasICC() 改为内联判断 =======
            if (is.getSendIntent2ICCList().isEmpty()
                    && is.getSendIntent2FunList().isEmpty()
                    && is.getReceiveFromParaList().isEmpty()
                    && is.getReceiveFromOutList().isEmpty()
                    && is.getReceiveFromFromRetValueList().isEmpty()) {
                continue;
            }

            for (PathSummaryModel path : ms.getPathSet()) {
                if (!pathShareNodes(path, is)) continue;     // 同之前的交集检查

                List<String> trace = rebuildFullSignature(path.getMethodTrace());
                for (int i = 0; i < trace.size() - 1; i++) {
                    String src = labelWithComponent(trace.get(i));
                    String dst = labelWithComponent(trace.get(i + 1));
                    edges.add(src + " -> " + dst);
                }
            }
        }

        if (!edges.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            edges.forEach(e -> sb.append(e).append('\n'));
            FileUtils.writeText2File(methodCallGraphPath, sb.toString(), true);
            FileUtils.writeText2File(methodCallGraphPath, "写入完成\n", true);
        }
    }

    /* ---------- 辅助函数 ---------- */

    /** 用 entryMethod2Component 直接标注组件，不再猜测 */
    private String labelWithComponent(String fullSig) {
        SootMethod m;
        try { m = Scene.v().getMethod(fullSig); }
        catch (RuntimeException e) { return fullSig + " [Unknown]"; }

        // ① 已知组件
        if (appModel.getEntryMethod2Component().containsKey(m)) {
            SootClass c = appModel.getEntryMethod2Component().get(m);
            ComponentModel cm = appModel.getComponentMap().get(c.getName());
            if (cm != null)
                return fullSig + " [" + cm.getComponetName() + "@" + cm.getComponentType() + "]";
        }
        // ② 不是组件但属于 APP
        if (SootUtils.isNonLibClass(m.getDeclaringClass().getName()))
            return fullSig + " [AppClass]";
        return fullSig + " [LibClass]";
    }

    /** 把子签名列表补全为完整签名 */
    private List<String> rebuildFullSignature(List<String> subList) {
        List<String> res = new ArrayList<>(subList.size());
        for (String sub : subList) {
            if (sub.startsWith("<")) {                 // 已是完整签名
                res.add(sub);
                continue;
            }
            // ======= 原 getAllMethodsMap() 改为遍历 getAllMethods() =======
            SootMethod hit = null;
            for (SootMethod m : Global.v().getAppModel().getAllMethods()) {
                if (m.getSubSignature().equals(sub)) { hit = m; break; }
            }
            res.add(hit != null ? hit.getSignature() : sub);
        }
        return res;
    }

    /** IntentSummaryModel 中集中封装判断 */
    private static boolean pathShareNodes(PathSummaryModel p, IntentSummaryModel i) {
        Set<UnitNode> set = new HashSet<>(i.getNodes());
        set.retainAll(p.getNodes());
        return !set.isEmpty();
    }

    public String getMethodCallGraphPath() {
        return methodCallGraphPath;
    }

}
