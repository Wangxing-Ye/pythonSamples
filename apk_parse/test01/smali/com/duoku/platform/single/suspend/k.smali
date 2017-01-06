.class public Lcom/duoku/platform/single/suspend/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/suspend/k$a;,
        Lcom/duoku/platform/single/suspend/k$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static final b:I = 0x320

.field private static c:Lcom/duoku/platform/single/suspend/k;


# instance fields
.field private d:Lcom/duoku/platform/single/suspend/q;

.field private e:Lcom/duoku/platform/single/suspend/a;

.field private f:Landroid/app/Activity;

.field private g:Landroid/app/Activity;

.field private h:Ljava/util/Timer;

.field private i:Ljava/util/Timer;

.field private j:Lcom/duoku/platform/single/suspend/k$a;

.field private k:Lcom/duoku/platform/single/suspend/k$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/suspend/k;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/k;->c:Lcom/duoku/platform/single/suspend/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/suspend/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/suspend/k;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/suspend/k;->c:Lcom/duoku/platform/single/suspend/k;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/k;->c:Lcom/duoku/platform/single/suspend/k;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/q;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->d:Lcom/duoku/platform/single/suspend/q;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/k;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/k;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->e:Lcom/duoku/platform/single/suspend/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/b;Z)V
    .locals 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/k;->g:Landroid/app/Activity;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->g:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/k;->g:Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->a(Landroid/content/Context;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->e:Lcom/duoku/platform/single/suspend/a;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->e:Lcom/duoku/platform/single/suspend/a;

    invoke-virtual {v0, p2, p3}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/item/b;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->j:Lcom/duoku/platform/single/suspend/k$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoku/platform/single/suspend/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/k$a;-><init>(Lcom/duoku/platform/single/suspend/k;Lcom/duoku/platform/single/suspend/k$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->j:Lcom/duoku/platform/single/suspend/k$a;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->i:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->i:Ljava/util/Timer;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->i:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/k;->j:Lcom/duoku/platform/single/suspend/k$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x320

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;)V
    .locals 4

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/k;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->a(Landroid/content/Context;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->d:Lcom/duoku/platform/single/suspend/q;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->d:Lcom/duoku/platform/single/suspend/q;

    invoke-virtual {v0, p2}, Lcom/duoku/platform/single/suspend/q;->a(Lcom/duoku/platform/single/item/e;)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->k:Lcom/duoku/platform/single/suspend/k$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoku/platform/single/suspend/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/k$b;-><init>(Lcom/duoku/platform/single/suspend/k;Lcom/duoku/platform/single/suspend/k$b;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->k:Lcom/duoku/platform/single/suspend/k$b;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->h:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/k;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/k;->k:Lcom/duoku/platform/single/suspend/k$b;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/suspend/k;->a:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->d:Lcom/duoku/platform/single/suspend/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->d:Lcom/duoku/platform/single/suspend/q;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->d()V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->e:Lcom/duoku/platform/single/suspend/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->e:Lcom/duoku/platform/single/suspend/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->h()V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->h:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->k:Lcom/duoku/platform/single/suspend/k$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->k:Lcom/duoku/platform/single/suspend/k$b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/k$b;->cancel()Z

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->i:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->j:Lcom/duoku/platform/single/suspend/k$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k;->j:Lcom/duoku/platform/single/suspend/k$a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/k$a;->cancel()Z

    :cond_5
    return-void
.end method
