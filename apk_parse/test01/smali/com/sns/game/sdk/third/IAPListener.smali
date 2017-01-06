.class public Lcom/sns/game/sdk/third/IAPListener;
.super Ljava/lang/Object;
.source "IAPListener.java"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Lcom/sns/game/activity/GameActivityss;

.field private iapHandler:Lcom/sns/game/sdk/third/IAPHandler;

.field private resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sns/game/sdk/third/IAPHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iapHandler"    # Lcom/sns/game/sdk/third/IAPHandler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "IAPListener"

    iput-object v0, p0, Lcom/sns/game/sdk/third/IAPListener;->TAG:Ljava/lang/String;

    .line 23
    check-cast p1, Lcom/sns/game/activity/GameActivityss;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sns/game/sdk/third/IAPListener;->context:Lcom/sns/game/activity/GameActivityss;

    .line 24
    iput-object p2, p0, Lcom/sns/game/sdk/third/IAPListener;->iapHandler:Lcom/sns/game/sdk/third/IAPHandler;

    .line 25
    return-void
.end method


# virtual methods
.method public onAfterApply()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onAfterDownload()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onBeforeApply()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onBeforeDownload()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onBillingFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 64
    const-string v7, "IAPListener"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "billing finish, status code = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v5, "\u8ba2\u8d2d\u7ed3\u679c\uff1a\u8ba2\u8d2d\u6210\u529f"

    .line 66
    .local v5, "result":Ljava/lang/String;
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->iapHandler:Lcom/sns/game/sdk/third/IAPHandler;

    const/16 v8, 0x2711

    invoke-virtual {v7, v8}, Lcom/sns/game/sdk/third/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, "orderID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 72
    .local v4, "paycode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, "leftday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, "tradeID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, "ordertype":Ljava/lang/String;
    const-string v7, "1030000"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    const-string v7, "1020000"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 79
    const-string v7, "1090003"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 83
    :cond_0
    if-eqz p2, :cond_5

    .line 84
    const-string v7, "LeftDay"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "leftday":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 85
    .restart local v1    # "leftday":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    :cond_1
    const-string v7, "OrderId"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "orderID":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 89
    .restart local v2    # "orderID":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",OrderID \uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    :cond_2
    const-string v7, "Paycode"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "paycode":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 93
    .restart local v4    # "paycode":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",Paycode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    :cond_3
    const-string v7, "TradeID"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tradeID":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 97
    .restart local v6    # "tradeID":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",tradeID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    :cond_4
    const-string v7, "OrderType"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ordertype":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 101
    .restart local v3    # "ordertype":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",ORDERTYPE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_5
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    if-eqz v7, :cond_6

    .line 107
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v7}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingSuccess()V

    .line 110
    :cond_6
    const-string v0, "1"

    .line 111
    .local v0, "billingResult":Ljava/lang/String;
    sget-object v7, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    invoke-static {v4, v7, v0}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sns/game/sdk/third/IAPListener;->setResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 126
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v7}, Lcom/sns/game/activity/GameActivityss;->dismissProgressDialog()V

    .line 129
    return-void

    .line 119
    .end local v0    # "billingResult":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    if-eqz v7, :cond_8

    .line 120
    iget-object v7, p0, Lcom/sns/game/sdk/third/IAPListener;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v7}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingFailed()V

    .line 122
    :cond_8
    const-string v0, "0"

    .line 123
    .restart local v0    # "billingResult":Ljava/lang/String;
    sget-object v7, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    invoke-static {v4, v7, v0}, Lcom/cynosure/paymentsdk/SDKInterface;->saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v2, "IAPListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Init finish, status code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, p0, Lcom/sns/game/sdk/third/IAPListener;->iapHandler:Lcom/sns/game/sdk/third/IAPHandler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/sns/game/sdk/third/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "result":Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    return-void
.end method

.method public onQueryFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 133
    const-string v4, "IAPListener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "license finish, status code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lcom/sns/game/sdk/third/IAPListener;->iapHandler:Lcom/sns/game/sdk/third/IAPHandler;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Lcom/sns/game/sdk/third/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    .line 135
    const-string v3, "\u67e5\u8be2\u6210\u529f,\u8be5\u5546\u54c1\u5df2\u8d2d\u4e70"

    .line 137
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "orderID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 141
    .local v2, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 142
    .local v0, "leftday":Ljava/lang/String;
    const-string v4, "1050000"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u67e5\u8be2\u7ed3\u679c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_0
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/sns/game/sdk/third/IAPListener;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v4}, Lcom/sns/game/activity/GameActivityss;->dismissProgressDialog()V

    .line 167
    return-void

    .line 152
    :cond_1
    const-string v4, "LeftDay"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 153
    .restart local v0    # "leftday":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_2
    const-string v4, "OrderId"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "orderID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 157
    .restart local v1    # "orderID":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",OrderID \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_3
    const-string v4, "Paycode"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "paycode":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 161
    .restart local v2    # "paycode":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",Paycode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public onUnsubscribeFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9000\u8ba2\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/sns/game/sdk/third/IAPListener;->context:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v1}, Lcom/sns/game/activity/GameActivityss;->dismissProgressDialog()V

    .line 175
    return-void
.end method

.method public setResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0
    .param p1, "resultCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sns/game/sdk/third/IAPListener;->resultCallBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 31
    return-void
.end method
