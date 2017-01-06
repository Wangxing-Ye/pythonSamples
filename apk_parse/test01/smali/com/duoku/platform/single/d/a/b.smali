.class Lcom/duoku/platform/single/d/a/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/d/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "1"

    new-instance v2, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v3, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_ALIPAY:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v3

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v3

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v3

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/duoku/platform/single/b/e;

    invoke-direct {v3, v0}, Lcom/duoku/platform/single/b/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/duoku/platform/single/b/e;->a()V

    iget-boolean v0, v3, Lcom/duoku/platform/single/b/e;->d:Z

    iget-object v3, v3, Lcom/duoku/platform/single/b/e;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "9000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "3"

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v3, "share_last_thirdpay_success"

    const-string v4, "alipay"

    invoke-virtual {v0, v3, v4}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc2

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v2}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    :try_start_3
    const-string v1, "2"

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc3

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "2"

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc3

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v2}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_1
    :try_start_6
    const-string v0, "9000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "3"

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v3, "share_last_thirdpay_success"

    const-string v4, "alipay"

    invoke-virtual {v0, v3, v4}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc2

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v2}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/duoku/platform/single/e/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    :try_start_8
    const-string v0, "6001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "6"

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc4

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_2

    :cond_3
    const-string v1, "2"

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    iget-object v3, p0, Lcom/duoku/platform/single/d/a/b;->a:Lcom/duoku/platform/single/d/a/a;

    invoke-static {v3}, Lcom/duoku/platform/single/d/a/a;->b(Lcom/duoku/platform/single/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duoku/platform/single/d/a/a;->a(Lcom/duoku/platform/single/d/a/a;Landroid/content/Context;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v3, 0xbc3

    invoke-interface {v0, v3, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
