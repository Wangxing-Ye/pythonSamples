.class Lcom/unipay/account/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;

.field final synthetic b:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/d;->b:Lcom/unipay/account/UnipayAccountPlatform;

    iput-object p3, p0, Lcom/unipay/account/d;->a:Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/unipay/account/d;->a:Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/unipay/account/UnipayAccountPlatform$c;

    iget-object v0, p0, Lcom/unipay/account/d;->b:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/unipay/account/UnipayAccountPlatform$c;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/a;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unipay/account/UnipayAccountPlatform$c;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/unipay/account/d;->a:Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;

    iget v2, v1, Lcom/unipay/account/UnipayAccountPlatform$c;->a:I

    iget-object v3, v1, Lcom/unipay/account/UnipayAccountPlatform$c;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/unipay/account/UnipayAccountPlatform$c;->c:Ljava/util/List;

    invoke-interface {v0, v2, v3, v1}, Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;->onResult(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
