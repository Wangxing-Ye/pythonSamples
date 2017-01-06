.class public Lcom/cynosure/paymentsdk/CoreContext;
.super Ljava/lang/Object;
.source "CoreContext.java"


# static fields
.field private static volatile _instance:Lcom/cynosure/paymentsdk/CoreContext;


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/CoreContext;->_instance:Lcom/cynosure/paymentsdk/CoreContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cynosure/paymentsdk/CoreContext;
    .locals 3

    .prologue
    .line 39
    const-class v1, Lcom/cynosure/paymentsdk/CoreContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/CoreContext;->_instance:Lcom/cynosure/paymentsdk/CoreContext;

    if-nez v0, :cond_1

    .line 40
    const-class v2, Lcom/cynosure/paymentsdk/CoreContext;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    sget-object v0, Lcom/cynosure/paymentsdk/CoreContext;->_instance:Lcom/cynosure/paymentsdk/CoreContext;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/cynosure/paymentsdk/CoreContext;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/CoreContext;-><init>()V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreContext;->_instance:Lcom/cynosure/paymentsdk/CoreContext;

    .line 40
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_1
    :try_start_2
    sget-object v0, Lcom/cynosure/paymentsdk/CoreContext;->_instance:Lcom/cynosure/paymentsdk/CoreContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cynosure/paymentsdk/CoreContext;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cynosure/paymentsdk/CoreContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity ok:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/cynosure/paymentsdk/CoreContext;->activity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context ok:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/cynosure/paymentsdk/CoreContext;->context:Landroid/content/Context;

    .line 21
    return-void
.end method
