.class public Lcom/duoku/platform/single/d/a/s;
.super Lcom/duoku/platform/single/d/a/u;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/duoku/platform/single/i/c;

.field private c:Lcom/duoku/platform/single/util/H;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-class v0, Lcom/duoku/platform/single/d/a/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/s;->c:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method private a(Z)V
    .locals 8

    const-string v5, ""

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->c:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ybk orderid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    const-string v2, "ybkcm"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc2

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    const-string v2, "dk_payment_order_failed"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    aget-object v0, p1, v4

    check-cast v0, Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->b()Lcom/duoku/platform/single/i/c;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->a()Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->h()Lcom/duoku/platform/single/item/DKCMYBKData;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    const-string v1, "\u878d\u5408\u8ba1\u8d39\u652f\u4ed8\u53c2\u6570\u9519\u8bef"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/d/a/s;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appKey"

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/DKCMYBKData;->getYbkKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productId"

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/DKCMYBKData;->getPayCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productName"

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "money"

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gameName"

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/s;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cpName"

    const-string v2, "\u767e\u5ea6\u79fb\u52a8\u6e38\u620f"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "customorderno"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/s;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channelId"

    const-string v2, "100002"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/s;->c:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ybk args ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/duoku/platform/single/d/a/s;->a(Z)V

    goto/16 :goto_0
.end method
