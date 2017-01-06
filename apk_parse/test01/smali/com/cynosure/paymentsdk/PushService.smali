.class public Lcom/cynosure/paymentsdk/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# instance fields
.field private _pushReceiver:Lcom/cynosure/paymentsdk/PushBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 23
    new-instance v1, Lcom/cynosure/paymentsdk/PushBroadcastReceiver;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/PushBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/cynosure/paymentsdk/PushService;->_pushReceiver:Lcom/cynosure/paymentsdk/PushBroadcastReceiver;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_RECEIVED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 31
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/PushService;->_pushReceiver:Lcom/cynosure/paymentsdk/PushBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
