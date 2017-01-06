.class public Lcom/duoku/platform/single/d/a/p;
.super Lcom/duoku/platform/single/d/a/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/d/a/p$a;
    }
.end annotation


# instance fields
.field a:Lcom/duoku/platform/single/d/a/p$a;

.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/single/j/a/b;

.field private d:Lcom/duoku/platform/single/k/n;

.field private e:Lcom/duoku/platform/single/i/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/d/a/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

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

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v4, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v6, v2, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v7, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/d/a/p;)Lcom/duoku/platform/single/i/c;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    return-object v0
.end method

.method private c()V
    .locals 10

    const/16 v9, 0xc

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    const-string v0, "yyyyMMddHHmmss"

    invoke-static {v0}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "14011002"

    invoke-virtual {p0, v3, v7}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->d:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v4}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v9}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {p0, v4, v7}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {p0, v0, v4}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "d13dc99cc1eca5cbb1fddfbc9e81d01e"

    const/16 v5, 0x20

    invoke-virtual {p0, v4, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "woreader"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "01"

    invoke-virtual {p0, v4, v6}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "12"

    invoke-virtual {p0, v5, v6}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "14011002"

    invoke-virtual {p0, v5, v7}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/p;->d:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v5}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v9}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "12345678"

    invoke-virtual {p0, v5, v7}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "003"

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, v2, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {p0, v0, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->d:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v4}, Lcom/duoku/platform/single/k/n;->c()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v8}, Lcom/duoku/platform/single/util/F;->a([BZ)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {p0, v1, v4}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v1, v8, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nto:10656666"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "10656666"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
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
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_UNICOM_WOREAD:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

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
    .locals 6

    const/4 v5, 0x0

    aget-object v0, p1, v5

    check-cast v0, Lcom/duoku/platform/single/j/a/b;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/p;->c:Lcom/duoku/platform/single/j/a/b;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->b()Lcom/duoku/platform/single/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->a()Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->c()Lcom/duoku/platform/single/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/p;->d:Lcom/duoku/platform/single/k/n;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->b()Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->d:Lcom/duoku/platform/single/k/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither smscode nor order can be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    const-string v2, "cu_wo"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/d/a/p$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/d/a/p$a;-><init>(Lcom/duoku/platform/single/d/a/p;)V

    iput-object v1, p0, Lcom/duoku/platform/single/d/a/p;->a:Lcom/duoku/platform/single/d/a/p$a;

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/p;->a:Lcom/duoku/platform/single/d/a/p$a;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.duoku.sms.send"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, v5}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/d/a/p;->a(Lcom/duoku/platform/single/i/c;)Z

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/p;->c()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/i/c;)Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

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
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/d/a/p;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    const-string v2, "cu_wo"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/e/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    const-string v3, "cu_wo"

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/e/h;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_UNICOM_WOREAD:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

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

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/p;->e:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->h(Ljava/lang/String;)V

    return-void
.end method
