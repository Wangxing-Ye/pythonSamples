.class public Lcom/duoku/platform/single/d/a/q;
.super Lcom/duoku/platform/single/d/a/u;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/duoku/platform/single/j/a/b;

.field private c:Lcom/duoku/platform/single/k/n;

.field private d:Lcom/duoku/platform/single/i/c;

.field private e:Lcom/duoku/platform/single/util/P;

.field private f:Ljava/lang/String;

.field private g:Lcom/duoku/platform/single/util/H;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-string v0, "GK"

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->f:Ljava/lang/String;

    const-class v0, Lcom/duoku/platform/single/d/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->g:Lcom/duoku/platform/single/util/H;

    new-instance v0, Lcom/duoku/platform/single/d/a/r;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/d/a/r;-><init>(Lcom/duoku/platform/single/d/a/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/d/a/q;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->g:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

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

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v7, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    if-lt v0, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/d/a/q;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    const-string v2, "cu_wostore"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v3, "cu_wostore"

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/e/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v3, "cu_wostore"

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_UNICOM_WOSTORE:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

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

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_UNICOM_WOSTORE:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

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

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    aget-object v0, p1, v11

    check-cast v0, Lcom/duoku/platform/single/j/a/b;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->b:Lcom/duoku/platform/single/j/a/b;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->b:Lcom/duoku/platform/single/j/a/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WoStore can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->b:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->b()Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/item/DKCMMdoData;->isCardgameFlag()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->b:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->a()Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->c()Lcom/duoku/platform/single/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->c:Lcom/duoku/platform/single/k/n;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/q;->e:Lcom/duoku/platform/single/util/P;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v9}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    const-string v1, "cu_wostore"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->f:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/duoku/platform/single/d/a/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v0, Lcom/unipay/beans/GameBaseBean;

    const-string v1, "905701688720140613102450622000"

    const-string v2, "9057016887"

    const-string v3, "86006180"

    const-string v4, "\u767e\u5ea6\u79fb\u52a8\u6e38\u620f"

    const-string v5, "4000-826-898"

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "00021799"

    invoke-direct/range {v0 .. v8}, Lcom/unipay/beans/GameBaseBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/unipay/beans/PayValueBean;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->c:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v1}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/q;->c:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v3}, Lcom/duoku/platform/single/k/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/unipay/beans/PayValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/q;->g:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dk pay info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v9, v11}, Lcom/duoku/platform/single/d/a/q;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/q;->a:Landroid/content/Context;

    sget-object v5, Lcom/unipay/unipay_sdk/UniPay$payType;->SMS:Lcom/unipay/unipay_sdk/UniPay$payType;

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/q;->h:Landroid/os/Handler;

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$payType;Landroid/os/Handler;)V

    return-void
.end method
