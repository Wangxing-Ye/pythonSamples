.class public Lcom/cynosure/paymentsdk/umengSDKInterface;
.super Ljava/lang/Object;
.source "umengSDKInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/analytics/game/UMGameAgent;->setDebugMode(Z)V

    .line 14
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onPause(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onResume(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static pay(Ljava/lang/String;)V
    .locals 7
    .param p0, "column_id"    # Ljava/lang/String;

    .prologue
    .line 40
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/umeng/analytics/game/UMGameAgent;->pay(DLjava/lang/String;IDI)V

    .line 41
    return-void
.end method

.method public static reportError(Ljava/lang/String;)V
    .locals 1
    .param p0, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "reportError"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/umeng/analytics/game/UMGameAgent;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "reportError"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/umeng/analytics/game/UMGameAgent;->reportError(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/umeng/analytics/game/UMGameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static sendPayEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "column_id"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "column_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "daojugoumai"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/game/UMGameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    return-void
.end method
