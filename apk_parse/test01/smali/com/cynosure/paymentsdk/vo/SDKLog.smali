.class public Lcom/cynosure/paymentsdk/vo/SDKLog;
.super Ljava/lang/Object;
.source "SDKLog.java"


# instance fields
.field private logContent:Ljava/lang/String;

.field private logID:Ljava/lang/String;

.field private logType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logType:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logContent:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getLogContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLogID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logID:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public setLogContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "logContent"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logContent:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLogID(Ljava/lang/String;)V
    .locals 0
    .param p1, "logID"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logID:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .locals 0
    .param p1, "logType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SDKLog;->logType:Ljava/lang/String;

    .line 31
    return-void
.end method
