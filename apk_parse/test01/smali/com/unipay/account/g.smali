.class Lcom/unipay/account/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/g;->c:Lcom/unipay/account/UnipayAccountPlatform;

    iput p2, p0, Lcom/unipay/account/g;->a:I

    iput-object p3, p0, Lcom/unipay/account/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "[notifyClientInitResult] code(%d), message(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/unipay/account/g;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unipay/account/g;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/g;->c:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->f(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnInitResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/account/g;->c:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->f(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnInitResultListener;

    move-result-object v0

    iget v1, p0, Lcom/unipay/account/g;->a:I

    iget-object v2, p0, Lcom/unipay/account/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unipay/account/AccountAPI$OnInitResultListener;->onResult(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unipay/account/g;->c:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/AccountAPI$OnInitResultListener;)Lcom/unipay/account/AccountAPI$OnInitResultListener;

    return-void
.end method
