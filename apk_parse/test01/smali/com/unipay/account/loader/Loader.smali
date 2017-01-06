.class public Lcom/unipay/account/loader/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/account/loader/Loader$a;,
        Lcom/unipay/account/loader/Loader$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Lcom/unipay/account/loader/Loader$b;

.field private d:Z

.field private e:Ljava/util/Timer;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/account/loader/Loader;->c:Lcom/unipay/account/loader/Loader$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unipay/account/loader/Loader;->d:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unipay/account/loader/Loader;->e:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unipay/account/loader/Loader;->f:I

    iput-object p1, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unipay/account/loader/Loader;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader$b;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->c:Lcom/unipay/account/loader/Loader$b;

    return-object v0
.end method

.method static synthetic a(Lcom/unipay/account/loader/Loader;Lcom/unipay/account/loader/Loader$b;)Lcom/unipay/account/loader/Loader$b;
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/loader/Loader;->c:Lcom/unipay/account/loader/Loader$b;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "abi(%s), fname(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "abi(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "wml_unknown"

    :cond_0
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v0, "arm64-v8a"

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v0, "armeabi-v7a"

    goto :goto_0

    :cond_2
    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v0, "armeabi"

    goto :goto_0

    :cond_3
    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    const-string v0, "mips64"

    goto :goto_0

    :cond_4
    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const-string v0, "mips"

    goto :goto_0

    :cond_5
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    const-string v0, "x86_64"

    goto :goto_0

    :cond_6
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    const-string v0, "x86"

    goto :goto_0

    :cond_7
    const-string v1, "unknown abi(%s), guess one(armeabi)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const-string v0, "armeabi"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_account_loadpath"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_account_load_info_3"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->b:Landroid/os/Handler;

    new-instance v1, Lcom/unipay/account/loader/a;

    invoke-direct {v1, p0, p1}, Lcom/unipay/account/loader/a;-><init>(Lcom/unipay/account/loader/Loader;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sdk_account_loadpath"

    invoke-static {p0, v0, p1}, Lcom/unipay/account/loader/Loader;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unipay/account/loader/Loader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/account/loader/Loader;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/unipay/account/loader/Loader;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :goto_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/unipay/account/loader/Loader;->d:Z

    invoke-direct {p0, v2, p1}, Lcom/unipay/account/loader/Loader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "openAssetSoFile failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "abi(%s), fname(%s), dir(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "loadpath NOT set, bye"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "file(%s) NOT exists, bye"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const-string v0, "/data/data/%s/.ulibs/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sdk_account_load_info_3"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/unipay/account/loader/Loader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/unipay/account/loader/Loader;)I
    .locals 1

    iget v0, p0, Lcom/unipay/account/loader/Loader;->f:I

    return v0
.end method

.method public static native c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[cleanSpInfo_LastUpdateTime]"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    const-string v0, "sdk_account_lastupdatetime"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/unipay/account/loader/Loader;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/unipay/account/loader/Loader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unipay/account/loader/Loader;->f:I

    :goto_0
    const-string v0, "-S trycnt(%d)"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/unipay/account/loader/Loader;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/account/loader/c;->a()Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Lcom/unipay/account/loader/Loader$a;

    invoke-direct {v1, p0, v0}, Lcom/unipay/account/loader/Loader$a;-><init>(Lcom/unipay/account/loader/Loader;Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->e:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string v0, "before load"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->l(Landroid/content/Context;)I

    move-result v0

    const-string v2, "after loader ret(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/unipay/account/loader/Loader$a;->cancel()Z

    if-nez v0, :cond_0

    move v0, v6

    :goto_1
    invoke-direct {p0, v0}, Lcom/unipay/account/loader/Loader;->a(I)V

    return v7

    :cond_0
    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadpath(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x5

    goto :goto_1
.end method

.method public static native ca(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native cb(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native cc(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/unipay/account/loader/Loader;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setSpInfo_ApplicationVersionCode] vcode(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    const-string v1, "appvercode"

    invoke-static {p0, v1, v0}, Lcom/unipay/account/loader/Loader;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "bad file detected!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/unipay/account/loader/Loader;->c(Landroid/content/Context;)V

    const-string v0, "badfile"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/unipay/account/loader/Loader;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libunicomaccount.jar"

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "missing so file(%s)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_inner.jar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "missing class file"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native l(Landroid/content/Context;)I
.end method


# virtual methods
.method public a(Lcom/unipay/account/loader/Loader$b;)Z
    .locals 2

    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->d(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unipay/account/loader/Loader;->c:Lcom/unipay/account/loader/Loader$b;

    :goto_1
    const-string v0, "libunicomaccount"

    invoke-direct {p0, v0}, Lcom/unipay/account/loader/Loader;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-nez v0, :cond_4

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/unipay/account/loader/Loader;->a(I)V

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/unipay/account/loader/Loader;->e()Z

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/unipay/account/loader/Loader;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/unipay/account/loader/Loader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->e(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unipay/account/loader/b;

    invoke-direct {v1, p0}, Lcom/unipay/account/loader/b;-><init>(Lcom/unipay/account/loader/Loader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_2
.end method
