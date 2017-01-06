.class Lcom/duoku/platform/single/d/a/p$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/d/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/d/a/p;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/d/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/duoku/platform/single/d/a/p$a;->getResultCode()I

    move-result v1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->a(Lcom/duoku/platform/single/d/a/p;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiver onReceive resultCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    iget-object v0, v0, Lcom/duoku/platform/single/d/a/p;->a:Lcom/duoku/platform/single/d/a/p$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->a(Lcom/duoku/platform/single/d/a/p;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    iget-object v2, v2, Lcom/duoku/platform/single/d/a/p;->a:Lcom/duoku/platform/single/d/a/p$a;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->b(Lcom/duoku/platform/single/d/a/p;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-boolean v4, v0, Lcom/duoku/platform/single/i/c;->r:Z

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->b(Lcom/duoku/platform/single/d/a/p;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->o()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->b(Lcom/duoku/platform/single/d/a/p;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-boolean v4, v0, Lcom/duoku/platform/single/i/c;->q:Z

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p$a;->a:Lcom/duoku/platform/single/d/a/p;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/p;->b(Lcom/duoku/platform/single/d/a/p;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/i/c;->a(Z)V

    goto :goto_1
.end method
