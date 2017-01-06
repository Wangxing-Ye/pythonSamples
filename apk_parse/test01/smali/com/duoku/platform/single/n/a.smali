.class public Lcom/duoku/platform/single/n/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/n/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/duoku/platform/single/n/a;


# instance fields
.field private b:Lcom/duoku/platform/single/util/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/n/a;->a:Lcom/duoku/platform/single/n/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/n/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/n/a;->b:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/n/a;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/n/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/n/a;->a:Lcom/duoku/platform/single/n/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/n/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/n/a;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/n/a;->a:Lcom/duoku/platform/single/n/a;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/n/a;->a:Lcom/duoku/platform/single/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2cb6687eb5"

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/duoku/game/DKGameSDK;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v2, "2cb6687eb5"

    invoke-static {v0, v1, v3, v2}, Lcom/duoku/game/DKGameSDK;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "1.4.2"

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2cb6687eb5"

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->setOn(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "10001"

    const-string v1, "sdk Initialized."

    const-string v2, "2cb6687eb5"

    invoke-static {p1, v0, v1, v2}, Lcom/duoku/game/DKGameSDK;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "2cb6687eb5"

    invoke-static {p1, p2, p3, v0, v1}, Lcom/duoku/game/DKGameSDK;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/n/a;->b:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/GameRecommendStatistics"

    const/16 v3, 0x65

    new-instance v4, Lcom/duoku/platform/single/n/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/single/n/a$a;-><init>(Lcom/duoku/platform/single/n/a;Lcom/duoku/platform/single/n/a$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "2cb6687eb5"

    invoke-static {p1, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "2cb6687eb5"

    invoke-static {p1, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPKEY:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
