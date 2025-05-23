import networkx as nx

# 直接指定GML文件路径
GML_FILE_PATH = "/mnt/work/git/ICCBot/ICCapkoutputtest/cg.gml"  # 替换为实际的文件路径

G = nx.read_gml(GML_FILE_PATH)
print(nx.number_strongly_connected_components(G))