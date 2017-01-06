.class public Lcom/cynosure/paymentsdk/layout/SDKDialogManager;
.super Ljava/lang/Object;
.source "SDKDialogManager.java"


# static fields
.field private static volatile _instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;


# instance fields
.field private _dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cynosure/paymentsdk/layout/SDKDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;-><init>()V

    sput-object v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_instance:Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDialog(Lcom/cynosure/paymentsdk/layout/SDKDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/cynosure/paymentsdk/layout/SDKDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addDialog"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public cleanDialog()V
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    return-void

    .line 34
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cynosure/paymentsdk/layout/SDKDialog;

    .line 35
    .local v0, "tempDiaglog":Lcom/cynosure/paymentsdk/layout/SDKDialog;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tempDiaglog:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 36
    if-nez v0, :cond_1

    .line 37
    const-string v2, "clearDialog null"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    const-string v2, "clearDialog no showing"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->_dialogList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->dialogResize()V

    goto :goto_0
.end method
