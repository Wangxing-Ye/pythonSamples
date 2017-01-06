.class Lcom/duoku/platform/single/suspend/DKInitService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKInitService;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/suspend/DKInitService;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/duoku/platform/single/suspend/DKInitService;->a(Lcom/duoku/platform/single/suspend/DKInitService;Z)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKInitService;->a(Lcom/duoku/platform/single/suspend/DKInitService;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKInitService;->a(Lcom/duoku/platform/single/suspend/DKInitService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKInitService;->b(Lcom/duoku/platform/single/suspend/DKInitService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKInitService;->c(Lcom/duoku/platform/single/suspend/DKInitService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKInitService$a;->a:Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKInitService;->b(Lcom/duoku/platform/single/suspend/DKInitService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
