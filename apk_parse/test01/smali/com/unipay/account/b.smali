.class Lcom/unipay/account/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unipay/account/loader/Loader$b;

.field final synthetic b:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/loader/Loader$b;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/b;->b:Lcom/unipay/account/UnipayAccountPlatform;

    iput-object p2, p0, Lcom/unipay/account/b;->a:Lcom/unipay/account/loader/Loader$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/account/b;->a:Lcom/unipay/account/loader/Loader$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/account/b;->a:Lcom/unipay/account/loader/Loader$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unipay/account/loader/Loader$b;->a(I)V

    :cond_0
    return-void
.end method
