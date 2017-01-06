.class public Lcom/duoku/platform/single/d/a/d;
.super Lcom/duoku/platform/single/d/a/u;

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# static fields
.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/duoku/platform/single/d/a/d;


# instance fields
.field a:Lcom/duoku/platform/single/item/DKCMMMData;

.field b:Lcom/duoku/platform/single/i/c;

.field c:Lmm/purchasesdk/Purchase;

.field d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/d/a/d;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/d/a/d;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/d/a/d;->f:Lcom/duoku/platform/single/d/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/d/a/d;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/d;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/d/a/d;->f:Lcom/duoku/platform/single/d/a/d;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/d/a/d;->f:Lcom/duoku/platform/single/d/a/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/d/a/d;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    const-string v2, "MM"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v7, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    move-object v2, p1

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

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v7, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/d;->c:Lmm/purchasesdk/Purchase;

    sget-boolean v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/DKCMMMData;->getSKIN()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->c:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->c:Lmm/purchasesdk/Purchase;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/DKCMMMData;->getPaycode()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/DKCMMMData;->getUserdata()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->c:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/d/a/d;->b()V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Intent;

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/i/c;

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    const-string v1, "channel_view_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->f()Lcom/duoku/platform/single/item/DKCMMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/d;->a:Lcom/duoku/platform/single/item/DKCMMMData;

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    const-string v2, "MM"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/duoku/platform/single/d/a/d;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/d/a/d;->a(Lcom/duoku/platform/single/i/c;)Z

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/d;->c()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/i/c;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->b:Lcom/duoku/platform/single/i/c;

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

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/d;->d:Landroid/content/Context;

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

.method public onAfterApply()V
    .locals 0

    return-void
.end method

.method public onAfterDownload()V
    .locals 0

    return-void
.end method

.method public onBeforeApply()V
    .locals 0

    return-void
.end method

.method public onBeforeDownload()V
    .locals 0

    return-void
.end method

.method public onBillingFinish(ILjava/util/HashMap;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u8ba2\u8d2d\u7ed3\u679c\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_7

    :cond_0
    const-string v0, "\u8ba2\u8d2d\u6210\u529f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    const-string v0, "LeftDay"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "OrderId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",OrderID \uff1a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "Paycode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ",Paycode:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "TradeID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ",tradeID:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "OrderType"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ",ORDERTYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/d/a/d;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const-string v0, "\u8ba2\u8d2d\u5931\u8d25:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/duoku/platform/single/d/a/d;->b()V

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    :cond_0
    return-void
.end method

.method public onQueryFinish(ILjava/util/HashMap;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribeFinish(I)V
    .locals 0

    return-void
.end method
