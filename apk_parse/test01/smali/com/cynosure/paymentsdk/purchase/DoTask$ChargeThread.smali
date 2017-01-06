.class Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;
.super Ljava/lang/Thread;
.source "DoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/purchase/DoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargeThread"
.end annotation


# instance fields
.field private _isRun:Z

.field private _threadTimeOut:Ljava/lang/String;

.field final synthetic this$0:Lcom/cynosure/paymentsdk/purchase/DoTask;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/purchase/DoTask;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->this$0:Lcom/cynosure/paymentsdk/purchase/DoTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_isRun:Z

    .line 131
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_threadTimeOut:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public isRun()Z
    .locals 5

    .prologue
    .line 138
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "currTime":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_threadTimeOut:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_threadTimeOut:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_isRun:Z

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_isRun:Z

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 154
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 155
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_threadTimeOut:Ljava/lang/String;

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->this$0:Lcom/cynosure/paymentsdk/purchase/DoTask;

    # invokes: Lcom/cynosure/paymentsdk/purchase/DoTask;->doTask()V
    invoke-static {v2}, Lcom/cynosure/paymentsdk/purchase/DoTask;->access$0(Lcom/cynosure/paymentsdk/purchase/DoTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const-string v2, "0"

    iput-object v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_threadTimeOut:Ljava/lang/String;

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cynosure/paymentsdk/purchase/DoTask$ChargeThread;->_isRun:Z

    .line 169
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
