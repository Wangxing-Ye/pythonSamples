.class public Lcom/cynosure/paymentsdk/purchase/DoTask;
.super Ljava/lang/Object;
.source "DoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;
    }
.end annotation


# static fields
.field public static final DOTASKTHREADSTATUS_BUSY:I = 0x3

.field public static final DOTASKTHREADSTATUS_DOING:I = 0x4

.field public static final DOTASKTHREADSTATUS_ERROR:I = 0x1

.field public static final DOTASKTHREADSTATUS_MAXRETRY:I = 0x7

.field public static final DOTASKTHREADSTATUS_NORMAL:I = 0x0

.field public static final DOTASKTHREADSTATUS_NOTASK:I = 0x9

.field public static final DOTASKTHREADSTATUS_ONLINECHECKERROR:I = 0x5

.field public static final DOTASKTHREADSTATUS_RETRY:I = 0x6

.field public static final DOTASKTHREADSTATUS_SUCCESS:I = 0x2

.field public static final DOTASKTHREADSTATUS_WRONGRETURNVALUE:I = 0x8

.field private static final NETWORKJOBSTATUS_ERROR:I = 0x1

.field private static final NETWORKJOBSTATUS_NORMAL:I = 0x0

.field private static final NETWORKJOBSTATUS_TIMEOUT:I = 0x3

.field private static final NETWORKJOBSTATUS_WRONGRETURNVALUE:I = 0x2

.field public static final SCRIPTJOB_BLOCK:Ljava/lang/String;

.field public static final SCRIPTJOB_FUNCTION:Ljava/lang/String;

.field public static final SCRIPTJOB_NETWORK:Ljava/lang/String;

.field public static final SCRIPTJOB_SLEEP:Ljava/lang/String;

.field public static final SCRIPTJOB_SMS:Ljava/lang/String;

.field public static final SCRIPTJOB_SUPERNETWORK:Ljava/lang/String;

.field public static final SCRIPTJOB_WAIT:Ljava/lang/String;

.field private static final SMSJOBSTATUS_ERROR:I = 0x0

.field private static final SMSJOBSTATUS_NORMAL:I = 0x0

.field private static final SMSJOBSTATUS_WRONGSCRIPT:I = 0x2

.field private static final SMSJOBSTATUS_WRONGSMSCONTENT:I = 0x3

.field public static final THREADTIMEOUT_MINUTE:I = 0x5

.field public static final WAITFOR_ERROR:Ljava/lang/String;

.field public static final WAITFOR_MMNETPAY:Ljava/lang/String;

.field public static final WAITFOR_NETWORKWRONGRETURNVALUE:Ljava/lang/String;

.field public static final WAITFOR_NORMAL:Ljava/lang/String;

.field public static final WAITFOR_ONLINECHECKERROR:Ljava/lang/String;

.field public static final WAITFOR_SMS:Ljava/lang/String;

.field private static volatile _instance:Lcom/cynosure/paymentsdk/purchase/DoTask;


# instance fields
.field private _chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

.field private _dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

