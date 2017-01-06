.class public Lcom/sns/game/activity/CoreApplication;
.super Landroid/app/Application;
.source "CoreApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    invoke-virtual {p0}, Lcom/sns/game/activity/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/FrontiaApplication;->initFrontiaApplication(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/sns/game/activity/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/SDKInterface;->InitSDKContext(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    new-instance v1, Lcom/sns/game/activity/CoreApplication$1;

    invoke-direct {v1, p0}, Lcom/sns/game/activity/CoreApplication$1;-><init>(Lcom/sns/game/activity/CoreApplication;)V

    invoke-virtual {v0, p0, v1}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    .line 28
    return-void
.end method
