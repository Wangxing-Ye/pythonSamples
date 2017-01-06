.class Lcom/unipay/account/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/AccountAPI$OnLogoutResultListener;

.field final synthetic b:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnLogoutResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/c;->b:Lcom/unipay/account/UnipayAccountPlatform;

    iput-object p3, p0, Lcom/unipay/account/c;->a:Lcom/unipay/account/AccountAPI$OnLogoutResultListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/account/c;->a:Lcom/unipay/account/AccountAPI$OnLogoutResultListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unipay/account/c;->b:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v2, v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_1
    iget-object v2, p0, Lcom/unipay/account/c;->a:Lcom/unipay/account/AccountAPI$OnLogoutResultListener;

    invoke-interface {v2, v1, v0}, Lcom/unipay/account/AccountAPI$OnLogoutResultListener;->onLogoutResult(ILjava/lang/String;)V

    goto :goto_0
.end method
