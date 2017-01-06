.class public Lcom/duoku/platform/single/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoku/platform/single/f/d;

.field private static i:Lcom/duoku/platform/single/util/H;


# instance fields
.field private b:Lcom/duoku/platform/single/f/a;

.field private c:Lcom/duoku/platform/single/d/b;

.field private d:Lcom/duoku/platform/single/view/DKLogoView;

.field private e:Landroid/app/Dialog;

.field private f:J

.field private g:Landroid/content/Context;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/f/d;->a:Lcom/duoku/platform/single/f/d;

    const-class v0, Lcom/duoku/platform/single/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/f/d;->i:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/duoku/platform/single/f/d;->h:J

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    new-instance v0, Lcom/duoku/platform/single/d/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/f/d;->c:Lcom/duoku/platform/single/d/b;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/f/d;)Lcom/duoku/platform/single/f/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/f/d;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/f/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/f/d;->a:Lcom/duoku/platform/single/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/f/d;

    invoke-direct {v0}, Lcom/duoku/platform/single/f/d;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/f/d;->a:Lcom/duoku/platform/single/f/d;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/f/d;->a:Lcom/duoku/platform/single/f/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/duoku/platform/single/view/DKLogoView;JLcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/duoku/platform/single/f/d;->h:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/duoku/platform/single/f/d;->h:J

    sub-long v0, v2, v0

    :goto_0
    sget-object v2, Lcom/duoku/platform/single/f/d;->i:Lcom/duoku/platform/single/util/H;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishLoadLogo  time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/duoku/platform/single/f/d;->i:Lcom/duoku/platform/single/util/H;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSDK  end time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/duoku/platform/single/f/f;

    invoke-direct {v3, p0, p4}, Lcom/duoku/platform/single/f/f;-><init>(Lcom/duoku/platform/single/f/d;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/f/d;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 7

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1}, Lcom/duoku/platform/single/f/a;->a(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/duoku/platform/single/view/DKLogoView;

    invoke-direct {v0, p1}, Lcom/duoku/platform/single/view/DKLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/f/d;->d:Lcom/duoku/platform/single/view/DKLogoView;

    iput-object p1, p0, Lcom/duoku/platform/single/f/d;->g:Landroid/content/Context;

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "DK.Theme.NoBackGround"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/single/f/d;->e:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->e:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->e:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/duoku/platform/single/f/d;->d:Lcom/duoku/platform/single/view/DKLogoView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoku/platform/single/f/d;->f:J

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->c:Lcom/duoku/platform/single/d/b;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/d/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    new-instance v6, Lcom/duoku/platform/single/f/e;

    invoke-direct {v6, p0}, Lcom/duoku/platform/single/f/e;-><init>(Lcom/duoku/platform/single/f/d;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/duoku/platform/single/f/a;->a(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->d:Lcom/duoku/platform/single/view/DKLogoView;

    iget-wide v1, p0, Lcom/duoku/platform/single/f/d;->f:J

    invoke-direct {p0, v0, v1, v2, p6}, Lcom/duoku/platform/single/f/d;->a(Lcom/duoku/platform/single/view/DKLogoView;JLcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method static synthetic d()Lcom/duoku/platform/single/util/H;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/f/d;->i:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/util/j;->e:Lcom/duoku/platform/single/suspend/q;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/j;->d:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/util/j;->d:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/util/j;->d:Lcom/duoku/platform/single/item/e;

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/single/suspend/k;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/single/f/a;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 4

    sget-object v0, Lcom/duoku/platform/single/f/d;->i:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSDK  time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/duoku/platform/single/f/d;->b(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1}, Lcom/duoku/platform/single/f/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/single/f/a;->a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/item/GamePropsInfo;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 8

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/duoku/platform/single/f/a;->a(Landroid/content/Context;Lcom/duoku/platform/single/item/GamePropsInfo;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/f/a;->a(Landroid/content/Context;Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1}, Lcom/duoku/platform/single/f/a;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/k;->b()V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/single/f/a;->b(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1}, Lcom/duoku/platform/single/f/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0}, Lcom/duoku/platform/single/f/a;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/duoku/platform/single/d/b;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->c:Lcom/duoku/platform/single/d/b;

    return-object v0
.end method

.method public c(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/f/d;->b:Lcom/duoku/platform/single/f/a;

    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/single/f/a;->c(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    return-void
.end method
