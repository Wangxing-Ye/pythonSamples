.class Lcom/duoku/platform/single/d/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/d/a/a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/d/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/a/c;->a:Lcom/duoku/platform/single/d/a/a;

    iput-object p2, p0, Lcom/duoku/platform/single/d/a/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/c;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v1}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/c;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->c(Lcom/duoku/platform/single/d/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
