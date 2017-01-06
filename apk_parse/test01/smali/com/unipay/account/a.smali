.class Lcom/unipay/account/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/AccountAPI$OnLoginResultListener;

.field final synthetic b:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnLoginResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/a;->b:Lcom/unipay/account/UnipayAccountPlatform;

    iput-object p3, p0, Lcom/unipay/account/a;->a:Lcom/unipay/account/AccountAPI$OnLoginResultListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/account/a;->a:Lcom/unipay/account/AccountAPI$OnLoginResultListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/unipay/account/a;->a:Lcom/unipay/account/AccountAPI$OnLoginResultListener;

    invoke-interface {v1, v0}, Lcom/unipay/account/AccountAPI$OnLoginResultListener;->onLoginResult(I)V

    goto :goto_0
.end method
