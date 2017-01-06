.class public Lcom/duoku/platform/single/DKPlatform;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/duoku/platform/single/DKPlatform;


# instance fields
.field private c:Lcom/duoku/platform/single/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/single/DKPlatform;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->a()Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/duoku/platform/single/DKPlatform;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/DKPlatform;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/DKPlatform;->b:Lcom/duoku/platform/single/DKPlatform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/DKPlatform;

    invoke-direct {v0}, Lcom/duoku/platform/single/DKPlatform;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/DKPlatform;->b:Lcom/duoku/platform/single/DKPlatform;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/DKPlatform;->b:Lcom/duoku/platform/single/DKPlatform;
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
.method public bdgameExit(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/f/d;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public bdgameInit(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/f/d;->c(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public bdgamePause(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/f/d;->b(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public init(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 7

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/f/d;->a(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public invokeLotteryDrawView(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/f/d;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public invokePayCenterActivity(Landroid/content/Context;Lcom/duoku/platform/single/item/GamePropsInfo;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 8

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/f/d;->a(Landroid/content/Context;Lcom/duoku/platform/single/item/GamePropsInfo;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public invokeQueryDKOrderStatus(Landroid/content/Context;Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/f/d;->a(Landroid/content/Context;Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public invokeSupplementDKOrderStatus(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/f/d;->a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public isLotteryDrawButtonEnabled(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->b()Z

    move-result v0

    return v0
.end method

.method public pauseBaiduMobileStatistic(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/f/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public resumeBaiduMobileStatistic(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/f/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public stopSuspenstionService(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/DKPlatform;->c:Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/f/d;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
