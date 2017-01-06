.class public Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
.super Ljava/lang/Thread;
.source "SDKPushDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadPushUserRecordThread"
.end annotation


# instance fields
.field private isFirstDownload:Z

.field private pushContentID:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "pushContentID"    # I
    .param p2, "isFirstDownload"    # Z

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 364
    iput p1, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->pushContentID:I

    .line 365
    iput-boolean p2, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->isFirstDownload:Z

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 370
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 373
    :try_start_0
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 375
    .local v6, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v7, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 376
    .local v7, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, "sdkVC":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "cpID":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, "imei":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "imsi":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v15, 0x400

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 384
    .local v2, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/4 v15, 0x7

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    aput-object v4, v16, v15

    const/4 v15, 0x1

    aput-object v1, v16, v15

    const/4 v15, 0x2

    aput-object v12, v16, v15

    const/4 v15, 0x3

    aput-object v9, v16, v15

    const/4 v15, 0x4

    aput-object v10, v16, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->pushContentID:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v15

    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->isFirstDownload:Z

    if-eqz v15, :cond_1

    const-string v15, "1"

    :goto_0
    aput-object v15, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v5

    .line 387
    .local v5, "data":[B
    sget-object v15, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 388
    .local v13, "serverIP":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 389
    sget-object v13, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 391
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->URL_UPDATEPUSHRECORD_DOWNLOAD:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 391
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, "url":Ljava/lang/String;
    new-instance v3, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 395
    .local v3, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v5, v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "regResult":Ljava/lang/String;
    invoke-static {v11}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 398
    const-string v15, "Do savePushUserRecord"

    invoke-static {v15}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 404
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v3    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v4    # "cpID":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v7    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v9    # "imei":Ljava/lang/String;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v11    # "regResult":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    .end local v13    # "serverIP":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 384
    .restart local v1    # "appID":Ljava/lang/String;
    .restart local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .restart local v4    # "cpID":Ljava/lang/String;
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v7    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .restart local v9    # "imei":Ljava/lang/String;
    .restart local v10    # "imsi":Ljava/lang/String;
    .restart local v12    # "sdkVC":Ljava/lang/String;
    :cond_1
    const-string v15, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v4    # "cpID":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v7    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v9    # "imei":Ljava/lang/String;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 401
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
