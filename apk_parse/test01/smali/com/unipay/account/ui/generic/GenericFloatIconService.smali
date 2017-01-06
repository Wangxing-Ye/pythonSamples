.class public Lcom/unipay/account/ui/generic/GenericFloatIconService;
.super Landroid/app/Service;


# instance fields
.field private mLocalService:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->getPlatform()Lcom/unipay/account/UnipayAccountPlatform;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->callLocalServiceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private loadLocalService()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "-S ls(%s)"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->getPlatform()Lcom/unipay/account/UnipayAccountPlatform;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "invalid platform!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0, v1}, Lcom/unipay/account/UnipayAccountPlatform;->loadLocalService(Landroid/app/Service;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    const-string v2, "loadLocalService returns (%s)"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v0, "failed!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onConfigurationChanged_"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/res/Configuration;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "-S"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->loadLocalService()Z

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "floaticonservice"

    const-string v1, "NOT here, bye"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WML_TEST"

    const-string v1, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onLowMemory"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onRebind"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "-S"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->loadLocalService()Z

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onStart"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onStartCommand"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unipay/account/ui/generic/GenericFloatIconService;->mLocalService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "onUnbind"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/unipay/account/ui/generic/GenericFloatIconService;->callLocalMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
