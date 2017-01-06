.class Lcom/unipay/account/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;

.field final synthetic b:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/h;->b:Lcom/unipay/account/UnipayAccountPlatform;

    iput-object p3, p0, Lcom/unipay/account/h;->a:Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/unipay/account/h;->a:Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;

    invoke-interface {v0}, Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;->onAccountSwitched()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/unipay/account/h;->a:Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;

    invoke-interface {v0}, Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;->onLogout()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/unipay/account/h;->a:Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_2
        0x2712 -> :sswitch_1
        0x2713 -> :sswitch_0
    .end sparse-switch
.end method
