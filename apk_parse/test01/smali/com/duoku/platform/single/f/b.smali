.class public Lcom/duoku/platform/single/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/f/a;


# static fields
.field private static b:Lcom/duoku/platform/single/f/b;


# instance fields
.field public a:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/content/Context;

.field private g:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

.field private h:Lcom/duoku/platform/single/util/P;

.field private i:Lcom/duoku/platform/single/item/e;

.field private j:Lcom/duoku/platform/single/util/H;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/duoku/platform/single/f/b;->c:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/f/b;->d:Z

    const-class v0, Lcom/duoku/platform/single/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/f/b;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/f/b;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sput-object p2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    sput-object p3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    sput-object p4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPSECRET:Ljava/lang/String;

    sput-object p5, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    sget-object v0, Lcom/duoku/platform/single/util/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/g;->b:Ljava/lang/String;

    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/g;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_UA:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duoku appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appSecret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.4.2_20150108"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initBasicData appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appSecret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.4.2_20150108"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/duoku/platform/single/item/DKCMGBData;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "initGBSDK "

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/h;->a(Landroid/app/Activity;)Lcom/duoku/platform/single/d/a/h;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getGameName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpServerNum()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/h;->a([Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/duoku/platform/single/item/DKCMMMData;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "initMM "

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/d/a/d;->a()Lcom/duoku/platform/single/d/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;[Ljava/lang/String;Lcom/duoku/platform/single/callback/a;)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/k/l;->a()Lcom/duoku/platform/single/k/l;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/k/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/k/l;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/k/l;->a(Lcom/duoku/platform/single/item/DKCMGBData;)V

    invoke-virtual {v0, p4}, Lcom/duoku/platform/single/k/l;->a(Lcom/duoku/platform/single/callback/a;)V

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/l;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized d()Lcom/duoku/platform/single/f/b;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/f/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/f/b;->b:Lcom/duoku/platform/single/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/f/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/f/b;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/f/b;->b:Lcom/duoku/platform/single/f/b;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/f/b;->b:Lcom/duoku/platform/single/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->g:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/k/k;->a()Lcom/duoku/platform/single/k/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/k;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/f/b;->j()V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/duoku/platform/single/k/d;->a()Lcom/duoku/platform/single/k/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/k/d;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/k/d;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/duoku/platform/single/f/c;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/single/f/c;-><init>(Lcom/duoku/platform/single/f/b;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/f/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private i()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/J;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    iput-boolean v4, p0, Lcom/duoku/platform/single/f/b;->c:Z

    const-string v2, "BDGame"

    const-string v3, "The telephone number cannot be found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/J;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    return-object v1

    :cond_1
    iput-boolean v5, p0, Lcom/duoku/platform/single/f/b;->c:Z

    const-string v2, "BDGame"

    const-string v3, "The telephone number can be found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private j()V
    .locals 5

    invoke-direct {p0}, Lcom/duoku/platform/single/f/b;->i()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "BDGame"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryMobilePayChannel operator = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/k/m;->a()Lcom/duoku/platform/single/k/m;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/duoku/platform/single/k/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/k/m;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/f/b;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/f/b;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/duoku/platform/single/util/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    const-string v1, "5KkueoexXQVIfijDrKKBMrdt"

    invoke-static {v0, v2, v1}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushManager;->enableLbs(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "DKPlatform init : success"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    const-string v1, "G2XBNE9coXgZ8tbLS6UGWfqv"

    invoke-static {v0, v2, v1}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BDGame"

    const-string v1, "DKPlatform onCreate : param cannot be activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "dksdk_appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "dksdk_appkey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "dksdk_appsecret"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "dksdk_channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const-string v0, "BDGame"

    const-string v1, "DKPlatform Settings error, please check your settings!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BDGame"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/f/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    invoke-static {p1, v0, p2}, Lcom/duoku/platform/single/util/j;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Error"

    const-string v1, "Exit : param is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/a;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/duoku/platform/single/f/b;->d:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    :goto_0
    iput-object p3, p0, Lcom/duoku/platform/single/f/b;->g:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/b;->h:Lcom/duoku/platform/single/util/P;

    invoke-static {p1}, Lcom/duoku/platform/single/g/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->g:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "DKPlatform preinit : SdkMode.SDK_PAY"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/J;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "DKPlatform preinit : isNetConnect"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-nez p5, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "DKPlatform preinit : gbData != null || mmData != null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/f/b;->i()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v2, "DKPlatform preinit : initFlag"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct {p0, p4, p5, v0, p6}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;[Ljava/lang/String;Lcom/duoku/platform/single/callback/a;)V

    :goto_1
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "DKPlatform preinit : success"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sput v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    goto :goto_0

    :cond_2
    invoke-interface {p6}, Lcom/duoku/platform/single/callback/a;->a()V

    goto :goto_1

    :cond_3
    invoke-interface {p6}, Lcom/duoku/platform/single/callback/a;->a()V

    goto :goto_1

    :cond_4
    const-string v1, "cm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    invoke-direct {p0, p4}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    :cond_5
    if-eqz p5, :cond_6

    invoke-direct {p0, p5}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/item/DKCMGBData;)V

    :cond_6
    invoke-interface {p6}, Lcom/duoku/platform/single/callback/a;->a()V

    goto :goto_1

    :cond_7
    invoke-interface {p6}, Lcom/duoku/platform/single/callback/a;->a()V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/n/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 4

    invoke-static {p1}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/h;->c()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/i/a/a;

    invoke-direct {v1}, Lcom/duoku/platform/single/i/a/a;-><init>()V

    invoke-virtual {v1, p2}, Lcom/duoku/platform/single/i/a/a;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)Lcom/duoku/platform/single/i/a/a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/i/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/item/GamePropsInfo;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 3

    if-nez p7, :cond_0

    const-string v0, "BDGame"

    const-string v1, "Payment callback can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "BDGame"

    const-string v1, "paramContext can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "BDGame"

    const-string v1, "dkPlatformGameProps can not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/duoku/platform/single/util/Q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/16 v1, 0xbc7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->b(ILcom/duoku/platform/single/item/DKOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p7, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "cp_to_duoku_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    sget-object v2, Lcom/duoku/platform/single/d/d;->a:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/d;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "cm"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_4

    const-string v1, "cm_mdo_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    if-eqz p4, :cond_5

    const-string v1, "cm_mm_data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_5
    if-eqz p5, :cond_6

    const-string v1, "cm_gb_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_6
    if-eqz p6, :cond_7

    const-string v1, "cm_ybk_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p7}, Lcom/duoku/platform/single/d/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    const-string v0, "BDGame"

    const-string v1, "DKPlatform invokePayCenterActivity : success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Error"

    const-string v1, "invalid orderId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_2

    const-string v0, "Error"

    const-string v1, "invalid interface to query order status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/k/f;->a()Lcom/duoku/platform/single/k/f;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoku/platform/single/k/f;->a(Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/f;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    const-string v1, "\u65e0\u7f51\u7edc,\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    const-string v1, "\u6570\u636e\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->q()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/draw/b;->a()Lcom/duoku/platform/single/draw/b;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/duoku/platform/single/draw/b;->a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->q()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    const-string v1, "\u62bd\u5956\u6d3b\u52a8\u5df2\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/e;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/f/b;->c:Z

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "isShow"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-static {v3, v3, v0}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)Lcom/duoku/platform/single/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    iget-boolean v2, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-static {v3, v3, v0}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)Lcom/duoku/platform/single/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/b;->c()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-static {v3, v3, v1}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)Lcom/duoku/platform/single/k/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "Error"

    const-string v1, "Pause : param is invalid!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, "Pause : param is invalid!!!"

    invoke-interface {p2, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/n/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duoku/platform/single/f/b;->f:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/e;->q()I

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->j:Lcom/duoku/platform/single/util/H;

    const-string v1, "bdgameInit"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/duoku/platform/single/f/b;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/f/b;->a:Z

    invoke-static {}, Lcom/duoku/platform/single/util/f;->a()Lcom/duoku/platform/single/util/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/f/b;->d:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/duoku/platform/single/util/f;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/f/d;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string v0, "Error"

    const-string v1, "Init : param is invalid!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, "Init : param is invalid!!!"

    invoke-interface {p2, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/f/b;->c:Z

    return v0
.end method

.method public f()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Error"

    const-string v1, "getApplicationContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    goto :goto_0
.end method

.method public g()Lcom/duoku/platform/single/item/e;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->i:Lcom/duoku/platform/single/item/e;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/b;->e:Landroid/content/Context;

    return-object v0
.end method
