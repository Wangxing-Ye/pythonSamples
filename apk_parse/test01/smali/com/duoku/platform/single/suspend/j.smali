.class public Lcom/duoku/platform/single/suspend/j;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/content/Intent; = null

.field private static d:Landroid/content/Intent; = null

.field private static e:Landroid/content/Intent; = null

.field private static f:Lcom/duoku/platform/single/suspend/j; = null

.field private static final g:Ljava/lang/String; = "DKServiceManager"

.field private static final h:Ljava/lang/String; = "com.duoku.platform.single.suspend.DKSuspensionService"

.field private static final i:Ljava/lang/String; = "com.duoku.platform.single.suspend.DKInitService"

.field private static final j:Ljava/lang/String; = "com.duoku.platform.single.suspend.DKBannerService"


# instance fields
.field private a:Z

.field private b:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/j;->a:Z

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/suspend/j;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->f:Lcom/duoku/platform/single/suspend/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/suspend/j;

    invoke-direct {v0}, Lcom/duoku/platform/single/suspend/j;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->f:Lcom/duoku/platform/single/suspend/j;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->f:Lcom/duoku/platform/single/suspend/j;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/item/b;Z)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    const-string v1, "corss_recomend_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    const-string v1, "screen_orientation"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/single/item/e;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/suspend/DKSuspensionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    const-string v1, "corss_recomend_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/duoku/platform/single/item/b;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "isShow"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBanShowFinish"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/duoku/platform/single/suspend/j;->a(Landroid/content/Context;Lcom/duoku/platform/single/item/b;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/duoku/platform/single/item/e;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/single/suspend/j;->a(Landroid/content/Context;Lcom/duoku/platform/single/item/e;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    const-string v0, "isShow"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBanShowFinish"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->e:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/suspend/DKInitService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/j;->e:Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/j;->e:Landroid/content/Intent;

    return-object v0
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/j;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/j;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public h(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/j;->b:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/j;->b:Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    const-string v3, "com.duoku.platform.single.suspend.DKSuspensionService"

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "com.duoku.platform.single.suspend.DKInitService"

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "com.duoku.platform.single.suspend.DKBannerService"

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method
