.class Lcom/unipay/account/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/i;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/i;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->k(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/unipay/account/i;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->k(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;->onLogout()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/account/i;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->k(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;->onAccountSwitched()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
