.class public Lcom/sns/game/util/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static final CCLAYOUT_ABOVE:I = 0x2

.field public static final CCLAYOUT_ALIGN_BOTTOM:I = 0x8

.field public static final CCLAYOUT_ALIGN_LEFT:I = 0x5

.field public static final CCLAYOUT_ALIGN_RIGHT:I = 0x7

.field public static final CCLAYOUT_ALIGN_TOP:I = 0x6

.field public static final CCLAYOUT_BELOW:I = 0x3

.field public static final CCLAYOUT_CENTER_HORIZONTAL:I = 0xe

.field public static final CCLAYOUT_CENTER_IN:I = 0xd

.field public static final CCLAYOUT_CENTER_VERTICAL:I = 0xf

.field public static final CCLAYOUT_LEFTOF:I = 0x0

.field public static final CCLAYOUT_RIGHTOF:I = 0x1

.field public static final COMMAND_LINE:Ljava/lang/String; = "/system/bin/cat"

.field public static final CUR_CPU_VISIT_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field public static final DEFAULT_DEVICE_HEIGHT:F = 480.0f

.field public static final DEFAULT_DEVICE_WIDTH:F = 800.0f

.field public static DEVICE_HEIGHT:F = 0.0f

.field public static DEVICE_WIDTH:F = 0.0f

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FILE_TAG_PLIST:Ljava/lang/String; = ".plist"

.field public static final FILE_TAG_PNG:Ljava/lang/String; = ".png"

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static LOWEST_CPU_FREQ:D = 0.0

.field public static final MAX_CPU_VISIT_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field public static final MIN_CPU_VISIT_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

.field public static SCALE_X:F

.field public static SCALE_Y:F

.field public static defaultRect_:Lorg/cocos2d/types/CGRect;

.field public static defaultSize_:Lorg/cocos2d/types/CGSize;

.field public static isLowCpu:Z

.field public static posZero_:Lorg/cocos2d/types/CGPoint;

.field public static winRect:Lorg/cocos2d/types/CGRect;

