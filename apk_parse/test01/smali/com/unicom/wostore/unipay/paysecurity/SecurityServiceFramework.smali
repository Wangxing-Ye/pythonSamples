.class public final Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

.field private useSelfSdk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SecurityService"

    invoke-direct {p0, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    return-void
.end method

.method private stop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->startForeground(ILandroid/app/Notification;)V

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "com.unicom.dcLoader.Utils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getsdkselect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/dcLoader/SubUtils;->getLocalService(Landroid/content/Context;)Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onCreate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "No Local Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "com.wostore.paysecurity.LocalSecurityService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "onCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "[unipay] stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "[unipay] No Local Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "Service onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onDestroy(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "com.wostore.paysecurity.LocalSecurityService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "onDestroy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onStartCommand(Landroid/content/Context;Landroid/content/Intent;II)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    const-string v0, "com.wostore.paysecurity.LocalSecurityService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "onStartCommand"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
