.class public Lcom/duoku/platform/single/d/a/h;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/app/Activity;

.field private static e:Lcom/duoku/platform/single/d/a/h;


# instance fields
.field private b:Lcom/duoku/platform/single/i/c;

.field private c:Lcom/duoku/platform/single/item/DKCMGBData;

.field private d:Lcom/duoku/platform/single/util/H;

.field private f:Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/d/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/h;->d:Lcom/duoku/platform/single/util/H;

    new-instance v0, Lcom/duoku/platform/single/d/a/i;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/d/a/i;-><init>(Lcom/duoku/platform/single/d/a/h;)V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/h;->f:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    sput-object p1, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/duoku/platform/single/d/a/h;
    .locals 1

    sput-object p0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->e:Lcom/duoku/platform/single/d/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/d/a/h;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/d/a/h;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/duoku/platform/single/d/a/h;->e:Lcom/duoku/platform/single/d/a/h;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->e:Lcom/duoku/platform/single/d/a/h;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/d/a/h;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/h;->d:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

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

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v7, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/DKCMGBData;->getPropsType()I

    move-result v2

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/DKCMGBData;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMGBData;->isUserSms()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/DKCMGBData;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/h;->f:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    :goto_0
    return-void

    :cond_0
    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/DKCMGBData;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/h;->f:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMGBData;->isUserSms()Z

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/DKCMGBData;->isRepeated()Z

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/DKCMGBData;->getBillingIndex()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/h;->f:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/d/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/h;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/d/a/h;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    const-string v2, "MM"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CM_GB:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

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

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CM_GB:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

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

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    sget-object v1, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

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
    .locals 4

    const/4 v3, 0x0

    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Intent;

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/i/c;

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    const-string v1, "channel_view_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->g()Lcom/duoku/platform/single/item/DKCMGBData;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/h;->c:Lcom/duoku/platform/single/item/DKCMGBData;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    const-string v2, "gb_sdk"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/duoku/platform/single/d/a/h;->a(Ljava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/h;->b:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/h;->b()V

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    aget-object v1, p1, v2

    aget-object v2, p1, v6

    const/4 v3, 0x2

    aget-object v3, p1, v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$ILoginCallback;)V

    :goto_0
    sput-boolean v6, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->GAMEBASE_SDK_INIT_IS_OK:Z

    return-void

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/a/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    goto :goto_0
.end method
