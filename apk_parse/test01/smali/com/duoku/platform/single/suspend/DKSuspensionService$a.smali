.class Lcom/duoku/platform/single/suspend/DKSuspensionService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKSuspensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionService;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionService;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->a(Lcom/duoku/platform/single/suspend/DKSuspensionService;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->a(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->a(Lcom/duoku/platform/single/suspend/DKSuspensionService;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/C;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionService$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionService;->b(Lcom/duoku/platform/single/suspend/DKSuspensionService;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->c()V

    goto :goto_0
.end method
