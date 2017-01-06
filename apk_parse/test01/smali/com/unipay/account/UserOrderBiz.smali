.class public Lcom/unipay/account/UserOrderBiz;
.super Ljava/lang/Object;


# instance fields
.field private bizCode:Ljava/lang/String;

.field private effectDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipay/account/UserOrderBiz;->bizCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipay/account/UserOrderBiz;->effectDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBizCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserOrderBiz;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserOrderBiz;->effectDate:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UserOrderBiz{BizCode(%s), EffectDate(%s)}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unipay/account/UserOrderBiz;->bizCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unipay/account/UserOrderBiz;->effectDate:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
