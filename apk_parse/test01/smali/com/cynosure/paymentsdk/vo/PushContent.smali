.class public Lcom/cynosure/paymentsdk/vo/PushContent;
.super Ljava/lang/Object;
.source "PushContent.java"


# instance fields
.field private pushContentType:Ljava/lang/String;

.field private pushContent_ID:Ljava/lang/String;

.field private script:Ljava/lang/String;


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
    .param p1, "pushContentType"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->pushContentType:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->script:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getPushContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->pushContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContent_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->pushContent_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->script:Ljava/lang/String;

    return-object v0
.end method

.method public setPushContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushContentType"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->pushContentType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPushContent_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushContent_ID"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->pushContent_ID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/PushContent;->script:Ljava/lang/String;

    .line 35
    return-void
.end method