.field public static winSize_:Lorg/cocos2d/types/CGSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    .line 36
    const/high16 v0, 0x44480000    # 800.0f

    const/high16 v1, 0x43f00000    # 480.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    .line 37
    sget-object v0, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    sget-object v1, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->defaultRect_:Lorg/cocos2d/types/CGRect;

    .line 38
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->winSize_:Lorg/cocos2d/types/CGSize;

    .line 39
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->winRect:Lorg/cocos2d/types/CGRect;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    .line 90
    const-wide v0, 0x41224f8000000000L    # 600000.0

    sput-wide v0, Lcom/sns/game/util/DeviceManager;->LOWEST_CPU_FREQ:D

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 205
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "text":Ljava/lang/String;
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v0

    if-lt v4, v6, :cond_0

    .line 210
    const/4 v6, 0x1

    aget-object v6, v0, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "i":I
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 209
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "i":I
    .restart local v5    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "i":I
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 216
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 213
    :catch_1
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getCurCpuFreq()Ljava/lang/String;
    .locals 6

    .prologue
    .line 187
    const-string v3, "N/A"

    .line 189
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 191
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 196
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .locals 9

    .prologue
    .line 138
    const-string v6, ""

    .line 142
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v8, v0, v7

    .line 143
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 144
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 145
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 146
    .local v3, "in":Ljava/io/InputStream;
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 147
    .local v5, "re":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 150
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 148
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "re":[B
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 151
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 153
    const-string v6, "N/A"

    goto :goto_1
.end method

.method public static getMemory()J
    .locals 8

    .prologue
    .line 81
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 82
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    .local v0, "_manager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 84
    .local v3, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 85
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x100000

    div-long v1, v4, v6

    .line 86
    .local v1, "m":J
    return-wide v1
.end method

.method public static getMinCpuFreq()Ljava/lang/String;
    .locals 9

    .prologue
    .line 163
    const-string v6, ""

    .line 166
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v8, v0, v7

    .line 167
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 168
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 169
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 170
    .local v3, "in":Ljava/io/InputStream;
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 171
    .local v5, "re":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 174
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 172
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "re":[B
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 175
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 177
    const-string v6, "N/A"

    goto :goto_1
.end method

.method public static getOperatorType(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 224
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 225
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "IMSI":Ljava/lang/String;
    const-string v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IMSI = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-nez v0, :cond_1

    .line 240
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v3

    .line 229
    .restart local v0    # "IMSI":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v5, "46000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "46007"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 230
    goto :goto_0

    .line 231
    :cond_3
    const-string v5, "46002"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 232
    goto :goto_0

    .line 233
    :cond_4
    const-string v4, "46001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    const/4 v3, 0x2

    goto :goto_0

    .line 235
    :cond_5
    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    const/4 v3, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isLowCpu()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/DeviceManager;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "str_maxCpuFrea":Ljava/lang/String;
    const-string v5, "Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MAX_CPU_FREQ = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "N/A"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v4

    .line 109
    :cond_1
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 110
    .local v1, "maxCpuFrepValue":D
    sget-wide v5, Lcom/sns/game/util/DeviceManager;->LOWEST_CPU_FREQ:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v5, v1, v5

    if-gtz v5, :cond_0

    .line 112
    const/4 v4, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "maxCpuFrepValue":D
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setActivityParams(Landroid/app/Activity;)V
    .locals 6
    .param p0, "ay"    # Landroid/app/Activity;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "outMetrics":Landroid/util/DisplayMetrics;
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    const/16 v5, 0x400

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sput v3, Lcom/sns/game/util/DeviceManager;->DEVICE_WIDTH:F

    .line 50
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sput v3, Lcom/sns/game/util/DeviceManager;->DEVICE_HEIGHT:F

    .line 51
    sget v3, Lcom/sns/game/util/DeviceManager;->DEVICE_WIDTH:F

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    sput v3, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    .line 52
    sget v3, Lcom/sns/game/util/DeviceManager;->DEVICE_HEIGHT:F

    const/high16 v4, 0x43f00000    # 480.0f

    div-float/2addr v3, v4

    sput v3, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 58
    .end local v2    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "outMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "outMetrics":Landroid/util/DisplayMetrics;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "outMetrics":Landroid/util/DisplayMetrics;
    goto :goto_1
.end method

.method public static setCocos2DEngineParams(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    .line 62
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->setDisplayFPS(Z)V

    .line 63
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    const-wide v1, 0x3f91111120000000L    # 0.01666666753590107

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCDirector;->setAnimationInterval(D)V

    .line 64
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->setDeviceOrientation(I)V

    .line 65
    return-void
.end method

.method public static setCocos2dViewWinSize(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p0, "ccNode"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    sget v0, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCNode;->setScaleX(F)V

    .line 70
    sget v0, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCNode;->setScaleY(F)V

    .line 71
    invoke-virtual {p0, v1, v1}, Lorg/cocos2d/nodes/CCNode;->setAnchorPoint(FF)V

    .line 73
    :cond_0
    return-void
.end method

.method public static setDeviceParams()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/sns/game/util/DeviceManager;->isLowCpu()Z

    move-result v0

    sput-boolean v0, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    .line 97
    return-void
.end method

.method public static setDeviceWindowSize(Lorg/cocos2d/types/CGSize;)V
    .locals 2
    .param p0, "cgSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 76
    sput-object p0, Lcom/sns/game/util/DeviceManager;->winSize_:Lorg/cocos2d/types/CGSize;

    .line 77
    sget-object v0, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    sget-object v1, Lcom/sns/game/util/DeviceManager;->winSize_:Lorg/cocos2d/types/CGSize;

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/DeviceManager;->winRect:Lorg/cocos2d/types/CGRect;

    .line 78
    return-void
.end method
