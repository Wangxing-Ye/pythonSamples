.class public Lcom/cynosure/paymentsdk/SDKInterface;
.super Ljava/lang/Object;
.source "SDKInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitSDKContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/CoreContext;->setContext(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public static SDKInit(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isInitOtherSDK"    # Z

    .prologue
    .line 72
    invoke-static {p0}, Lcom/cynosure/paymentsdk/SDKInterface;->initMySDK(Landroid/app/Activity;)V

    .line 74
    invoke-static {p0, p1}, Lcom/cynosure/paymentsdk/SDKInterface;->initOtherSDK(Landroid/app/Activity;Z)V

    .line 76
    invoke-static {p0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->Init(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method private static SDKInit(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "isAlive":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 115
    .local v2, "manager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 140
    .end local v2    # "manager":Landroid/app/ActivityManager;
    :goto_0
    if-nez v1, :cond_1

    .line 141
    const-string v5, "SDKInit"

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 143
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/cynosure/paymentsdk/CoreService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v4, "serviceIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 115
    .restart local v2    # "manager":Landroid/app/ActivityManager;
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 125
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v8, "/com.cynosure.paymentsdk.CoreService"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 126
    if-eqz v6, :cond_0

    .line 128
    iget v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v6, :cond_0

    .line 129
    const-string v5, "Service is Alive"

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    const/4 v1, 0x1

    .line 131
    goto :goto_0

    .line 135
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static StartSDK()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/SDKInterface;->SDKInit(Landroid/content/Context;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static StartSDK(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/CoreContext;->setContext(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/SDKInterface;->SDKInit(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK()V

    return-void
.end method

.method public static addTask(Lcom/cynosure/paymentsdk/vo/ChargingInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V
    .locals 8
    .param p0, "chargeInfo"    # Lcom/cynosure/paymentsdk/vo/ChargingInfo;
    .param p1, "taskType"    # Ljava/lang/String;
    .param p2, "column_id"    # Ljava/lang/String;
    .param p3, "exdata"    # Ljava/lang/String;
    .param p4, "onClickListener"    # Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .prologue
    .line 357
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 359
    const-string v5, "98"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WrongTaskType|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/SDKInterface;->saveLog(Ljava/lang/String;)V

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong TaskType|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 367
    if-eqz p4, :cond_0

    .line 368
    invoke-virtual {p4}, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;->onFailed()V

    .line 372
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 376
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 380
    invoke-static {p2}, Lcom/cynosure/paymentsdk/umengSDKInterface;->pay(Ljava/lang/String;)V

    .line 382
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 383
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v5, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSHOWPAYCONFIRM:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v1, v5, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "isShowPayConfirm":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 385
    if-eqz p0, :cond_2

    .line 386
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addTask"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 390
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 391
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "Title"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v5, "GameName"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getGameName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v5, "ItemName"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getItemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v5, "Price"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v5, "ServiceText"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getServiceText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v5, "taskType"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v5, "column_id"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v5, "exdata"

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v5, "SDKDialogOnClickListener"

    invoke-virtual {v0, v5, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 401
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 402
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 404
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v3    # "isShowPayConfirm":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 407
    .restart local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v3    # "isShowPayConfirm":Ljava/lang/String;
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/cynosure/paymentsdk/SDKInterface;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v3    # "isShowPayConfirm":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    invoke-static {v2}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v3    # "isShowPayConfirm":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/cynosure/paymentsdk/SDKInterface;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)Z

    goto :goto_0

    .line 417
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v3    # "isShowPayConfirm":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetTaskFailed|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 420
    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 421
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 417
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/SDKInterface;->saveLog(Ljava/lang/String;)V

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetTaskFailed wrong column_id |"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 426
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 427
    if-eqz p4, :cond_2

    .line 428
    invoke-virtual {p4}, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;->onFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)Z
    .locals 6
    .param p0, "taskType"    # Ljava/lang/String;
    .param p1, "column_id"    # Ljava/lang/String;
    .param p2, "exdata"    # Ljava/lang/String;
    .param p3, "onClickListener"    # Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 442
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    const-string v3, "98"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WrongTaskType|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/SDKInterface;->saveLog(Ljava/lang/String;)V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong TaskType|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 494
    :goto_0
    return v2

    .line 454
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 457
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 458
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    new-instance v1, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V

    .line 460
    .local v1, "t":Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;
    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->start()V

    .line 462
    const/4 v2, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "t":Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetTaskFailed|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 469
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 470
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/SDKInterface;->saveLog(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetTaskFailed wrong column_id |"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 475
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetTaskError|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 485
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 486
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/SDKInterface;->saveLog(Ljava/lang/String;)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetTaskError|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 490
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 491
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static cleanDialog()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 91
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 92
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method public static get3rd()V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 271
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_3RDTIMEOUT:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public static getClientSetup()V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 254
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CLIENTSETUPTIMEOUT:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cynosure/paymentsdk/helper/TimeHelper;->getNewTimeout(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public static init3rd()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 276
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method

.method private static initMySDK(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/CoreContext;->setContext(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cynosure/paymentsdk/CoreContext;->setActivity(Landroid/app/Activity;)V

    .line 83
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->cleanDialog()V

    .line 85
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/SDKInterface;->SDKInit(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private static initOtherSDK(Landroid/app/Activity;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isInitOtherSDK"    # Z

    .prologue
    .line 96
    const-string v1, "initOtherSDK"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 101
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 104
    .end local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_0
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 106
    .restart local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISNEEDINIT3RD:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 171
    sput-boolean p0, Lcom/cynosure/paymentsdk/helper/LogHelper;->_isShowLog:Z

    .line 172
    return-void
.end method

.method public static isSFPBDX(Z)V
    .locals 8
    .param p0, "isSFPBDX"    # Z

    .prologue
    const/16 v7, 0x48

    const/16 v6, 0xb

    .line 175
    if-eqz p0, :cond_0

    .line 176
    new-instance v2, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 178
    .local v2, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v0, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/Block;-><init>()V

    .line 179
    .local v0, "block":Lcom/cynosure/paymentsdk/vo/Block;
    const-string v3, "^10000\\d?~~~^10010\\d?~~~^10086\\d?~~~^1066\\d?~~~^10658\\d?"

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockNumber(Ljava/lang/String;)V

    .line 180
    const-string v3, "\u70b9\u64ad~~~\u8ba2\u8d2d~~~\u8d44\u8d39~~~\u4fe1\u606f\u8d39~~~\u5143"

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockContent(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 182
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 183
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockTimeout(Ljava/lang/String;)V

    .line 184
    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setIsNeedReply(Ljava/lang/String;)V

    .line 185
    const-string v3, "null"

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyInfo(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 188
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyTimeout(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveBlockInfo(Lcom/cynosure/paymentsdk/vo/Block;)Z

    .line 192
    .end local v0    # "block":Lcom/cynosure/paymentsdk/vo/Block;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_0
    return-void
.end method

.method public static isSendQXT()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 197
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSENDQXT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "isSend":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v2, 0x1

    .line 207
    :cond_0
    return v2
.end method

.method public static isShowPayConfirm()Z
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 214
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSHOWPAYCONFIRM:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "isShowPayConfirm":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v2, 0x1

    .line 219
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/cynosure/paymentsdk/SDKInterface;->initMySDK(Landroid/app/Activity;)V

    .line 41
    invoke-static {p0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->onPause(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/cynosure/paymentsdk/SDKInterface;->initMySDK(Landroid/app/Activity;)V

    .line 47
    invoke-static {p0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->onResume(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public static pay3rd([Ljava/lang/String;)V
    .locals 3
    .param p0, "script"    # [Ljava/lang/String;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 282
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 283
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "script"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 286
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 287
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static reReg()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 261
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISREG:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_REGRETRYCOUNT:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static resendQXT()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 240
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v1, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSENDQXT:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->sendQXT()V

    .line 242
    return-void
.end method

.method public static resetSDK(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 166
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->deleteAllConfig()Z

    .line 168
    .end local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_0
    return-void

    .line 164
    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x65t
        0x78t
        0x61t
        0x6dt
        0x70t
        0x6ct
        0x65t
        0x2et
        0x74t
        0x65t
        0x73t
        0x74t
        0x70t
        0x61t
        0x79t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x73t
        0x64t
        0x6bt
    .end array-data
.end method

.method public static saveBillingResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "column_id"    # Ljava/lang/String;
    .param p1, "exdata"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 560
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 561
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v1, Lcom/cynosure/paymentsdk/vo/BillingResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/cynosure/paymentsdk/vo/BillingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveBillingResult(Lcom/cynosure/paymentsdk/vo/BillingResult;)Z

    .line 562
    return-void
.end method

.method public static saveLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 247
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v1, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_CLIENTLOG:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 248
    return-void
.end method

.method public static sendQXT()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    new-instance v1, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 227
    .local v1, "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendQXT()V

    .line 228
    const-string v2, "sendQXT Success"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 233
    const-string v2, "sendQXT Failed"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showDoubleConfirm(Lcom/cynosure/paymentsdk/vo/ChargingInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V
    .locals 4
    .param p0, "chargeInfo"    # Lcom/cynosure/paymentsdk/vo/ChargingInfo;
    .param p1, "taskType"    # Ljava/lang/String;
    .param p2, "column_id"    # Ljava/lang/String;
    .param p3, "exdata"    # Ljava/lang/String;
    .param p4, "onClickListener"    # Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .prologue
    .line 294
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->cleanDialog()V

    .line 296
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 297
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Title"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "GameName"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "ItemName"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "Price"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "ServiceText"

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->getServiceText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "taskType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v2, "column_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "exdata"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "SDKDialogOnClickListener"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 307
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 308
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 309
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method public static showDownloadNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "apkID"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 334
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "apkid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "savepath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 339
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 340
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public static showPushDialog()V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->cleanDialog()V

    .line 317
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 318
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 325
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "msg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 329
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    return-void
.end method

.method public static stopSDK(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cynosure/paymentsdk/CoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 161
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 157
    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x65t
        0x78t
        0x61t
        0x6dt
        0x70t
        0x6ct
        0x65t
        0x2et
        0x74t
        0x65t
        0x73t
        0x74t
        0x70t
        0x61t
        0x79t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x73t
        0x64t
        0x6bt
    .end array-data
.end method

.method public static updateDownloadNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "apkID"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "progress"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 345
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "apkid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "progress"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 351
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method
