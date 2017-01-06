.class Lcom/duoku/platform/single/util/f$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Lcom/duoku/platform/single/util/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/util/f;)V
    .locals 3

    iput-object p1, p0, Lcom/duoku/platform/single/util/f$a;->b:Lcom/duoku/platform/single/util/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {p1}, Lcom/duoku/platform/single/util/f;->a(Lcom/duoku/platform/single/util/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/duoku/platform/single/util/f;->b(Lcom/duoku/platform/single/util/f;)Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    move-result-object v1

    invoke-static {p1}, Lcom/duoku/platform/single/util/f;->c(Lcom/duoku/platform/single/util/f;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/k/b;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)Lcom/duoku/platform/single/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/b;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/util/f$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/duoku/platform/single/util/f$a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