.field private _mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v2, 0x5

    .line 58
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_NETWORK:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_WAIT:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SLEEP:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SMS:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_BLOCK:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_FUNCTION:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SUPERNETWORK:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_NORMAL:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_SMS:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_NETWORKWRONGRETURNVALUE:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_ERROR:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [B

    fill-array-data v1, :array_b

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_MMNETPAY:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_ONLINECHECKERROR:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_instance:Lcom/cynosure/paymentsdk/purchase/DoTask;

    return-void

    .line 58
    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x77t
        0x6ft
        0x72t
        0x6bt
    .end array-data

    .line 60
    :array_1
    .array-data 1
        0x77t
        0x61t
        0x69t
        0x74t
    .end array-data

    .line 62
    :array_2
    .array-data 1
        0x73t
        0x6ct
        0x65t
        0x65t
        0x70t
    .end array-data

    .line 64
    nop

    :array_3
    .array-data 1
        0x73t
        0x6dt
        0x73t
    .end array-data

    .line 66
    :array_4
    .array-data 1
        0x62t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data

    .line 68
    nop

    :array_5
    .array-data 1
        0x66t
        0x75t
        0x6et
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
    .end array-data

    .line 70
    :array_6
    .array-data 1
        0x73t
        0x75t
        0x70t
        0x65t
        0x72t
        0x6et
        0x65t
        0x74t
        0x77t
        0x6ft
        0x72t
        0x6bt
    .end array-data

    .line 73
    :array_7
    .array-data 1
        0x6et
        0x6ft
        0x72t
        0x6dt
        0x61t
        0x6ct
    .end array-data

    .line 75
    nop

    :array_8
    .array-data 1
        0x73t
        0x6dt
        0x73t
    .end array-data

    .line 77
    :array_9
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x77t
        0x6ft
        0x72t
        0x6bt
        0x77t
        0x72t
        0x6ft
        0x6et
        0x67t
        0x72t
        0x65t
        0x74t
        0x75t
        0x72t
        0x6et
        0x76t
        0x61t
        0x6ct
        0x75t
        0x65t
    .end array-data

    .line 79
    :array_a
    .array-data 1
        0x65t
        0x72t
        0x72t
        0x6ft
        0x72t
    .end array-data

    .line 81
    nop

    :array_b
    .array-data 1
        0x6dt
        0x6dt
        0x6et
        0x65t
        0x74t
        0x70t
        0x61t
        0x79t
    .end array-data

    .line 83
    :array_c
    .array-data 1
        0x6ft
        0x6et
        0x6ct
        0x69t
        0x6et
        0x65t
        0x63t
        0x68t
        0x65t
        0x63t
        0x6bt
        0x65t
        0x72t
        0x72t
        0x6ft
        0x72t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    .line 88
    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    .line 94
    return-void
.end method

.method private TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V
    .locals 8
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "tempTryCount":I
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 440
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 444
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xd

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doTask Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskDoTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/purchase/DoTask;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/purchase/DoTask;->doTask()V

    return-void
.end method

.method private doTask()V
    .locals 14

    .prologue
    .line 184
    :try_start_0
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getTaskToDo()Lcom/cynosure/paymentsdk/vo/Task;

    move-result-object v7

    .line 186
    .local v7, "task":Lcom/cynosure/paymentsdk/vo/Task;
    if-eqz v7, :cond_0

    .line 188
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x1e

    if-lt v9, v10, :cond_1

    .line 189
    const-string v9, "DoTask Retry MAX"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 191
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskFinishFlag(Ljava/lang/String;)Z

    .line 432
    .end local v7    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v7    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_1
    const/4 v2, 0x1

    .line 197
    .local v2, "isDo":Z
    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "script":Ljava/lang/String;
    const-string v9, "------"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "step":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 212
    .local v1, "i":I
    :goto_1
    array-length v9, v6

    if-lt v1, v9, :cond_2

    .line 395
    :goto_2
    array-length v9, v6

    if-ne v1, v9, :cond_0

    .line 397
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "FinishTask:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 399
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 400
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 401
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 402
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 403
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 404
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 406
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->uploadState(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 408
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoCount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 410
    .local v8, "tempDoCount":I
    add-int/lit8 v8, v8, -0x1

    .line 411
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/cynosure/paymentsdk/vo/Task;->setDoCount(Ljava/lang/String;)V

    .line 412
    if-lez v8, :cond_d

    .line 414
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskDoCount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 429
    .end local v1    # "i":I
    .end local v2    # "isDo":Z
    .end local v4    # "script":Ljava/lang/String;
    .end local v6    # "step":[Ljava/lang/String;
    .end local v7    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .end local v8    # "tempDoCount":I
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "isDo":Z
    .restart local v4    # "script":Ljava/lang/String;
    .restart local v6    # "step":[Ljava/lang/String;
    .restart local v7    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_2
    :try_start_1
    aget-object v9, v6, v1

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "oneStep":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 217
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_BLOCK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "blockstep:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 218
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v7, v3}, Lcom/cynosure/paymentsdk/purchase/DoTask;->saveBlockInfo(Lcom/cynosure/paymentsdk/vo/Task;[Ljava/lang/String;)V

    .line 212
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 223
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_NETWORK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoNet_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 224
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v3, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->networkJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)I

    move-result v5

    .line 230
    .local v5, "status":I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 231
    const-string v9, "NETWORKJOBSTATUS_ERROR"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 234
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_NR_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 237
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 238
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 239
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 240
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 241
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 242
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 243
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 244
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 245
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_2

    .line 251
    :cond_5
    const/4 v9, 0x2

    if-ne v5, v9, :cond_3

    .line 252
    const-string v9, "NETWORKJOBSTATUS_WRONGRETURNVALUE"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 255
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_WR_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 257
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 258
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 259
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 260
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 261
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 262
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 263
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 264
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 265
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 266
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_2

    .line 273
    .end local v5    # "status":I
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SLEEP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 274
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoSleep_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 274
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, v3}, Lcom/cynosure/paymentsdk/purchase/DoTask;->sleepJob([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 280
    :cond_7
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_WAIT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoWait_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 285
    array-length v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 287
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-direct {p0, v7, v1, v9}, Lcom/cynosure/paymentsdk/purchase/DoTask;->waitJob(Lcom/cynosure/paymentsdk/vo/Task;ILjava/lang/String;)V

    .line 289
    const/4 v9, 0x1

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_SMS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v10, "waitJob break"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 290
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    :cond_8
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SMS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoSMS_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 297
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/cynosure/paymentsdk/purchase/DoTask;->smsJob([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 303
    .restart local v5    # "status":I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    .line 304
    const-string v9, "SMSJOBSTATUS_WRONGSCRIPT"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 305
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_WS_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 307
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 308
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 309
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 310
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 311
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 312
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 313
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 314
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 315
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 316
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 318
    :cond_9
    const/4 v9, 0x3

    if-ne v5, v9, :cond_3

    .line 319
    const-string v9, "SMSJOBSTATUS_WRONGSMSCONTENT"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 321
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_WC_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 323
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 324
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 325
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 326
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 327
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 328
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 329
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 330
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 331
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 332
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_2

    .line 336
    .end local v5    # "status":I
    :cond_a
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_FUNCTION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoFun_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 337
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v3, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->functionJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)V

    goto/16 :goto_3

    .line 343
    :cond_b
    const/4 v9, 0x0

    aget-object v9, v3, v9

    sget-object v10, Lcom/cynosure/paymentsdk/purchase/DoTask;->SCRIPTJOB_SUPERNETWORK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TaskStep_DoSuNet_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    aget-object v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 344
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v3, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->superNetworkJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)I

    move-result v5

    .line 350
    .restart local v5    # "status":I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_c

    .line 351
    const-string v9, "NETWORKJOBSTATUS_ERROR"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 354
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_NR_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 356
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 357
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 358
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 359
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 360
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 361
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 362
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 363
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 364
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 365
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_2

    .line 372
    :cond_c
    const/4 v9, 0x3

    if-ne v5, v9, :cond_3

    .line 373
    const-string v9, "NETWORKJOBSTATUS_TIMEOUT"

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, v7}, Lcom/cynosure/paymentsdk/purchase/DoTask;->TaskReDo(Lcom/cynosure/paymentsdk/vo/Task;)V

    .line 378
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v10, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "TaskStep_WR_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 380
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 381
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getColumn_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 382
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 383
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 384
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 385
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 386
    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 387
    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    goto/16 :goto_2

    .line 418
    .end local v3    # "oneStep":[Ljava/lang/String;
    .end local v5    # "status":I
    .restart local v8    # "tempDoCount":I
    :cond_d
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskDoCount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    iget-object v9, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v7}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskFinishFlag(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private functionJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)V
    .locals 4
    .param p1, "Script"    # [Ljava/lang/String;
    .param p2, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 845
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 846
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 848
    .local v1, "functionName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 852
    :try_start_1
    invoke-static {p1}, Lcom/cynosure/paymentsdk/SDKInterface;->pay3rd([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    .end local v1    # "functionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 854
    .restart local v1    # "functionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "functionName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 862
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/purchase/DoTask;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_instance:Lcom/cynosure/paymentsdk/purchase/DoTask;

    if-nez v0, :cond_1

    .line 99
    const-class v1, Lcom/cynosure/paymentsdk/purchase/DoTask;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_instance:Lcom/cynosure/paymentsdk/purchase/DoTask;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/cynosure/paymentsdk/purchase/DoTask;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/purchase/DoTask;-><init>()V

    sput-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_instance:Lcom/cynosure/paymentsdk/purchase/DoTask;

    .line 99
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_instance:Lcom/cynosure/paymentsdk/purchase/DoTask;

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private networkJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)I
    .locals 20
    .param p1, "Script"    # [Ljava/lang/String;
    .param p2, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 540
    :try_start_0
    move-object/from16 v0, p1

    array-length v14, v0

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    .line 541
    const/4 v14, 0x1

    aget-object v7, p1, v14

    .line 542
    .local v7, "method":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v13, p1, v14

    .line 543
    .local v13, "url":Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v3, p1, v14

    .line 544
    .local v3, "header":Ljava/lang/String;
    const/4 v14, 0x4

    aget-object v9, p1, v14

    .line 545
    .local v9, "parameter":Ljava/lang/String;
    const/4 v14, 0x5

    aget-object v5, p1, v14

    .line 546
    .local v5, "isNeedReturnValue":Ljava/lang/String;
    const/4 v14, 0x6

    aget-object v12, p1, v14

    .line 547
    .local v12, "rightReturnFlag":Ljava/lang/String;
    const/4 v14, 0x7

    aget-object v11, p1, v14

    .line 549
    .local v11, "returnValueParameter":Ljava/lang/String;
    const-string v14, "post"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 550
    const-string v14, "get"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 551
    const-string v7, "GET"

    .line 554
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 555
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 559
    const-string v14, "\\,"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "httpHeader":[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 567
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 567
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 571
    const-string v14, "<<--"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 572
    const-string v14, "-->>"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 575
    new-instance v1, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 576
    .local v1, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v14, 0x0

    invoke-virtual {v1, v13, v4, v14}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 580
    .local v10, "returnValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 582
    const-string v14, "1"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 583
    const-string v14, "\n"

    const-string v15, "\\n"

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 586
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 587
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 588
    const-string v14, "null"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 589
    const-string v14, "\\,"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 590
    .local v8, "oneReturnValue":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    array-length v14, v8

    if-lt v6, v14, :cond_4

    .line 640
    .end local v1    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "httpHeader":[Ljava/lang/String;
    .end local v5    # "isNeedReturnValue":Ljava/lang/String;
    .end local v6    # "k":I
    .end local v7    # "method":Ljava/lang/String;
    .end local v8    # "oneReturnValue":[Ljava/lang/String;
    .end local v9    # "parameter":Ljava/lang/String;
    .end local v10    # "returnValue":Ljava/lang/String;
    .end local v11    # "returnValueParameter":Ljava/lang/String;
    .end local v12    # "rightReturnFlag":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .line 645
    :goto_2
    return v14

    .line 562
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v5    # "isNeedReturnValue":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/String;
    .restart local v9    # "parameter":Ljava/lang/String;
    .restart local v11    # "returnValueParameter":Ljava/lang/String;
    .restart local v12    # "rightReturnFlag":Ljava/lang/String;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_3
    const/16 v14, 0x8

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Content-Type"

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string v15, "application/x-www-form-urlencoded"

    aput-object v15, v4, v14

    const/4 v14, 0x2

    const-string v15, "User-Agent"

    aput-object v15, v4, v14

    const/4 v14, 0x3

    const-string v15, "Dalvik/1.6.0 (Linux; U; Android 4.0.4; MI-ONE Plus Build/IMM76D)"

    aput-object v15, v4, v14

    const/4 v14, 0x4

    const-string v15, "Connection"

    aput-object v15, v4, v14

    const/4 v14, 0x5

    const-string v15, "Keep-Alive"

    aput-object v15, v4, v14

    const/4 v14, 0x6

    const-string v15, "Accept-Encoding"

    aput-object v15, v4, v14

    const/4 v14, 0x7

    const-string v15, "gzip"

    aput-object v15, v4, v14

    .restart local v4    # "httpHeader":[Ljava/lang/String;
    goto/16 :goto_0

    .line 592
    .restart local v1    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v6    # "k":I
    .restart local v8    # "oneReturnValue":[Ljava/lang/String;
    .restart local v10    # "returnValue":Ljava/lang/String;
    :cond_4
    aget-object v14, v8, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/cynosure/paymentsdk/purchase/DoTask;->saveReturnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 598
    .end local v6    # "k":I
    .end local v8    # "oneReturnValue":[Ljava/lang/String;
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v15, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "URL1_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 604
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v15, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "RV1_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 611
    :cond_7
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 617
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v15, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "URL2_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 624
    :cond_9
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 628
    .end local v1    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v10    # "returnValue":Ljava/lang/String;
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    new-instance v15, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v16, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_DOTASK:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "URL3_"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_b
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 642
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "httpHeader":[Ljava/lang/String;
    .end local v5    # "isNeedReturnValue":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/String;
    .end local v9    # "parameter":Ljava/lang/String;
    .end local v11    # "returnValueParameter":Ljava/lang/String;
    .end local v12    # "rightReturnFlag":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 644
    invoke-static {v2}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 645
    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method private replaceContentFromSharedPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "Text"    # Ljava/lang/String;

    .prologue
    .line 919
    :try_start_0
    const-string v6, "(?<=<<--)[^-]*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 920
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 921
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .line 940
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :goto_1
    return-object p1

    .line 922
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 924
    new-instance v4, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;-><init>(Landroid/content/Context;)V

    .line 925
    .local v4, "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    invoke-virtual {v4, v1}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->getSharedPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<<--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 930
    const-string v7, "-->>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 928
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 937
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private replaceParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceContentFromSharedPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 914
    return-object p1
.end method

.method private saveBlockInfo(Lcom/cynosure/paymentsdk/vo/Task;[Ljava/lang/String;)V
    .locals 8
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;
    .param p2, "Script"    # [Ljava/lang/String;

    .prologue
    .line 500
    :try_start_0
    array-length v5, p2

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 502
    new-instance v0, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/Block;-><init>()V

    .line 503
    .local v0, "block":Lcom/cynosure/paymentsdk/vo/Block;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockNumber(Ljava/lang/String;)V

    .line 504
    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockContent(Ljava/lang/String;)V

    .line 507
    const/16 v1, 0x18

    .line 508
    .local v1, "blockTimeout":I
    const/4 v5, 0x3

    aget-object v5, p2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    const/4 v5, 0x3

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 512
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 513
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 514
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockTimeout(Ljava/lang/String;)V

    .line 516
    const/4 v5, 0x4

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setIsNeedReply(Ljava/lang/String;)V

    .line 517
    const/4 v5, 0x5

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyInfo(Ljava/lang/String;)V

    .line 520
    const/16 v4, 0x18

    .line 521
    .local v4, "replyBlockTimeout":I
    const/4 v5, 0x6

    aget-object v5, p2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    const/4 v5, 0x6

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 524
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 525
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 526
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyTimeout(Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveBlockInfo(Lcom/cynosure/paymentsdk/vo/Block;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0    # "block":Lcom/cynosure/paymentsdk/vo/Block;
    .end local v1    # "blockTimeout":I
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "replyBlockTimeout":I
    :cond_2
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveReturnValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "ReturnValue"    # Ljava/lang/String;
    .param p2, "Rule"    # Ljava/lang/String;

    .prologue
    .line 868
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 869
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 871
    const-string v12, "\\~\\~\\~"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "allRule":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v1

    if-lt v4, v12, :cond_1

    .line 909
    .end local v1    # "allRule":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 874
    .restart local v1    # "allRule":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    aget-object v12, v1, v4

    const/4 v13, 0x0

    aget-object v14, v1, v4

    const-string v15, "<--"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, "key":Ljava/lang/String;
    aget-object v12, v1, v4

    aget-object v13, v1, v4

    const-string v14, "<--"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "checkWord":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 879
    .local v9, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 881
    .local v7, "matcher":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 882
    .local v5, "isNeedBase64Decode":Z
    const-string v12, "base64"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 883
    const/4 v5, 0x1

    .line 885
    :cond_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 886
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 889
    .local v8, "parameterValue":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 890
    const/4 v12, 0x0

    invoke-static {v8, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 891
    .local v11, "tempB":[B
    new-instance v8, Ljava/lang/String;

    .end local v8    # "parameterValue":Ljava/lang/String;
    invoke-direct {v8, v11}, Ljava/lang/String;-><init>([B)V

    .line 894
    .end local v11    # "tempB":[B
    .restart local v8    # "parameterValue":Ljava/lang/String;
    :cond_3
    new-instance v10, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;-><init>(Landroid/content/Context;)V

    .line 895
    .local v10, "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    invoke-virtual {v10, v6, v8}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v8    # "parameterValue":Ljava/lang/String;
    .end local v10    # "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    .end local v1    # "allRule":[Ljava/lang/String;
    .end local v2    # "checkWord":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isNeedBase64Decode":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .line 907
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sleepJob([Ljava/lang/String;)V
    .locals 3
    .param p1, "Script"    # [Ljava/lang/String;

    .prologue
    .line 747
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 748
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private smsJob([Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "Script"    # [Ljava/lang/String;
    .param p2, "extdate"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 816
    array-length v5, p1

    if-ne v5, v3, :cond_2

    .line 817
    const/4 v5, 0x1

    aget-object v1, p1, v5

    .line 818
    .local v1, "sendNumber":Ljava/lang/String;
    aget-object v0, p1, v4

    .line 821
    .local v0, "sendContent":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-direct {p0, v0}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendContent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 825
    const-string v4, "<<--"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 826
    const-string v4, "-->>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 827
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    new-instance v2, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 829
    .local v2, "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    invoke-virtual {v2, v1, v0, p2}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    .end local v2    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    :cond_0
    const/4 v3, 0x0

    .end local v0    # "sendContent":Ljava/lang/String;
    .end local v1    # "sendNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 837
    goto :goto_0
.end method

.method private superNetworkJob([Ljava/lang/String;Lcom/cynosure/paymentsdk/vo/Task;)I
    .locals 20
    .param p1, "Script"    # [Ljava/lang/String;
    .param p2, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 652
    :try_start_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 653
    const/16 v18, 0x1

    aget-object v10, p1, v18

    .line 654
    .local v10, "method":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v17, p1, v18

    .line 655
    .local v17, "url":Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v4, p1, v18

    .line 656
    .local v4, "header":Ljava/lang/String;
    const/16 v18, 0x4

    aget-object v12, p1, v18

    .line 657
    .local v12, "parameter":Ljava/lang/String;
    const/16 v18, 0x5

    aget-object v7, p1, v18

    .line 658
    .local v7, "isNeedReturnValue":Ljava/lang/String;
    const/16 v18, 0x6

    aget-object v13, p1, v18

    .line 659
    .local v13, "retryCount":Ljava/lang/String;
    const/16 v18, 0x7

    aget-object v16, p1, v18

    .line 660
    .local v16, "rightReturnFlag":Ljava/lang/String;
    const/16 v18, 0x8

    aget-object v15, p1, v18

    .line 662
    .local v15, "returnValueParameter":Ljava/lang/String;
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 663
    const-string v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 664
    const-string v10, "GET"

    .line 667
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 668
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 672
    const-string v18, "\\,"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "httpHeader":[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/cynosure/paymentsdk/purchase/DoTask;->replaceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 680
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 680
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 683
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 684
    invoke-static {v13}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 685
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 686
    .local v9, "leftRetryCount":I
    const/4 v6, 0x0

    .line 687
    .local v6, "isCanBreak":Z
    :goto_1
    if-gtz v9, :cond_4

    .line 737
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "httpHeader":[Ljava/lang/String;
    .end local v6    # "isCanBreak":Z
    .end local v7    # "isNeedReturnValue":Ljava/lang/String;
    .end local v9    # "leftRetryCount":I
    .end local v10    # "method":Ljava/lang/String;
    .end local v12    # "parameter":Ljava/lang/String;
    .end local v13    # "retryCount":Ljava/lang/String;
    .end local v15    # "returnValueParameter":Ljava/lang/String;
    .end local v16    # "rightReturnFlag":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    const/16 v18, 0x0

    .line 741
    :goto_3
    return v18

    .line 675
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v7    # "isNeedReturnValue":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v12    # "parameter":Ljava/lang/String;
    .restart local v13    # "retryCount":Ljava/lang/String;
    .restart local v15    # "returnValueParameter":Ljava/lang/String;
    .restart local v16    # "rightReturnFlag":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Content-Type"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, "application/x-www-form-urlencoded"

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const-string v19, "User-Agent"

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const-string v19, "Dalvik/1.6.0 (Linux; U; Android 4.0.4; MI-ONE Plus Build/IMM76D)"

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const-string v19, "Connection"

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const-string v19, "Keep-Alive"

    aput-object v19, v5, v18

    const/16 v18, 0x6

    const-string v19, "Accept-Encoding"

    aput-object v19, v5, v18

    const/16 v18, 0x7

    const-string v19, "gzip"

    aput-object v19, v5, v18

    .restart local v5    # "httpHeader":[Ljava/lang/String;
    goto :goto_0

    .line 689
    .restart local v6    # "isCanBreak":Z
    .restart local v9    # "leftRetryCount":I
    :cond_4
    new-instance v2, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 690
    .local v2, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v5, v1}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 691
    .local v14, "returnValue":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 693
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 695
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 696
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 697
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 698
    const-string v18, "\\,"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 699
    .local v11, "oneReturnValue":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_6

    .line 711
    .end local v8    # "k":I
    .end local v11    # "oneReturnValue":[Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_7

    .line 712
    const/4 v9, 0x0

    .line 713
    goto/16 :goto_2

    .line 701
    .restart local v8    # "k":I
    .restart local v11    # "oneReturnValue":[Ljava/lang/String;
    :cond_6
    aget-object v18, v11, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/cynosure/paymentsdk/purchase/DoTask;->saveReturnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v6, 0x1

    .line 699
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 717
    .end local v8    # "k":I
    .end local v11    # "oneReturnValue":[Ljava/lang/String;
    :cond_7
    rem-int/lit8 v18, v9, 0x5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v18, :cond_8

    .line 719
    const-wide/16 v18, 0x3e8

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    :cond_8
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_9

    .line 728
    const/16 v18, 0x3

    goto/16 :goto_3

    .line 721
    :catch_0
    move-exception v3

    .line 722
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 739
    .end local v2    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "httpHeader":[Ljava/lang/String;
    .end local v6    # "isCanBreak":Z
    .end local v7    # "isNeedReturnValue":Ljava/lang/String;
    .end local v9    # "leftRetryCount":I
    .end local v10    # "method":Ljava/lang/String;
    .end local v12    # "parameter":Ljava/lang/String;
    .end local v13    # "retryCount":Ljava/lang/String;
    .end local v14    # "returnValue":Ljava/lang/String;
    .end local v15    # "returnValueParameter":Ljava/lang/String;
    .end local v16    # "rightReturnFlag":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 740
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 741
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 730
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "httpHeader":[Ljava/lang/String;
    .restart local v6    # "isCanBreak":Z
    .restart local v7    # "isNeedReturnValue":Ljava/lang/String;
    .restart local v9    # "leftRetryCount":I
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v12    # "parameter":Ljava/lang/String;
    .restart local v13    # "retryCount":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValueParameter":Ljava/lang/String;
    .restart local v16    # "rightReturnFlag":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1
.end method

.method private uploadState(Lcom/cynosure/paymentsdk/vo/Task;)V
    .locals 17
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    .line 462
    if-eqz p1, :cond_1

    .line 464
    :try_start_0
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 465
    .local v6, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "sdkVC":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, "cpID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    sget-object v15, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, "serverIP":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 474
    sget-object v12, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 476
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    sget-object v15, Lcom/cynosure/paymentsdk/helper/Constant;->URL_UPLOADSTATE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 476
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 480
    .local v13, "url":Ljava/lang/String;
    new-instance v2, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v14, 0x80

    const/16 v15, 0x8

    invoke-direct {v2, v14, v15}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 482
    .local v2, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x2

    aput-object v11, v14, v15

    const/4 v15, 0x3

    aput-object v8, v14, v15

    const/4 v15, 0x4

    aput-object v9, v14, v15

    const/4 v15, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-virtual/range {p1 .. p1}, Lcom/cynosure/paymentsdk/vo/Task;->getExdata()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v2, v14}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v5

    .line 483
    .local v5, "data":[B
    new-instance v3, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 484
    .local v3, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v14, v5, v15}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "result":Ljava/lang/String;
    const-string v14, "100"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v3    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v4    # "cpID":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "sdkVC":Ljava/lang/String;
    .end local v12    # "serverIP":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v7

    .line 493
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private waitJob(Lcom/cynosure/paymentsdk/vo/Task;ILjava/lang/String;)V
    .locals 9
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;
    .param p2, "StepNumber"    # I
    .param p3, "waitFor"    # Ljava/lang/String;

    .prologue
    .line 764
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 766
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 769
    .local v2, "tempTryCount":I
    sget-object v3, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_SMS:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    const-string v3, "WAITFOR_SMS"

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 771
    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 772
    const-string v3, "WAITFOR_SMS * 10"

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 773
    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 774
    const-string v3, "WAITFOR_SMS * 20"

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 775
    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 776
    const-string v3, "WAITFOR_SMS * 30"

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 778
    add-int/lit8 p2, p2, 0x1

    .line 779
    const/4 v2, 0x0

    .line 781
    iget-object v3, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskStep(Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "tempTryCount":I
    :goto_0
    return-void

    .line 786
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "tempTryCount":I
    :cond_0
    sget-object v3, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_NETWORKWRONGRETURNVALUE:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    const/16 v3, 0xd

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 790
    :cond_1
    sget-object v3, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_ERROR:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 791
    const/16 v3, 0xd

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 794
    :cond_2
    sget-object v3, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_ONLINECHECKERROR:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 795
    const/16 v3, 0xd

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 798
    :cond_3
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 799
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getDoRecount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 803
    :cond_4
    sget-object v3, Lcom/cynosure/paymentsdk/purchase/DoTask;->WAITFOR_SMS:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 804
    add-int/lit8 v2, v2, 0x1

    .line 807
    :cond_5
    iget-object v3, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_dbHelper:Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateTaskDoTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "tempTryCount":I
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDoTaskRunning()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDoTask()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/purchase/DoTask;->isDoTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    invoke-direct {v0, p0}, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;-><init>(Lcom/cynosure/paymentsdk/purchase/DoTask;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    .line 118
    iget-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_chargeThread:Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->start()V

    .line 120
    :cond_0
    return-void
.end method

.method public startDoTask(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cynosure/paymentsdk/purchase/DoTask;->_mHandler:Landroid/os/Handler;

    .line 124
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/purchase/DoTask;->startDoTask()V

    .line 125
    return-void
.end method
