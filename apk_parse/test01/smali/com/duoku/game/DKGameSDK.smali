.class public Lcom/duoku/game/DKGameSDK;
.super Ljava/lang/Object;
.source "DKGameSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCashDeskStatistic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v0, "cp_cashdesk_statistic"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 452
    return-void
.end method

.method public static addLoginTypeStatistic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logintype"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;

    .prologue
    .line 422
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    return-void
.end method

.method public static addPayTypeStatistic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paytype"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    return-void
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/StatSDKService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->initGame(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "acc"    # I
    .param p4, "appkey"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p0, p1, p2, p4}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    return-void
.end method

.method public static onPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static onPurchase(Ljava/lang/String;IDLjava/lang/String;)V
    .locals 0
    .param p0, "ppoint"    # Ljava/lang/String;
    .param p1, "ppointNumber"    # I
    .param p2, "unitPrice"    # D
    .param p4, "appkey"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onPurchase(Ljava/lang/String;IDLjava/lang/String;)V

    .line 216
    return-void
.end method

.method public static onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "orderid"    # Ljava/lang/String;
    .param p1, "iapid"    # Ljava/lang/String;
    .param p2, "amount"    # D
    .param p4, "virtualAmount"    # D
    .param p6, "paymentType"    # Ljava/lang/String;
    .param p7, "appkey"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static/range {p0 .. p7}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "orderid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static onResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tasked"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "taskid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public static onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "taskid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onTaskStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static onUse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "ppoint"    # Ljava/lang/String;
    .param p1, "number"    # I
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->onUse(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    return-void
.end method

.method public static setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static setAccountType(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setAccountType(Landroid/content/Context;ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public static setAge(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "age"    # I
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setLevel(Landroid/content/Context;ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appChannel"    # Ljava/lang/String;
    .param p2, "saveChannelWithCode"    # Z
    .param p3, "appKey"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 346
    return-void
.end method

.method public static setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "versionName"    # Ljava/lang/String;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static setDebugOn(ZLjava/lang/String;)V
    .locals 0
    .param p0, "value"    # Z
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->setDebugOn(ZLjava/lang/String;)V

    .line 373
    return-void
.end method

.method public static setGender(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gender"    # I
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setGender(Landroid/content/Context;ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public static setLevel(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setLevel(Landroid/content/Context;ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public static setLogSenderDelayed(ILjava/lang/String;)V
    .locals 0
    .param p0, "seconds"    # I
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->setLogSenderDelayed(ILjava/lang/String;)V

    .line 361
    return-void
.end method

.method public static setOn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setOn(Landroid/content/Context;ILjava/lang/String;)V

    .line 385
    return-void
.end method

.method public static setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameServer"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
