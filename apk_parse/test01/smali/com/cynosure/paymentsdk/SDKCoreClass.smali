.class public Lcom/cynosure/paymentsdk/SDKCoreClass;
.super Ljava/lang/Object;
.source "SDKCoreClass.java"


# instance fields
.field private _dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

.field private _doTask:Lcom/cynosure/paymentsdk/purchase/DoTask;

.field private _getTask:Lcom/cynosure/paymentsdk/purchase/GetTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SDKCoreClass Open"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    .line 48
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->InitSDKParamter()V

    .line 49
    return-void
.end method

.method private doReg()V
    .locals 38

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISREG:Ljava/lang/String;

    const-string v35, "0"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "isRegFlag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_REGRETRYCOUNT:Ljava/lang/String;

    const-string v35, "0"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 353
    .local v26, "regRetryCount":Ljava/lang/String;
    const/4 v13, 0x1

    .line 355
    .local v13, "isCanReg":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 356
    const-string v33, "1"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 357
    const/4 v13, 0x0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 363
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 365
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x28

    cmp-long v33, v33, v35

    if-lez v33, :cond_3

    .line 366
    const/4 v13, 0x0

    .line 367
    goto :goto_0

    .line 371
    :cond_2
    const-string v26, "0"

    .line 378
    :cond_3
    :goto_1
    if-eqz v13, :cond_0

    .line 380
    new-instance v9, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 382
    .local v9, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v28

    .line 383
    .local v28, "sdkVC":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "cpID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "appID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "imei":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v12

    .line 389
    .local v12, "imsi":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 390
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 391
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getICCID()Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "iccid":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getNetworkOperation()Ljava/lang/String;

    move-result-object v20

    .line 393
    .local v20, "networkOperation":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getModel()Ljava/lang/String;

    move-result-object v19

    .line 394
    .local v19, "model":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v18

    .line 395
    .local v18, "manufacturer":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getOS()Ljava/lang/String;

    move-result-object v21

    .line 396
    .local v21, "os":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v17

    .line 397
    .local v17, "macAddress":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getResolution()Ljava/lang/String;

    move-result-object v27

    .line 398
    .local v27, "resolution":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getPackageMD5()Ljava/lang/String;

    move-result-object v22

    .line 400
    .local v22, "packageMD5":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getProvAndCity()Lcom/cynosure/paymentsdk/vo/ProvAndCity;

    move-result-object v24

    .line 401
    .local v24, "provAndCity":Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    invoke-virtual/range {v24 .. v24}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getProv()Ljava/lang/String;

    move-result-object v23

    .line 402
    .local v23, "prov":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "city":Ljava/lang/String;
    const-string v33, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 408
    const-string v33, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 409
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_5

    .line 410
    const-string v33, "898600"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 411
    const/16 v33, 0x8

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 412
    .local v30, "tempCode":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "tempCode:"

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 412
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 415
    sget-object v33, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_ICCICPROV:Ljava/util/HashMap;

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_8

    .line 425
    .end local v30    # "tempCode":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIsRootInfo()Ljava/lang/String;

    move-result-object v15

    .line 427
    .local v15, "isRoot":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v33, 0x200

    const/16 v34, 0xf

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v4, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 428
    .local v4, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v33, 0xf

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v7, v33, v34

    const/16 v34, 0x1

    aput-object v3, v33, v34

    const/16 v34, 0x2

    aput-object v28, v33, v34

    const/16 v34, 0x3

    aput-object v11, v33, v34

    const/16 v34, 0x4

    aput-object v12, v33, v34

    const/16 v34, 0x5

    aput-object v19, v33, v34

    const/16 v34, 0x6

    aput-object v27, v33, v34

    const/16 v34, 0x7

    aput-object v21, v33, v34

    const/16 v34, 0x8

    aput-object v23, v33, v34

    const/16 v34, 0x9

    aput-object v5, v33, v34

    const/16 v34, 0xa

    aput-object v18, v33, v34

    const/16 v34, 0xb

    aput-object v17, v33, v34

    const/16 v34, 0xc

    const-string v35, "NA"

    aput-object v35, v33, v34

    const/16 v34, 0xd

    aput-object v15, v33, v34

    const/16 v34, 0xe

    aput-object v22, v33, v34

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v8

    .line 431
    .local v8, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 432
    .local v29, "serverIP":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 433
    sget-object v29, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 435
    :cond_6
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->URL_REG:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 435
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 438
    .local v32, "url":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 439
    .local v6, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v6, v0, v1, v8, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 441
    .local v25, "regResult":Ljava/lang/String;
    const-string v33, "100"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISREG:Ljava/lang/String;

    const-string v35, "1"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_REGRETRYCOUNT:Ljava/lang/String;

    const-string v35, "0"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    new-instance v34, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v35, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_REG:Ljava/lang/String;

    const-string v36, "regok"

    invoke-direct/range {v34 .. v36}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v34}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_0

    .line 375
    .end local v3    # "appID":Ljava/lang/String;
    .end local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v5    # "city":Ljava/lang/String;
    .end local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v7    # "cpID":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v9    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v10    # "iccid":Ljava/lang/String;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v15    # "isRoot":Ljava/lang/String;
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v18    # "manufacturer":Ljava/lang/String;
    .end local v19    # "model":Ljava/lang/String;
    .end local v20    # "networkOperation":Ljava/lang/String;
    .end local v21    # "os":Ljava/lang/String;
    .end local v22    # "packageMD5":Ljava/lang/String;
    .end local v23    # "prov":Ljava/lang/String;
    .end local v24    # "provAndCity":Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    .end local v25    # "regResult":Ljava/lang/String;
    .end local v27    # "resolution":Ljava/lang/String;
    .end local v28    # "sdkVC":Ljava/lang/String;
    .end local v29    # "serverIP":Ljava/lang/String;
    .end local v32    # "url":Ljava/lang/String;
    :cond_7
    const-string v26, "0"

    goto/16 :goto_1

    .line 415
    .restart local v3    # "appID":Ljava/lang/String;
    .restart local v5    # "city":Ljava/lang/String;
    .restart local v7    # "cpID":Ljava/lang/String;
    .restart local v9    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .restart local v10    # "iccid":Ljava/lang/String;
    .restart local v11    # "imei":Ljava/lang/String;
    .restart local v12    # "imsi":Ljava/lang/String;
    .restart local v17    # "macAddress":Ljava/lang/String;
    .restart local v18    # "manufacturer":Ljava/lang/String;
    .restart local v19    # "model":Ljava/lang/String;
    .restart local v20    # "networkOperation":Ljava/lang/String;
    .restart local v21    # "os":Ljava/lang/String;
    .restart local v22    # "packageMD5":Ljava/lang/String;
    .restart local v23    # "prov":Ljava/lang/String;
    .restart local v24    # "provAndCity":Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    .restart local v27    # "resolution":Ljava/lang/String;
    .restart local v28    # "sdkVC":Ljava/lang/String;
    .restart local v30    # "tempCode":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 416
    .local v31, "tempICCIDProv":Ljava/lang/String;
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 417
    sget-object v33, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_ICCICPROV:Ljava/util/HashMap;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "prov":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 418
    .restart local v23    # "prov":Ljava/lang/String;
    goto/16 :goto_2

    .line 451
    .end local v30    # "tempCode":Ljava/lang/String;
    .end local v31    # "tempICCIDProv":Ljava/lang/String;
    .restart local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .restart local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v8    # "data":[B
    .restart local v15    # "isRoot":Ljava/lang/String;
    .restart local v25    # "regResult":Ljava/lang/String;
    .restart local v29    # "serverIP":Ljava/lang/String;
    .restart local v32    # "url":Ljava/lang/String;
    :cond_9
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x1

    add-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_REGRETRYCOUNT:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    new-instance v34, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v35, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_REG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "regretry"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {v33 .. v34}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_0

    .line 460
    .end local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v5    # "city":Ljava/lang/String;
    .end local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v8    # "data":[B
    .end local v10    # "iccid":Ljava/lang/String;
    .end local v15    # "isRoot":Ljava/lang/String;
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v18    # "manufacturer":Ljava/lang/String;
    .end local v19    # "model":Ljava/lang/String;
    .end local v20    # "networkOperation":Ljava/lang/String;
    .end local v21    # "os":Ljava/lang/String;
    .end local v22    # "packageMD5":Ljava/lang/String;
    .end local v23    # "prov":Ljava/lang/String;
    .end local v24    # "provAndCity":Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    .end local v25    # "regResult":Ljava/lang/String;
    .end local v27    # "resolution":Ljava/lang/String;
    .end local v29    # "serverIP":Ljava/lang/String;
    .end local v32    # "url":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOADNOIMSI:Ljava/lang/String;

    const-string v35, "0"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, "isUploadNoIMSI":Ljava/lang/String;
    const-string v33, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 462
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v17

    .line 463
    .restart local v17    # "macAddress":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getPackageMD5()Ljava/lang/String;

    move-result-object v22

    .line 465
    .restart local v22    # "packageMD5":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v33, 0x200

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v4, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 466
    .restart local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v7, v33, v34

    const/16 v34, 0x1

    aput-object v3, v33, v34

    const/16 v34, 0x2

    aput-object v28, v33, v34

    const/16 v34, 0x3

    aput-object v11, v33, v34

    const/16 v34, 0x4

    aput-object v17, v33, v34

    const/16 v34, 0x5

    aput-object v22, v33, v34

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v8

    .line 469
    .restart local v8    # "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 470
    .restart local v29    # "serverIP":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 471
    sget-object v29, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 473
    :cond_b
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->URL_UPLOADNOIMSI:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 473
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 476
    .restart local v32    # "url":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 477
    .restart local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v6, v0, v1, v8, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOADNOIMSI:Ljava/lang/String;

    const-string v35, "1"

    invoke-virtual/range {v33 .. v35}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v8    # "data":[B
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v22    # "packageMD5":Ljava/lang/String;
    .end local v29    # "serverIP":Ljava/lang/String;
    .end local v32    # "url":Ljava/lang/String;
    :cond_c
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x1

    add-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    sget-object v34, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_REGRETRYCOUNT:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v33, v0

    new-instance v34, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v35, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_REG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "regretry"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {v33 .. v34}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_0
