.class Lcom/duoku/platform/single/k/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/k/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/c;->a:Lcom/duoku/platform/single/k/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/c;->a:Lcom/duoku/platform/single/k/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/b;->b()V

    :cond_0
    return-void
.end method
