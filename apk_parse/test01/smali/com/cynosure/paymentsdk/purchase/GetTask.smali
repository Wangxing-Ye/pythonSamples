.class public Lcom/cynosure/paymentsdk/purchase/GetTask;
.super Ljava/lang/Object;
.source "GetTask.java"


# static fields
.field public static final GETTASK_STATUS_DONE:I = 0x2

.field public static final GETTASK_STATUS_ERROR:I = 0xa

.field public static final GETTASK_STATUS_LOCALTASK_NOMATCH:I = 0x8

.field public static final GETTASK_STATUS_LOCALTASK_NOTASK:I = 0x6

.field public static final GETTASK_STATUS_LOCALTASK_WRONGFORMAT:I = 0x7

.field public static final GETTASK_STATUS_NETWORKRETURNNULL:I = 0x4

.field public static final GETTASK_STATUS_NEW:I = 0x1

.field public static final GETTASK_STATUS_NONE:I = 0x0

.field public static final GETTASK_STATUS_NOTASK:I = 0x3

.field public static final GETTASK_STATUS_PLEASEWAIT:I = 0x5

.field public static final GETTASK_STATUS_WRONGPARAMETER:I = 0x9

.field private static final HTTPSTATECODE:Ljava/lang/String;

.field public static final MAXGETTASKRETRYCOUNT:I = 0x64

.field private static final SPLITCODE_PARAMETER:Ljava/lang/String;

.field private static final SPLITCODE_TASK:Ljava/lang/String;

.field public static final TASKTYPE_LOCALTASK:I = 0x1

.field public static final TASKTYPE_ONLINETASK:I = 0x0

.field public static final TASKTYPE_TESTDATA:I = 0x63

.field public static final TASKTYPE_TESTSCRIPT:I = 0x62

.field public static final THREADTIMEOUT_MINUTE:I = 0x5

.field private static volatile _instance:Lcom/cynosure/paymentsdk/purchase/GetTask;


