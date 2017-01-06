.class public Lcom/cynosure/paymentsdk/helper/RootHelper;
.super Ljava/lang/Object;
.source "RootHelper.java"


# static fields
.field private static final BINPATH:Ljava/lang/String;

.field private static final XBINPATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/RootHelper;->BINPATH:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/RootHelper;->XBINPATH:Ljava/lang/String;

    return-void

    .line 10
    nop

    :array_0
    .array-data 1
        0x2ft
        0x73t
        0x79t
        0x73t
        0x74t
        0x65t
        0x6dt
        0x2ft
        0x62t
        0x69t
        0x6et
        0x2ft
        0x73t
        0x75t
    .end array-data

    .line 12
    nop

    :array_1
    .array-data 1
        0x2ft
        0x73t
        0x79t
        0x73t
        0x74t
        0x65t
        0x6dt
        0x2ft
        0x78t
        0x62t
        0x69t
        0x6et
        0x2ft
        0x73t
        0x75t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static isExecutable(Ljava/lang/String;)Z
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "p":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ls -l "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 34
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 37
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 38
    .local v1, "flag":C
    const/16 v5, 0x73

    if-eq v1, v5, :cond_0

    const/16 v5, 0x78

    if-ne v1, v5, :cond_4

    .line 46
    :cond_0
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 39
    :cond_1
    const/4 v5, 0x1

    .line 50
    .end local v1    # "flag":C
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return v5

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v5

    .line 46
    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 49
    :cond_3
    throw v5

    .line 46
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_1
.end method

.method public static isRoot()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 20
    sget-object v0, Lcom/cynosure/paymentsdk/helper/RootHelper;->BINPATH:Ljava/lang/String;

    .line 21
    .local v0, "binPath":Ljava/lang/String;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/RootHelper;->XBINPATH:Ljava/lang/String;

    .line 22
    .local v1, "xBinPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/RootHelper;->isExecutable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v2

    .line 24
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/RootHelper;->isExecutable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
