.class Lcom/unipay/account/UnipayAccountPlatform$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/account/UnipayAccountPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unipay/account/UserOrderBiz;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method private constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;)V
    .locals 1

    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->d:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->a:I

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform$c;-><init>(Lcom/unipay/account/UnipayAccountPlatform;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->a:I

    const-string v1, "errmsg"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->b:Ljava/lang/String;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bizCode"

    invoke-static {v3, v4}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "effectDate"

    invoke-static {v3, v5}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/unipay/account/UnipayAccountPlatform$c;->c:Ljava/util/List;

    new-instance v6, Lcom/unipay/account/UserOrderBiz;

    invoke-direct {v6, v4, v3}, Lcom/unipay/account/UserOrderBiz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
