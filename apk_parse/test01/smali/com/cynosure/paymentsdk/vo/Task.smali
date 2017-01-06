.class public Lcom/cynosure/paymentsdk/vo/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field private chargeMode:Ljava/lang/String;

.field private chargePointSMS_ID:Ljava/lang/String;

.field private column_ID:Ljava/lang/String;

.field private doCount:Ljava/lang/String;

.field private doRecount:Ljava/lang/String;

.field private exdata:Ljava/lang/String;

.field private getRecount:Ljava/lang/String;

.field private isFinish:Ljava/lang/String;

.field private onceCode:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private step:Ljava/lang/String;

.field private taskType:Ljava/lang/String;

.field private task_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->taskType:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->exdata:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->getRecount:Ljava/lang/String;

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doRecount:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargeMode:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doCount:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->script:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->onceCode:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->step:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->isFinish:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tasktype"    # Ljava/lang/String;
    .param p2, "column_id"    # Ljava/lang/String;
    .param p3, "exdata"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->taskType:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->exdata:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->getRecount:Ljava/lang/String;

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doRecount:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargeMode:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doCount:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->script:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->onceCode:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->step:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->isFinish:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->taskType:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/cynosure/paymentsdk/vo/Task;->column_ID:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/cynosure/paymentsdk/vo/Task;->exdata:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getChargeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getChargePointSMS_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargePointSMS_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->column_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getDoCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDoRecount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->doRecount:Ljava/lang/String;

    return-object v0
.end method

.method public getExdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->exdata:Ljava/lang/String;

    return-object v0
.end method

.method public getGetRecount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->getRecount:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFinish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->isFinish:Ljava/lang/String;

    return-object v0
.end method

.method public getOnceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->onceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method public getTask_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Task;->task_ID:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeMode"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargeMode:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setChargePointSMS_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargePointSMS_ID"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->chargePointSMS_ID:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setColumn_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "column_ID"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->column_ID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDoCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "doCount"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->doCount:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDoRecount(Ljava/lang/String;)V
    .locals 0
    .param p1, "doRecount"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->doRecount:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setExdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "exdata"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->exdata:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setGetRecount(Ljava/lang/String;)V
    .locals 0
    .param p1, "getRecount"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->getRecount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setIsFinish(Ljava/lang/String;)V
    .locals 0
    .param p1, "isFinish"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->isFinish:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setOnceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "onceCode"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->onceCode:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->script:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->step:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskType"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->taskType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTask_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "task_ID"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Task;->task_ID:Ljava/lang/String;

    .line 33
    return-void
.end method
