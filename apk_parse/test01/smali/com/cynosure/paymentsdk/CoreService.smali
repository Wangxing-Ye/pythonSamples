.class public Lcom/cynosure/paymentsdk/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cynosure/paymentsdk/CoreService$CoreTimer;
    }
.end annotation


# instance fields
.field private _coreReceiver:Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;

.field private _coreTime:Lcom/cynosure/paymentsdk/CoreService$CoreTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    const-string v2, "CoreService onCreate"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cynosure/paymentsdk/CoreContext;->setContext(Landroid/content/Context;)V

    .line 36
    :cond_0
    new-instance v2, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;-><init>()V

    iput-object v2, p0, Lcom/cynosure/paymentsdk/CoreService;->_coreReceiver:Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;

    .line 37
    new-instance v2, Lcom/cynosure/paymentsdk/CoreService$CoreTimer;

    invoke-direct {v2, p0}, Lcom/cynosure/paymentsdk/CoreService$CoreTimer;-><init>(Lcom/cynosure/paymentsdk/CoreService;)V

    iput-object v2, p0, Lcom/cynosure/paymentsdk/CoreService;->_coreTime:Lcom/cynosure/paymentsdk/CoreService$CoreTimer;

    .line 40
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_RECEIVE_SMS:Ljava/lang/String;

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    sget-object v2, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_RECEIVED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    :cond_1
    sget-object v2, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 47
    iget-object v2, p0, Lcom/cynosure/paymentsdk/CoreService;->_coreReceiver:Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/cynosure/paymentsdk/CoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/cynosure/paymentsdk/CoreService;->_coreTime:Lcom/cynosure/paymentsdk/CoreService$CoreTimer;

    const-string v4, "CoreTimeThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    const-string v1, "CoreService onDestroy"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/CoreService;->_coreReceiver:Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
