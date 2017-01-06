.class Lcom/unipay/account/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "[UnipayAccountPlatform.checkUpdate.onResult] stat(%s), code(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->d()Lcom/unipay/account/UnipayAccountPlatform$a;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->d()Lcom/unipay/account/UnipayAccountPlatform$a;

    move-result-object v1

    sget-object v2, Lcom/unipay/account/UnipayAccountPlatform$a;->c:Lcom/unipay/account/UnipayAccountPlatform$a;

    if-eq v1, v2, :cond_0

    const-string v0, "NOT updating now(%s), bye"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->d()Lcom/unipay/account/UnipayAccountPlatform$a;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[UnipayAccountPlatform.checkUpdate.onResult] code(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    if-eq v0, v5, :cond_1

    const-string v0, "[UnipayAccountPlatform.checkUpdate] no update, bye"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->d:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->h(Lcom/unipay/account/UnipayAccountPlatform;)V

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->i(Lcom/unipay/account/UnipayAccountPlatform;)V

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f.0"

    invoke-static {v0, v4, v1}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "[UnipayAccountPlatform.checkUpdate] reload inner!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->j(Lcom/unipay/account/UnipayAccountPlatform;)V

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v1, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v1}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v3}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/account/f;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v4}, Lcom/unipay/account/UnipayAccountPlatform;->f(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnInitResultListener;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V

    goto :goto_0
.end method