.end method

.method private doTask()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Lcom/cynosure/paymentsdk/purchase/DoTask;->getInstance()Lcom/cynosure/paymentsdk/purchase/DoTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/purchase/DoTask;->startDoTask()V

    .line 587
    :cond_0
    return-void
.end method

.method private get3rd()V
    .locals 4

    .prologue
    .line 615
    iget-object v1, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "isNeedInit3rd":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->init3rd()V

    .line 619
    iget-object v1, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    return-void
.end method

.method private getBackgroundTask()V
    .locals 8

    .prologue
    .line 591
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_BACKGROUNDTASKTIMETOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "timeout":Ljava/lang/String;
    const/4 v0, 0x1

    .line 595
    .local v0, "isCanGetBackgroundTask":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getCurrTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 597
    const/4 v0, 0x0

    .line 609
    .end local v0    # "isCanGetBackgroundTask":Z
    .end local v1    # "timeout":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 602
    .restart local v0    # "isCanGetBackgroundTask":Z
    .restart local v1    # "timeout":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 603
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    const-string v3, "0"

    const-string v4, "9"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_BACKGROUNDTASKTIMETOUT:Ljava/lang/String;

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getClientSetup()V
    .locals 23

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CLIENTSETUPTIMEOUT:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, "timeout":Ljava/lang/String;
    const/4 v13, 0x1

    .line 266
    .local v13, "isCanGetClientSetup":Z
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 267
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getCurrTime()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 268
    const/4 v13, 0x0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    if-eqz v13, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 277
    .local v15, "serverIP":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 278
    sget-object v15, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 280
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->URL_CLIENTSETUP:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 280
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "url":Ljava/lang/String;
    new-instance v9, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 285
    .local v9, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "sdkVC":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "cpID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "appID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "imei":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, "imsi":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v19, 0x200

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 293
    .local v4, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    const/16 v20, 0x2

    aput-object v14, v19, v20

    const/16 v20, 0x3

    aput-object v11, v19, v20

    const/16 v20, 0x4

    aput-object v12, v19, v20

    const/16 v20, 0x5

    const-string v21, "oneline"

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v8

    .line 294
    .local v8, "data":[B
    new-instance v6, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 295
    .local v6, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v8, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "clientSetup":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 300
    const-string v19, "|"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 301
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "ClientSetupValue:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 301
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 303
    const-string v19, "\\|"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 304
    .local v16, "tempClientSetup":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CLIENTSETUPTIMEOUT:Ljava/lang/String;

    const/16 v21, 0xa

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    new-instance v20, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v21, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_CLIENTSETUP:Ljava/lang/String;

    const-string v22, "get"

    invoke-direct/range {v20 .. v22}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_0

    .line 305
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 304
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 307
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOG:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_QXTNUMBER:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 317
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISAUTOSENDQXT:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 320
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_GETTASK_RETRYCOUNT:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 323
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_DOTASK_SENDSMSRETRYCOUNT:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 326
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSHOWPAYCONFIRM:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 331
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISBLOCKSMS:Ljava/lang/String;

    aget-object v21, v16, v10

    invoke-virtual/range {v19 .. v21}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getDNS()V
    .locals 19

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIPTIMEOUT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "timeout":Ljava/lang/String;
    const/4 v10, 0x1

    .line 208
    .local v10, "isCanGetNewIP":Z
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 209
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getCurrTime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 210
    const/4 v10, 0x0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-eqz v10, :cond_0

    .line 218
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 219
    .local v7, "dnsServerNum":I
    sget-object v15, Lcom/cynosure/paymentsdk/helper/Constant;->URL_DNS:[Ljava/lang/String;

    aget-object v14, v15, v7

    .line 222
    .local v14, "url":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 223
    .local v6, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, "sdkVC":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "cpID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "imsi":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v15, 0x200

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 231
    .local v2, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v9, v15, v16

    invoke-virtual {v2, v15}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v5

    .line 232
    .local v5, "data":[B
    new-instance v3, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 233
    .local v3, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v5, v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    .local v11, "newServerIP":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 237
    const-string v15, "http"

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 238
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "new serverip:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 238
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 252
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIPTIMEOUT:Ljava/lang/String;

    const/16 v17, 0xa

    const/16 v18, 0x6

    invoke-static/range {v17 .. v18}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v16, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DNS:Ljava/lang/String;

    const-string v18, "get"

    invoke-direct/range {v16 .. v18}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_0

    .line 243
    :cond_2
    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 245
    goto :goto_1

    .line 248
    :cond_3
    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    goto :goto_1
.end method

.method private getPushTask()V
    .locals 25

    .prologue
    .line 627
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v21, v0

    sget-object v22, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_PUSHTASKTIMEOUT:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 628
    .local v19, "timeout":Ljava/lang/String;
    const/4 v12, 0x1

    .line 629
    .local v12, "isCanGetPushTask":Z
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 630
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getCurrTime()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 631
    const/4 v12, 0x0

    .line 752
    .end local v12    # "isCanGetPushTask":Z
    .end local v19    # "timeout":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 636
    .restart local v12    # "isCanGetPushTask":Z
    .restart local v19    # "timeout":Ljava/lang/String;
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "isCanGetPushTask:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 636
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 638
    if-eqz v12, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v21, v0

    sget-object v22, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 642
    .local v17, "serverIP":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 643
    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 645
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    sget-object v22, Lcom/cynosure/paymentsdk/helper/Constant;->URL_GETPUSHTASK:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 645
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 649
    .local v20, "url":Ljava/lang/String;
    new-instance v8, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 650
    .local v8, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v16

    .line 651
    .local v16, "sdkVC":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, "cpID":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "appID":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v10

    .line 654
    .local v10, "imei":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v11

    .line 658
    .local v11, "imsi":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v21, 0x200

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 659
    .local v4, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v3, v21, v22

    const/16 v22, 0x2

    aput-object v16, v21, v22

    const/16 v22, 0x3

    aput-object v10, v21, v22

    const/16 v22, 0x4

    aput-object v11, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v7

    .line 660
    .local v7, "data":[B
    new-instance v5, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v5}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 661
    .local v5, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v5, v0, v1, v7, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, "pushTaskScript":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 666
    const-string v21, "<<<ok>>>"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 667
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "pushTaskScript:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 667
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 669
    const-string v21, "<<<##>>"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 670
    .local v18, "tempScript":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 671
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "<<<ok>>>"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 672
    .local v14, "pushContentType":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v13, v18, v21

    .line 674
    .local v13, "pushContentScript":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 675
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 676
    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 677
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "pushContentType:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 677
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/cynosure/paymentsdk/helper/DBHelper;->deletePushContent(Ljava/lang/String;)Z

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v21, v0

    new-instance v22, Lcom/cynosure/paymentsdk/vo/PushContent;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v13}, Lcom/cynosure/paymentsdk/vo/PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Lcom/cynosure/paymentsdk/helper/DBHelper;->savePushContent(Lcom/cynosure/paymentsdk/vo/PushContent;)Z

    .line 685
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/cynosure/paymentsdk/SDKCoreClass$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cynosure/paymentsdk/SDKCoreClass$1;-><init>(Lcom/cynosure/paymentsdk/SDKCoreClass;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 730
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 745
    .end local v13    # "pushContentScript":Ljava/lang/String;
    .end local v14    # "pushContentType":Ljava/lang/String;
    .end local v18    # "tempScript":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v21, v0

    sget-object v22, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_PUSHTASKTIMEOUT:Ljava/lang/String;

    const/16 v23, 0xa

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 748
    .end local v3    # "appID":Ljava/lang/String;
    .end local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v5    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v6    # "cpID":Ljava/lang/String;
    .end local v7    # "data":[B
    .end local v8    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v10    # "imei":Ljava/lang/String;
    .end local v11    # "imsi":Ljava/lang/String;
    .end local v12    # "isCanGetPushTask":Z
    .end local v15    # "pushTaskScript":Ljava/lang/String;
    .end local v16    # "sdkVC":Ljava/lang/String;
    .end local v17    # "serverIP":Ljava/lang/String;
    .end local v19    # "timeout":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 749
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    invoke-static {v9}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 740
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "appID":Ljava/lang/String;
    .restart local v4    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .restart local v5    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v6    # "cpID":Ljava/lang/String;
    .restart local v7    # "data":[B
    .restart local v8    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .restart local v10    # "imei":Ljava/lang/String;
    .restart local v11    # "imsi":Ljava/lang/String;
    .restart local v12    # "isCanGetPushTask":Z
    .restart local v15    # "pushTaskScript":Ljava/lang/String;
    .restart local v16    # "sdkVC":Ljava/lang/String;
    .restart local v17    # "serverIP":Ljava/lang/String;
    .restart local v19    # "timeout":Ljava/lang/String;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v21, "wrong pushTaskScript"

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getTask()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Lcom/cynosure/paymentsdk/purchase/GetTask;->getInstance()Lcom/cynosure/paymentsdk/purchase/GetTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/purchase/GetTask;->getTask()I

    .line 580
    :cond_0
    return-void
.end method

.method private uploadBillingResult()V
    .locals 18

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getBillingResult()Lcom/cynosure/paymentsdk/vo/BillingResult;

    move-result-object v2

    .line 537
    .local v2, "billingResult":Lcom/cynosure/paymentsdk/vo/BillingResult;
    if-eqz v2, :cond_1

    .line 541
    :try_start_0
    new-instance v7, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 542
    .local v7, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v12

    .line 543
    .local v12, "sdkVC":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "cpID":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, "imei":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "imsi":Ljava/lang/String;
    new-instance v3, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v15, 0x400

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 550
    .local v3, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    const/16 v16, 0x4

    aput-object v10, v15, v16

    const/16 v16, 0x5

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getColumn_ID()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getExdata()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getBillingResult()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v3, v15}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v6

    .line 553
    .local v6, "data":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 554
    .local v13, "serverIP":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 555
    sget-object v13, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 557
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->URL_BILLINGRESULT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 557
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 560
    .local v14, "url":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v4}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 561
    .local v4, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v6, v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 562
    .local v11, "regResult":Ljava/lang/String;
    invoke-static {v11}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v1    # "appID":Ljava/lang/String;
    .end local v3    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v4    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v5    # "cpID":Ljava/lang/String;
    .end local v6    # "data":[B
    .end local v7    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v9    # "imei":Ljava/lang/String;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v11    # "regResult":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    .end local v13    # "serverIP":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getBillingResult_ID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->deleteBillingResult(Ljava/lang/String;)Z

    .line 573
    :cond_1
    return-void

    .line 564
    :catch_0
    move-exception v8

    .line 565
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private uploadLog()V
    .locals 18

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getSDKLog()Lcom/cynosure/paymentsdk/vo/SDKLog;

    move-result-object v10

    .line 496
    .local v10, "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    if-eqz v10, :cond_1

    .line 500
    :try_start_0
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 501
    .local v6, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, "sdkVC":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "cpID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v9

    .line 508
    .local v9, "imsi":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v15, 0x400

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 509
    .local v2, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v9, v15, v16

    const/16 v16, 0x5

    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/vo/SDKLog;->getLogType()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/vo/SDKLog;->getLogContent()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v2, v15}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v5

    .line 512
    .local v5, "data":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 513
    .local v13, "serverIP":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 514
    sget-object v13, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 516
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->URL_UPLOG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 516
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 519
    .local v14, "url":Ljava/lang/String;
    new-instance v3, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 520
    .local v3, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v5, v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, "regResult":Ljava/lang/String;
    invoke-static {v11}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v3    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v4    # "cpID":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v11    # "regResult":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    .end local v13    # "serverIP":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/vo/SDKLog;->getLogID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->deleteSDKLog(Ljava/lang/String;)Z

    .line 532
    :cond_1
    return-void

    .line 523
    :catch_0
    move-exception v7

    .line 524
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    invoke-static {v7}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private uploadLoginLog()V
    .locals 19

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_LOGINLOGTIMEOUT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 758
    .local v13, "timeout":Ljava/lang/String;
    const/4 v10, 0x1

    .line 759
    .local v10, "isCanUploadLoginLog":Z
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 760
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getCurrTime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 761
    const/4 v10, 0x0

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    if-eqz v10, :cond_0

    .line 770
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 771
    .local v12, "serverIP":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 772
    sget-object v12, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 774
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->URL_UPLOADUSERLOGINLOG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 774
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 778
    .local v14, "url":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 779
    .local v6, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v11

    .line 780
    .local v11, "sdkVC":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v4

    .line 781
    .local v4, "cpID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v8

    .line 783
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v9

    .line 786
    .local v9, "imsi":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v15, 0x200

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 787
    .local v2, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v9, v15, v16

    invoke-virtual {v2, v15}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v5

    .line 788
    .local v5, "data":[B
    new-instance v3, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 789
    .local v3, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v5, v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v3    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v4    # "cpID":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v11    # "sdkVC":Ljava/lang/String;
    .end local v12    # "serverIP":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_LOGINLOGTIMEOUT:Ljava/lang/String;

    const/16 v17, 0xa

    const/16 v18, 0x18

    invoke-static/range {v17 .. v18}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    :catch_0
    move-exception v7

    .line 792
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    invoke-static {v7}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public InitSDKParamter()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISCANPAY:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOG:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISAUTOSENDQXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISAUTOSENDQXT:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_GETTASK_RETRYCOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_GETTASK_RETRYCOUNT:Ljava/lang/String;

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_DOTASK_SENDSMSRETRYCOUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_DOTASK_SENDSMSRETRYCOUNT:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSHOWPAYCONFIRM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSHOWPAYCONFIRM:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISBLOCKSMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISBLOCKSMS:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_BACKGROUNDTASKTIMETOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_BACKGROUNDTASKTIMETOUT:Ljava/lang/String;

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    iget-object v0, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_8
    return-void
.end method

.method public doSth()V
    .locals 7

    .prologue
    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISFINISHDUALSIMCHECK:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "isFinishDualSimCheck":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 113
    .local v0, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->InitDualSim()V

    .line 117
    .end local v0    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    :cond_0
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->getDNS()V

    .line 120
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->getClientSetup()V

    .line 123
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->doReg()V

    .line 126
    iget-object v5, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISAUTOSENDQXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "isAutoSendQXT":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    new-instance v4, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v4}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 130
    .local v4, "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendQXT()V

    .line 135
    .end local v4    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    :cond_1
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->get3rd()V

    .line 138
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->getTask()V

    .line 141
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->doTask()V

    .line 144
    iget-object v5, p0, Lcom/cynosure/paymentsdk/SDKCoreClass;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISUPLOG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->uploadLog()V

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->uploadBillingResult()V

    .line 152
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->getBackgroundTask()V

    .line 155
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->getPushTask()V

    .line 158
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/SDKCoreClass;->uploadLoginLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "isAutoSendQXT":Ljava/lang/String;
    .end local v3    # "isFinishDualSimCheck":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-static {v1}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