# instance fields
.field private _dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 28
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_TASK:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_PARAMETER:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_instance:Lcom/cynosure/paymentsdk/purchase/GetTask;

    return-void

    .line 28
    :array_0
    .array-data 1
        0x3ct
        0x3ct
        0x3ct
        0x6ft
        0x6bt
        0x3et
        0x3et
        0x3et
    .end array-data

    .line 30
    :array_1
    .array-data 1
        0x3ct
        0x3ct
        0x3ct
        0x6et
        0x65t
        0x78t
        0x74t
        0x3et
        0x3et
        0x3et
    .end array-data

    .line 32
    nop

    :array_2
    .array-data 1
        0x3ct
        0x3ct
        0x3ct
        0x23t
        0x23t
        0x3et
        0x3et
        0x3et
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/purchase/GetTask;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    sget-object v1, Lcom/cynosure/paymentsdk/purchase/GetTask;->_instance:Lcom/cynosure/paymentsdk/purchase/GetTask;

    if-nez v1, :cond_1

    .line 69
    const-class v2, Lcom/cynosure/paymentsdk/purchase/GetTask;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    sget-object v1, Lcom/cynosure/paymentsdk/purchase/GetTask;->_instance:Lcom/cynosure/paymentsdk/purchase/GetTask;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/cynosure/paymentsdk/purchase/GetTask;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/purchase/GetTask;-><init>()V

    sput-object v1, Lcom/cynosure/paymentsdk/purchase/GetTask;->_instance:Lcom/cynosure/paymentsdk/purchase/GetTask;

    .line 69
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_1
    :try_start_2
    sget-object v1, Lcom/cynosure/paymentsdk/purchase/GetTask;->_instance:Lcom/cynosure/paymentsdk/purchase/GetTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNormalTask(Lcom/cynosure/paymentsdk/vo/Task;)I
    .locals 25
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 201
    const/16 v18, 0x0

    .line 203
    .local v18, "status":I
    if-nez p1, :cond_0

    .line 204
    const/16 v18, 0x9

    move/from16 v19, v18

    .line 303
    .end local v18    # "status":I
    .local v19, "status":I
    :goto_0
    return v19

    .line 210
    .end local v19    # "status":I
    .restart local v18    # "status":I
    :cond_0
    :try_start_0
    new-instance v9, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 211
    .local v9, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v16

    .line 212
    .local v16, "sdkVC":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "cpID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "appID":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, "imei":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v14

    .line 218
    .local v14, "imsi":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 233
    new-instance v5, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v22, 0x80

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 234
    .local v5, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    const/16 v23, 0x1

    aput-object v4, v22, v23

    const/16 v23, 0x2

    aput-object v16, v22, v23

    const/16 v23, 0x3

    aput-object v13, v22, v23

    const/16 v23, 0x4

    aput-object v14, v22, v23

    const/16 v23, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x6

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v8

    .line 238
    .local v8, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v22, v0

    sget-object v23, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 239
    .local v17, "serverIP":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 240
    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 242
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/cynosure/paymentsdk/helper/Constant;->URL_GETNORMALTASK:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 244
    .local v21, "url":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 245
    .local v6, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v6, v0, v1, v8, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, "getTaskResult":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 252
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "0"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 254
    sget-object v22, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    sget-object v23, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "allTask":Ljava/lang/String;
    sget-object v22, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_TASK:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 257
    .local v20, "taskList":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 258
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v12, v0, :cond_3

    .end local v3    # "allTask":Ljava/lang/String;
    .end local v4    # "appID":Ljava/lang/String;
    .end local v5    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v7    # "cpID":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v9    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v11    # "getTaskResult":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "imsi":Ljava/lang/String;
    .end local v16    # "sdkVC":Ljava/lang/String;
    .end local v17    # "serverIP":Ljava/lang/String;
    .end local v20    # "taskList":[Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    move/from16 v19, v18

    .line 303
    .end local v18    # "status":I
    .restart local v19    # "status":I
    goto/16 :goto_0

    .line 260
    .end local v19    # "status":I
    .restart local v3    # "allTask":Ljava/lang/String;
    .restart local v4    # "appID":Ljava/lang/String;
    .restart local v5    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .restart local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v7    # "cpID":Ljava/lang/String;
    .restart local v8    # "data":[B
    .restart local v9    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .restart local v11    # "getTaskResult":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v13    # "imei":Ljava/lang/String;
    .restart local v14    # "imsi":Ljava/lang/String;
    .restart local v16    # "sdkVC":Ljava/lang/String;
    .restart local v17    # "serverIP":Ljava/lang/String;
    .restart local v18    # "status":I
    .restart local v20    # "taskList":[Ljava/lang/String;
    .restart local v21    # "url":Ljava/lang/String;
    :cond_3
    aget-object v22, v20, v12

    sget-object v23, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_PARAMETER:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "oneTask":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 262
    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/vo/Task;->setChargeMode(Ljava/lang/String;)V

    .line 263
    const/16 v22, 0x3

    aget-object v22, v15, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/vo/Task;->setDoCount(Ljava/lang/String;)V

    .line 264
    const/16 v22, 0x2

    aget-object v22, v15, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/vo/Task;->setChargePointSMS_ID(Ljava/lang/String;)V

    .line 265
    const/16 v22, 0x4

    aget-object v22, v15, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/vo/Task;->setScript(Ljava/lang/String;)V

    .line 266
    const/16 v22, 0x5

    aget-object v22, v15, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/vo/Task;->setOnceCode(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTask(Lcom/cynosure/paymentsdk/vo/Task;)Z

    .line 269
    const/16 v18, 0x1

    .line 258
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 277
    .end local v3    # "allTask":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "oneTask":[Ljava/lang/String;
    .end local v20    # "taskList":[Ljava/lang/String;
    :cond_5
    const-string v22, "100001"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 278
    const/16 v18, 0x0

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    const-string v22, "100011"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 281
    const/16 v18, 0x2

    .line 282
    goto :goto_2

    .line 283
    :cond_7
    const-string v22, "100012"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "202"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-eqz v22, :cond_9

    .line 284
    :cond_8
    const/16 v18, 0x3

    .line 285
    goto/16 :goto_2

    .line 287
    :cond_9
    const/16 v18, 0x0

    .line 289
    goto/16 :goto_2

    .line 291
    :cond_a
    const/16 v18, 0x4

    .line 293
    goto/16 :goto_2

    .line 295
    .end local v5    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v6    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v8    # "data":[B
    .end local v11    # "getTaskResult":Ljava/lang/String;
    .end local v17    # "serverIP":Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x9

    move/from16 v19, v18

    .line 296
    .end local v18    # "status":I
    .restart local v19    # "status":I
    goto/16 :goto_0

    .line 299
    .end local v4    # "appID":Ljava/lang/String;
    .end local v7    # "cpID":Ljava/lang/String;
    .end local v9    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v13    # "imei":Ljava/lang/String;
    .end local v14    # "imsi":Ljava/lang/String;
    .end local v16    # "sdkVC":Ljava/lang/String;
    .end local v19    # "status":I
    .restart local v18    # "status":I
    :catch_0
    move-exception v10

    .line 300
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/16 v18, 0xa

    goto/16 :goto_2
.end method

.method private getOnlineScript(Lcom/cynosure/paymentsdk/vo/Task;)I
    .locals 16
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 308
    const/4 v9, 0x0

    .line 312
    .local v9, "status":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v13, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "serverIP":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 314
    sget-object v8, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 316
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/cynosure/paymentsdk/helper/Constant;->URL_GETONLINESCRIPT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "chargepointsms_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 318
    .local v11, "url":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 319
    .local v2, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v12, v13}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "getTaskResult":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getOnlineScript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 323
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 325
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "100"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 327
    sget-object v12, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    sget-object v13, Lcom/cynosure/paymentsdk/purchase/GetTask;->HTTPSTATECODE:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "allTask":Ljava/lang/String;
    sget-object v12, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_TASK:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, "taskList":[Ljava/lang/String;
    array-length v12, v10

    if-lez v12, :cond_1

    .line 331
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v10

    if-lt v6, v12, :cond_2

    .line 366
    .end local v1    # "allTask":Ljava/lang/String;
    .end local v2    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v5    # "getTaskResult":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "serverIP":Ljava/lang/String;
    .end local v10    # "taskList":[Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return v9

    .line 333
    .restart local v1    # "allTask":Ljava/lang/String;
    .restart local v2    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v5    # "getTaskResult":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "serverIP":Ljava/lang/String;
    .restart local v10    # "taskList":[Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_2
    aget-object v12, v10, v6

    sget-object v13, Lcom/cynosure/paymentsdk/purchase/GetTask;->SPLITCODE_PARAMETER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "oneTask":[Ljava/lang/String;
    array-length v12, v7

    const/4 v13, 0x6

    if-ne v12, v13, :cond_3

    .line 336
    const/4 v12, 0x0

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/Task;->setChargeMode(Ljava/lang/String;)V

    .line 337
    const/4 v12, 0x3

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/Task;->setDoCount(Ljava/lang/String;)V

    .line 338
    const/4 v12, 0x2

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/Task;->setChargePointSMS_ID(Ljava/lang/String;)V

    .line 340
    new-instance v3, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 341
    .local v3, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-object v13, v7, v13

    const-string v14, "-IMSI-"

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 342
    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-object v13, v7, v13

    const-string v14, "-IMEI-"

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 343
    const/4 v12, 0x4

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/Task;->setScript(Ljava/lang/String;)V

    .line 344
    const/4 v12, 0x5

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/Task;->setOnceCode(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTask(Lcom/cynosure/paymentsdk/vo/Task;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    const/4 v9, 0x1

    .line 331
    .end local v3    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "allTask":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "oneTask":[Ljava/lang/String;
    .end local v10    # "taskList":[Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 358
    goto :goto_1

    .line 360
    :cond_5
    const/4 v9, 0x4

    goto :goto_1

    .line 363
    .end local v2    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v5    # "getTaskResult":Ljava/lang/String;
    .end local v8    # "serverIP":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 364
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getTask()I
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 106
    const/4 v4, 0x0

    .line 109
    .local v4, "returnvalue":I
    :try_start_0
    iget-object v8, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getLastPurchase()Lcom/cynosure/paymentsdk/vo/Task;

    move-result-object v5

    .line 111
    .local v5, "task":Lcom/cynosure/paymentsdk/vo/Task;
    const/4 v3, 0x1

    .line 112
    .local v3, "isCanGetTask":Z
    if-eqz v5, :cond_4

    .line 113
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getGetRecount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    iget-object v8, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_GETTASK_RETRYCOUNT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "getTaskRetryCount":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 117
    const-string v2, "40"

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getGetRecount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 127
    const/4 v3, 0x0

    .line 129
    iget-object v8, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskFinishFlag(Ljava/lang/String;)Z

    .line 133
    .end local v2    # "getTaskRetryCount":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_4

    .line 135
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTaskType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    invoke-direct {p0, v5}, Lcom/cynosure/paymentsdk/purchase/GetTask;->getNormalTask(Lcom/cynosure/paymentsdk/vo/Task;)I

    move-result v4

    .line 139
    :cond_2
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTaskType()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x62

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    invoke-direct {p0, v5}, Lcom/cynosure/paymentsdk/purchase/GetTask;->getOnlineScript(Lcom/cynosure/paymentsdk/vo/Task;)I

    move-result v4

    .line 145
    :cond_3
    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    .line 147
    iget-object v7, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v8, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_GETTASK:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GetTaskFinish"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTaskType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getGetRecount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .end local v3    # "isCanGetTask":Z
    .end local v5    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_4
    :goto_1
    move v7, v4

    .line 196
    :goto_2
    return v7

    .line 120
    .restart local v2    # "getTaskRetryCount":Ljava/lang/String;
    .restart local v3    # "isCanGetTask":Z
    .restart local v5    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 122
    const-string v2, "40"

    goto/16 :goto_0

    .line 151
    .end local v2    # "getTaskRetryCount":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v8

    const-string v9, "9"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 152
    iget-object v8, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskFinishFlag(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 191
    .end local v3    # "isCanGetTask":Z
    .end local v5    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const/16 v4, 0xa

    goto :goto_1

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isCanGetTask":Z
    .restart local v5    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_7
    const/4 v6, 0x0

    .line 160
    .local v6, "tempTryCount":I
    :try_start_1
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getGetRecount()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 161
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getGetRecount()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 166
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v7, 0x5

    if-gt v6, v7, :cond_9

    .line 168
    const/16 v7, 0xd

    mul-int/lit8 v8, v6, 0xa

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 173
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getTask Error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/cynosure/paymentsdk/purchase/GetTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskGetTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    const/16 v4, 0xa

    goto/16 :goto_1

    .line 171
    :cond_9
    const/16 v7, 0xd

    const/16 v8, 0x32

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
