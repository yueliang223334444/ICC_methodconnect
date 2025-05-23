import os

# 配置参数
JAVA_JAR_DIR = "/mnt/work/git/ICCBot/ICCBot.jar"
APK_DIR = "/mnt/work/MalDroid2020/apk/Banking"
OUTPUT_DIR = "/mnt/work/git/ICCBot/ICCapkoutputtest/Banking"
ANDROID_JAR = "/mnt/work/git/ICCBot/lib/platforms"  # 确保路径正确
TIMEOUT = 1
TIMEOUT_SECONDS = 110
ICCBOT_DIR = "/mnt/work/git/ICCBot"
CLIENT = "CTGClient"
# 新增：错误APK记录文件（每行一个APK文件名）
ERROR_RECORD_FILE = os.path.join(OUTPUT_DIR, "failed_apks.txt")

# 检查 Android SDK 文件是否存在
if not os.path.exists(ANDROID_JAR):
    print(f"错误：Android SDK 文件不存在: {ANDROID_JAR}")
    print("请检查 ANDROID_JAR 配置是否正确，或文件是否已被删除。")
    exit(1)

# 创建输出目录（包括错误记录文件所在目录）
os.makedirs(OUTPUT_DIR, exist_ok=True)

with open(ERROR_RECORD_FILE, 'w') as f:
    pass  # 创建空文件

# 获取目录下所有 APK 文件
apk_files = [f for f in os.listdir(APK_DIR)]
mistakes_number = 0

if not apk_files:
    print(f"错误：{APK_DIR} 目录下未找到 APK 文件！")
else:
    print(f"找到 {len(apk_files)} 个 APK 文件，开始处理...")

    # 仅处理前50个文件
    apk_files = apk_files[:50]

    for apk_file in apk_files:
        apk_name = os.path.basename(apk_file)
        apk_path = os.path.join(APK_DIR, apk_file)

        # 为每个 APK 创建单独的输出子目录
        apk_output_dir = os.path.join(OUTPUT_DIR, apk_name.replace('.apk', ''))
        os.makedirs(apk_output_dir, exist_ok=True)

        print(f"\n正在处理：{apk_name}")
        print(f"输出目录：{apk_output_dir}")

        # 构建 ICCBot 命令（保持原始格式）
        cmd = (
            f"timeout {TIMEOUT_SECONDS}s "
            f"java -jar {JAVA_JAR_DIR} "
            f"-path {APK_DIR} "
            f"-name {apk_name} "
            f"-androidJar {ANDROID_JAR} "
            f"-time {TIMEOUT} "
            f"-client {CLIENT} "
            f"-outputDir {apk_output_dir}"
        )

        try:
            os.chdir(ICCBOT_DIR)
            returncode = os.system(cmd)  # 仅使用 os.system

            if returncode == 0:
                print(f"✓ {apk_name} 处理完成")
            else:
                # 标记为处理失败，记录到文件
                mistakes_number += 1
                with open(ERROR_RECORD_FILE, "a") as f:
                    if returncode == 32512:  # 超时返回码（124的十进制表示）
                        f.write(f"{apk_name} TIMEOUT\n")
                        print(f"✗ {apk_name} 处理超时（{TIMEOUT_SECONDS}秒）")
                    else:
                        f.write(f"{apk_name}\n")  # 每个文件名占一行
                        print(f"✗ {apk_name} 处理失败，返回码：{returncode}")

        except Exception as e:
            # 捕获切换目录等异常，跳过当前APK
            mistakes_number += 1
            with open(ERROR_RECORD_FILE, "a") as f:
                f.write(f"{apk_name}\n")
            print(f"✗ {apk_name} 处理异常：{str(e)}")
            continue  # 跳过当前APK，继续下一个

print("\n所有 APK 处理完成！")
print(f"处理失败或异常的个数：{mistakes_number}")
print(f"错误APK记录：{ERROR_RECORD_FILE} ")
# 的说法是非得失颠三倒四负担ssdddd