.class Lcom/duoku/platform/single/k/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/k/g;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    invoke-static {v0}, Lcom/duoku/platform/single/k/g;->a(Lcom/duoku/platform/single/k/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    iget-object v1, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    invoke-static {v1}, Lcom/duoku/platform/single/k/g;->b(Lcom/duoku/platform/single/k/g;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    invoke-static {v2}, Lcom/duoku/platform/single/k/g;->c(Lcom/duoku/platform/single/k/g;)Lcom/duoku/platform/single/item/e;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/k/h;->a:Lcom/duoku/platform/single/k/g;

    invoke-static {v3}, Lcom/duoku/platform/single/k/g;->d(Lcom/duoku/platform/single/k/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
