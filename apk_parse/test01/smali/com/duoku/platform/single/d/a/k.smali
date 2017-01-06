.class public Lcom/duoku/platform/single/d/a/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Lcom/duoku/platform/single/j/a/a;

    invoke-direct {v3}, Lcom/duoku/platform/single/j/a/a;-><init>()V

    invoke-static {p1}, Lcom/duoku/platform/single/e/i;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/duoku/platform/single/e/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v5, :cond_1

    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/a;->a()Ljava/lang/String;

    move-result-object v6

    if-nez p4, :cond_2

    invoke-direct {p0, v6, p2, p3}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    iget-object v0, v0, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/n;

    if-eqz v0, :cond_4

    invoke-direct {p0, v3, v0, v6}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Lcom/duoku/platform/single/k/n;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v6, p2, p3}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    iget-object v0, v0, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/n;

    if-eqz v0, :cond_4

    invoke-direct {p0, v3, v0, v6}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Lcom/duoku/platform/single/k/n;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/duoku/platform/single/j/a/a;Lcom/duoku/platform/single/k/n;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;
    .locals 1

    const-string v0, "cu_wostore"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/d/d;->c:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    const-string v0, "cu_wostore"

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/k/n;)V

    return-object p1

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    invoke-virtual {p1, p3}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    invoke-direct {p0, p2}, Lcom/duoku/platform/single/d/a/k;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    return-object p1
.end method

.method private a(Lcom/duoku/platform/single/j/a/a;Landroid/content/Context;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Ljava/lang/String;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z
    .locals 9

    const-string v0, "cm"

    sget-object v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "dk_sequence_of_mobile_billing"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "dk_flag_support_mm"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "dk_flag_support_gb_sdk"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "dk_flag_support_mdo"

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "dk_flag_support_ybk_sdk"

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_1
    const/4 v2, 0x0

    const-string v3, "MM"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "gb_sdk"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "mdo"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "ybkcm"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_2
    aget-object v2, v0, v1

    const-string v7, "MM"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->MOBILE_MM_INIT_IS_OK:Z

    if-eqz v7, :cond_4

    if-eqz p7, :cond_4

    const/4 v7, 0x1

    if-eq v3, v7, :cond_3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    :cond_3
    invoke-direct {p0, v2, p3, p5}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z

    move-result v0

    goto :goto_2

    :cond_4
    const-string v7, "gb_sdk"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->GAMEBASE_SDK_INIT_IS_OK:Z

    if-eqz v7, :cond_6

    if-eqz p8, :cond_6

    const/4 v7, 0x1

    if-eq v4, v7, :cond_5

    const/4 v7, -0x1

    if-ne v4, v7, :cond_6

    :cond_5
    invoke-direct {p0, v2, p3, p5}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z

    move-result v0

    goto :goto_2

    :cond_6
    const-string v7, "mdo"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    if-ne v5, v7, :cond_7

    if-nez p6, :cond_8

    :cond_7
    if-eqz p4, :cond_9

    const-string v7, "mdo"

    invoke-virtual {p4}, Lcom/duoku/platform/single/item/h;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-direct {p0, v2, p3, p5}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z

    move-result v0

    goto/16 :goto_2

    :cond_9
    const-string v7, "ybkcm"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    :cond_a
    if-eqz p9, :cond_b

    invoke-direct {p0, v2, p3, p5}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z

    move-result v0

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private a(Lcom/duoku/platform/single/j/a/a;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v0, "MM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p5}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    invoke-virtual {p1, v6}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/d/d;->j:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "gb_sdk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    invoke-virtual {p1, p6}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMGBData;)V

    invoke-virtual {p1, v6}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/d/d;->k:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    goto :goto_0

    :cond_1
    const-string v0, "mdo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez p4, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p4}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    :goto_2
    invoke-virtual {p1, v7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    invoke-virtual {p1, v7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMGBData;)V

    invoke-virtual {p1, v6}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/duoku/platform/single/item/DKCMMdoData;

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/duoku/platform/single/item/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/duoku/platform/single/item/DKCMMdoData;->getChannelNum()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/item/DKCMMdoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/duoku/platform/single/item/DKCMMdoData;->getChannelNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKCMMdoData;->setChannelNum(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    goto :goto_2

    :cond_5
    const-string v0, "ybkcm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    invoke-virtual {p1, v7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMGBData;)V

    invoke-virtual {p1, p7}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMYBKData;)V

    invoke-virtual {p1, v6}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/d/d;->l:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    :try_start_0
    invoke-static {p3, p1}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_6

    const-string v2, "cm"

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "MM"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x12c

    :cond_0
    :goto_1
    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/util/J;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p1, p3}, Lcom/duoku/platform/single/e/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_1

    add-double/2addr v1, v4

    int-to-double v4, v0

    cmpg-double v0, v1, v4

    if-lez v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v5

    :try_start_1
    invoke-static {p3, p1}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v4

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v4

    goto :goto_0

    :cond_2
    const-string v2, "gb_sdk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "mdo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "ybkcm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc8

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v2, "cu"

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/j;->e()Lcom/duoku/platform/single/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/j/a/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/j/a/a;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/d/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;
    .locals 11

    new-instance v2, Lcom/duoku/platform/single/j/a/a;

    invoke-direct {v2}, Lcom/duoku/platform/single/j/a/a;-><init>()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/single/util/J;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "qpfangshua"

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, ""

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    invoke-direct {p0, p2}, Lcom/duoku/platform/single/d/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v3}, Lcom/duoku/platform/single/e/f;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/f;

    move-result-object v1

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v4}, Lcom/duoku/platform/single/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/item/h;

    move-result-object v5

    invoke-static {v3}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/duoku/platform/single/d/a/k;->a(Lcom/duoku/platform/single/j/a/a;Landroid/content/Context;Ljava/lang/String;Lcom/duoku/platform/single/item/h;Ljava/lang/String;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v5, :cond_9

    const-string v1, ""

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_3
    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "other"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v1, ""

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    invoke-direct {p0, p2}, Lcom/duoku/platform/single/d/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    goto :goto_0

    :cond_5
    const-string v4, "mdo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    invoke-direct {p0, v3, p2, v6, v1}, Lcom/duoku/platform/single/d/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v6}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v3, "cu_wostore"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/duoku/platform/single/d/d;->c:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    const-string v1, "cu_wostore"

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/duoku/platform/single/k/n;

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p2, v3, v4, v5}, Lcom/duoku/platform/single/k/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/k/n;)V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v3, p2, v6, v1}, Lcom/duoku/platform/single/d/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    invoke-direct {p0, v3, p2, v6, v1}, Lcom/duoku/platform/single/d/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    goto/16 :goto_0
.end method
