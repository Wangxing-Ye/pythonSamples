.class public Lcom/duoku/platform/single/d/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/d/a/g;


# static fields
.field private static synthetic o:[I


# instance fields
.field private a:Lcom/duoku/platform/single/d/a/k;

.field private b:Lcom/duoku/platform/single/d/a/n;

.field private c:Lcom/duoku/platform/single/d/a/a;

.field private d:Lcom/duoku/platform/single/d/a/p;

.field private e:Lcom/duoku/platform/single/d/a/q;

.field private f:Lcom/duoku/platform/single/d/a/l;

.field private g:Lcom/duoku/platform/single/d/a/j;

.field private h:Lcom/duoku/platform/single/d/a/d;

.field private i:Lcom/duoku/platform/single/d/a/o;

.field private j:Lcom/duoku/platform/single/d/a/h;

.field private k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

.field private l:I

.field private m:Lcom/duoku/platform/single/util/P;

.field private n:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/d/a/e;->l:I

    new-instance v0, Lcom/duoku/platform/single/d/a/n;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/n;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->b:Lcom/duoku/platform/single/d/a/n;

    new-instance v0, Lcom/duoku/platform/single/d/a/q;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/q;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->e:Lcom/duoku/platform/single/d/a/q;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/d/a/e;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/d/a/e;)Lcom/duoku/platform/single/callback/IDKSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/d/a/e;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/d/c;->values()[Lcom/duoku/platform/single/d/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/duoku/platform/single/d/c;->c:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_1
    :try_start_1
    sget-object v1, Lcom/duoku/platform/single/d/c;->v:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_2
    :try_start_2
    sget-object v1, Lcom/duoku/platform/single/d/c;->d:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_3
    :try_start_3
    sget-object v1, Lcom/duoku/platform/single/d/c;->p:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_4
    :try_start_4
    sget-object v1, Lcom/duoku/platform/single/d/c;->a:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_5
    :try_start_5
    sget-object v1, Lcom/duoku/platform/single/d/c;->o:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_6
    :try_start_6
    sget-object v1, Lcom/duoku/platform/single/d/c;->k:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_7
    :try_start_7
    sget-object v1, Lcom/duoku/platform/single/d/c;->e:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_8
    :try_start_8
    sget-object v1, Lcom/duoku/platform/single/d/c;->t:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_9
    :try_start_9
    sget-object v1, Lcom/duoku/platform/single/d/c;->s:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_a
    :try_start_a
    sget-object v1, Lcom/duoku/platform/single/d/c;->b:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_b
    :try_start_b
    sget-object v1, Lcom/duoku/platform/single/d/c;->u:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_c
    :try_start_c
    sget-object v1, Lcom/duoku/platform/single/d/c;->f:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_d
    :try_start_d
    sget-object v1, Lcom/duoku/platform/single/d/c;->g:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_e
    :try_start_e
    sget-object v1, Lcom/duoku/platform/single/d/c;->n:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_f
    :try_start_f
    sget-object v1, Lcom/duoku/platform/single/d/c;->j:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_10
    :try_start_10
    sget-object v1, Lcom/duoku/platform/single/d/c;->q:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_11
    :try_start_11
    sget-object v1, Lcom/duoku/platform/single/d/c;->r:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_12
    :try_start_12
    sget-object v1, Lcom/duoku/platform/single/d/c;->i:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_13
    :try_start_13
    sget-object v1, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_14
    :try_start_14
    sget-object v1, Lcom/duoku/platform/single/d/c;->m:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/single/d/c;->h:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_16
    sput-object v0, Lcom/duoku/platform/single/d/a/e;->o:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_16

    :catch_1
    move-exception v1

    goto :goto_15

    :catch_2
    move-exception v1

    goto :goto_14

    :catch_3
    move-exception v1

    goto :goto_13

    :catch_4
    move-exception v1

    goto :goto_12

    :catch_5
    move-exception v1

    goto :goto_11

    :catch_6
    move-exception v1

    goto :goto_10

    :catch_7
    move-exception v1

    goto :goto_f

    :catch_8
    move-exception v1

    goto :goto_e

    :catch_9
    move-exception v1

    goto :goto_d

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    goto/16 :goto_a

    :catch_d
    move-exception v1

    goto/16 :goto_9

    :catch_e
    move-exception v1

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto/16 :goto_7

    :catch_10
    move-exception v1

    goto/16 :goto_6

    :catch_11
    move-exception v1

    goto/16 :goto_5

    :catch_12
    move-exception v1

    goto/16 :goto_4

    :catch_13
    move-exception v1

    goto/16 :goto_3

    :catch_14
    move-exception v1

    goto/16 :goto_2

    :catch_15
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 1

    iput p1, p0, Lcom/duoku/platform/single/d/a/e;->l:I

    iput-object p2, p0, Lcom/duoku/platform/single/d/a/e;->k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->a()V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V
    .locals 8

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->getDkOrderPayChannel()Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    if-eq v0, v1, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->getDkOrderPayChannel()Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CM_GB:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    if-eq v0, v1, :cond_4

    :cond_3
    const/16 v0, 0xbc2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbc6

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/g/a;->b(ILcom/duoku/platform/single/item/DKOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/e;->k:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    invoke-static {v7}, Lcom/duoku/platform/single/j/c/k;->a(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v2, "\n\u8d2d\u4e70\u672a\u6210\u529f,\u8bf7\u8fd4\u56de\u6e38\u620f\u91cd\u65b0\u8d2d\u4e70\n"

    const-string v3, "\u8fd4\u56de\u6e38\u620f"

    new-instance v4, Lcom/duoku/platform/single/d/a/f;

    invoke-direct {v4, p0, p1, p2, v7}, Lcom/duoku/platform/single/d/a/f;-><init>(Lcom/duoku/platform/single/d/a/e;ILcom/duoku/platform/single/item/DKOrderInfoData;Landroid/app/Activity;)V

    const/4 v5, 0x0

    const-string v6, "DKPayController.onPlatformRechargeResult"

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/c/k;->a()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->n:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->n:Landroid/app/Dialog;

    const-string v1, "dkMainHeadBack"

    invoke-static {v7, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->n:Landroid/app/Dialog;

    const-string v1, "dk_dialog_tv_main"

    invoke-static {v7, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/duoku/platform/single/d/a/e;->b()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->b:Lcom/duoku/platform/single/d/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/d/a/n;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/n;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->b:Lcom/duoku/platform/single/d/a/n;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->b:Lcom/duoku/platform/single/d/a/n;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/n;->a([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->c:Lcom/duoku/platform/single/d/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoku/platform/single/d/a/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->c:Lcom/duoku/platform/single/d/a/a;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->c:Lcom/duoku/platform/single/d/a/a;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->d:Lcom/duoku/platform/single/d/a/p;

    if-nez v0, :cond_2

    new-instance v0, Lcom/duoku/platform/single/d/a/p;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/p;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->d:Lcom/duoku/platform/single/d/a/p;

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->d:Lcom/duoku/platform/single/d/a/p;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/p;->a([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->e:Lcom/duoku/platform/single/d/a/q;

    if-nez v0, :cond_3

    new-instance v0, Lcom/duoku/platform/single/d/a/q;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/q;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->e:Lcom/duoku/platform/single/d/a/q;

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->e:Lcom/duoku/platform/single/d/a/q;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/q;->a([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    if-nez v0, :cond_4

    new-instance v0, Lcom/duoku/platform/single/d/a/l;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/l;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    if-nez v0, :cond_5

    new-instance v0, Lcom/duoku/platform/single/d/a/l;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/l;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->f:Lcom/duoku/platform/single/d/a/l;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/l;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    if-nez v0, :cond_6

    new-instance v0, Lcom/duoku/platform/single/d/a/j;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/j;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/j;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    if-nez v0, :cond_7

    new-instance v0, Lcom/duoku/platform/single/d/a/j;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/j;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->g:Lcom/duoku/platform/single/d/a/j;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/j;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->h:Lcom/duoku/platform/single/d/a/d;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/duoku/platform/single/d/a/d;->a()Lcom/duoku/platform/single/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->h:Lcom/duoku/platform/single/d/a/d;

    :cond_8
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->h:Lcom/duoku/platform/single/d/a/d;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/d;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/h;->a(Landroid/app/Activity;)Lcom/duoku/platform/single/d/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->j:Lcom/duoku/platform/single/d/a/h;

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->j:Lcom/duoku/platform/single/d/a/h;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/h;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->i:Lcom/duoku/platform/single/d/a/o;

    if-nez v0, :cond_9

    new-instance v0, Lcom/duoku/platform/single/d/a/o;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/o;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/d/a/e;->i:Lcom/duoku/platform/single/d/a/o;

    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/e;->i:Lcom/duoku/platform/single/d/a/o;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/o;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/duoku/platform/single/d/a/s;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/s;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/s;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
