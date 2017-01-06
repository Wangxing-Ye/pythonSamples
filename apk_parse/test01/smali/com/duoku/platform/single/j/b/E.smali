.class Lcom/duoku/platform/single/j/b/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a$f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/E;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "QuickpayPaymentOrderAcceptedListener"

    const-string v1, " ORDER_STATUS_DEALING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/E;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/E;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v1

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    return-void
.end method
