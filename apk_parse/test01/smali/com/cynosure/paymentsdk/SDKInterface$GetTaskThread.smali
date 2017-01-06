.class public Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;
.super Ljava/lang/Thread;
.source "SDKInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/SDKInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetTaskThread"
.end annotation


# instance fields
.field private _column_id:Ljava/lang/String;

.field private _exdata:Ljava/lang/String;

.field private _getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

.field private _tasktype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V
    .locals 0
    .param p1, "tasktype"    # Ljava/lang/String;
    .param p2, "column_id"    # Ljava/lang/String;
    .param p3, "exdata"    # Ljava/lang/String;
    .param p4, "onClickListener"    # Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_tasktype:Ljava/lang/String;

    .line 510
    iput-object p2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_column_id:Ljava/lang/String;

    .line 511
    iput-object p3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_exdata:Ljava/lang/String;

    .line 512
    iput-object p4, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 516
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 518
    :try_start_0
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 521
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v2, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_CLIENTLOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReadyGetTask|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    iget-object v5, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_column_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 525
    iget-object v5, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_exdata:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadyGetTask|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_column_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    iget-object v3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_exdata:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_tasktype:Ljava/lang/String;

    iget-object v3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_column_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_exdata:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    # invokes: Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK()V
    invoke-static {}, Lcom/cynosure/paymentsdk/SDKInterface;->access$0()V

    .line 535
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;->onSuccess()V

    .line 538
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetTaskSuccess|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_column_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 542
    iget-object v3, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_exdata:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 556
    .end local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_1
    :goto_0
    return-void

    .line 545
    .restart local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_2
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/cynosure/paymentsdk/SDKInterface$GetTaskThread;->_getTaskResultListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;->onFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    .end local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
