.class Lcom/duoku/platform/single/o/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/o/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->e(Lcom/duoku/platform/single/o/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duoku/platform/single/i/c;->r:Z

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/o/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/duoku/platform/single/o/a;->a(I)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->p:Lcom/duoku/platform/single/callback/c;

    invoke-interface {v0}, Lcom/duoku/platform/single/callback/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/o/b;->a:Lcom/duoku/platform/single/o/a;

    invoke-static {v0}, Lcom/duoku/platform/single/o/a;->c(Lcom/duoku/platform/single/o/a;)V

    :cond_1
    return-void
.end method
