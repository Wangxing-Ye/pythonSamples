.class Lcom/duoku/platform/single/o/a$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/o/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/o/a;->a(Lcom/duoku/platform/single/o/a;Z)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/o/a$b;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v1}, Lcom/duoku/platform/single/o/a;->a(Lcom/duoku/platform/single/o/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-boolean v2, v0, Lcom/duoku/platform/single/i/c;->r:Z

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->o()V

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    invoke-interface {v0}, Lcom/duoku/platform/single/callback/c;->a()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->c(Lcom/duoku/platform/single/o/a;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-boolean v2, v0, Lcom/duoku/platform/single/i/c;->q:Z

    iget-object v0, p0, Lcom/duoku/platform/single/o/a$b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/i/c;->a(Z)V

    goto :goto_0
.end method
