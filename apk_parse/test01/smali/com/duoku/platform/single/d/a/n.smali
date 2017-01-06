.class public Lcom/duoku/platform/single/d/a/n;
.super Lcom/duoku/platform/single/d/a/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/d/a/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/single/util/H;

.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/single/j/a/b;

.field private d:Lcom/duoku/platform/single/i/c;

.field private e:Lcom/duoku/platform/single/k/n;

.field private f:Lcom/duoku/platform/single/d/a/n$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/d/a/u;-><init>()V

    const-class v0, Lcom/duoku/platform/single/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/n;->a:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/d/a/n;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V
    .locals 12

    const/high16 v11, 0x41200000    # 10.0f

    const-string v0, "mdo"

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mdo"

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/single/d/a/n;->b(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    const-string v0, "ct_apex"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "game_base"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mdo"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ct_sfyz"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ct_tyrd"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, ","

    :goto_1
    const-string v1, ""

    const-string v3, ""

    const-string v6, ""

    const-string v2, ""

    const-string v1, ""

    const-string v7, ""

    const-string v8, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "mdo"

    iget-object v10, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    :goto_2
    sget-object v10, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    iget-object v11, p3, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v5, p3, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    :cond_3
    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->a:Lcom/duoku/platform/single/util/H;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->f(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/duoku/platform/single/d/a/n;->b(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "ct_sfdx"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_5

    const-string v0, ","

    goto/16 :goto_1

    :cond_5
    const-string v0, "tcdc"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_"

    goto/16 :goto_1

    :cond_6
    const-string v0, "ct_lt"

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "-"

    goto/16 :goto_1

    :cond_7
    const-string v0, ","

    goto/16 :goto_1

    :cond_8
    const-string v4, "ct_sfdx"

    iget-object v10, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v11

    if-ltz v4, :cond_9

    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v2, "ct_sfyz"

    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v2, p3, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/duoku/platform/single/util/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_a
    const-string v1, "tcdc"

    iget-object v2, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    iget-object v4, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v1, p3, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/single/util/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "0.01"

    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "game_base"

    iget-object v10, p3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "test"

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/duoku/platform/single/d/a/n;)Lcom/duoku/platform/single/d/a/n$a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->f:Lcom/duoku/platform/single/d/a/n$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v3, p3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/duoku/platform/single/i/c;->k:J

    iput-boolean v5, p3, Lcom/duoku/platform/single/i/c;->o:Z

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v1, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nto:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/d/a/n;)Lcom/duoku/platform/single/i/c;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v6, 0x0

    aget-object v0, p1, v6

    check-cast v0, Lcom/duoku/platform/single/j/a/b;

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/n;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->c:Lcom/duoku/platform/single/j/a/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SMS data can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->b()Lcom/duoku/platform/single/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->c:Lcom/duoku/platform/single/j/a/b;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/b;->a()Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->e()Lcom/duoku/platform/single/item/DKCMMdoData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->c()Lcom/duoku/platform/single/k/n;

    move-result-object v2

    iput-object v2, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "mdo"

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v0, "hfb"

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/duoku/platform/single/d/a/t;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/t;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v2}, Lcom/duoku/platform/single/k/n;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v2}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/t;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/duoku/platform/single/d/a/n$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/d/a/n$a;-><init>(Lcom/duoku/platform/single/d/a/n;)V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/n;->f:Lcom/duoku/platform/single/d/a/n$a;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->f:Lcom/duoku/platform/single/d/a/n$a;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.duoku.sms.send"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "cm_rdo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/duoku/platform/single/d/a/m;

    invoke-direct {v1}, Lcom/duoku/platform/single/d/a/m;-><init>()V

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    aput-object v4, v3, v7

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Lcom/duoku/platform/single/d/a/m;->a([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v1}, Lcom/duoku/platform/single/k/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-direct {p0, v1, v0, v3}, Lcom/duoku/platform/single/d/a/n;->b(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    :goto_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/h;->a(Lcom/duoku/platform/single/i/c;)I

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v1, v0, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    const-string v0, "ct_sfyz"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "ct_sfdx"

    :cond_4
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v8, v0, v3}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto/16 :goto_1

    :cond_5
    const-string v0, "mdo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "mdo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMMdoData;->getChannelNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/n;->c()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lcom/duoku/platform/single/item/DKCMMdoData;->isCardgameFlag()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QP"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    iget-object v5, v5, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/duoku/platform/single/util/Q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v4}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-direct {p0, v0, v1, v3}, Lcom/duoku/platform/single/d/a/n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMMdoData;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMMdoData;->getChannelNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/DKCMMdoData;->getDest()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/n;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/n;->e:Lcom/duoku/platform/single/k/n;

    invoke-virtual {v1}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/n;->d:Lcom/duoku/platform/single/i/c;

    invoke-direct {p0, v0, v1, v3}, Lcom/duoku/platform/single/d/a/n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V

    goto/16 :goto_2
.end method
