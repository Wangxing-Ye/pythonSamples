.class public Lcom/duoku/platform/single/util/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/util/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/duoku/platform/single/util/f;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Lcom/duoku/platform/single/util/f$a;

.field private d:Landroid/app/Activity;

.field private e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/util/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/duoku/platform/single/util/f;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/f;->a:Lcom/duoku/platform/single/util/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/util/f;

    invoke-direct {v0}, Lcom/duoku/platform/single/util/f;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/f;->a:Lcom/duoku/platform/single/util/f;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/f;->a:Lcom/duoku/platform/single/util/f;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/util/f;)Lcom/duoku/platform/single/callback/IDKSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/util/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/util/f;->f:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/duoku/platform/single/util/f;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/duoku/platform/single/util/f;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    iput-boolean p3, p0, Lcom/duoku/platform/single/util/f;->f:Z

    :cond_0
    iput-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    iput-object v0, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    new-instance v0, Lcom/duoku/platform/single/util/f$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/util/f$a;-><init>(Lcom/duoku/platform/single/util/f;)V

    iput-object v0, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/f$a;->cancel()Z

    iput-object v1, p0, Lcom/duoku/platform/single/util/f;->c:Lcom/duoku/platform/single/util/f$a;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/duoku/platform/single/util/f;->b:Ljava/util/Timer;

    :cond_1
    return-void
.end method
