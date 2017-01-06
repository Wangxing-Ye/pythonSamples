.class Lcom/duoku/platform/single/j/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/p;->a:Lcom/duoku/platform/single/j/b/a;

    iput-boolean p2, p0, Lcom/duoku/platform/single/j/b/p;->b:Z

    iput-object p3, p0, Lcom/duoku/platform/single/j/b/p;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/p;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v1, Lcom/duoku/platform/single/view/j;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/p;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duoku/platform/single/view/j;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/view/j;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/p;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->B(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/view/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/j/b/p;->b:Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/j;->setCancelable(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/p;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->B(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/view/j;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
