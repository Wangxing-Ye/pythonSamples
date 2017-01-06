.class public Lcom/duoku/platform/single/k/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoku/platform/single/k/b;

.field private static b:Landroid/app/Activity;

.field private static c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

.field private static d:Z


# instance fields
.field private e:I

.field private f:Lcom/duoku/platform/single/util/H;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/duoku/platform/single/k/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    new-instance v0, Lcom/duoku/platform/single/k/c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/k/c;-><init>(Lcom/duoku/platform/single/k/b;)V

    iput-object v0, p0, Lcom/duoku/platform/single/k/b;->g:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)Lcom/duoku/platform/single/k/b;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/b;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    sput-object p0, Lcom/duoku/platform/single/k/b;->b:Landroid/app/Activity;

    sput-object p1, Lcom/duoku/platform/single/k/b;->c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    sput-boolean p2, Lcom/duoku/platform/single/k/b;->d:Z

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/b;->a:Lcom/duoku/platform/single/k/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoku/platform/single/k/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/b;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/b;->a:Lcom/duoku/platform/single/k/b;

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/k/b;->a:Lcom/duoku/platform/single/k/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->j()Lcom/duoku/platform/single/item/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->j()Lcom/duoku/platform/single/item/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/duoku/platform/single/view/h;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->j()Lcom/duoku/platform/single/item/f;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/duoku/platform/single/view/h;-><init>(Landroid/content/Context;Lcom/duoku/platform/single/item/f;Z)V

    invoke-static {}, Lcom/duoku/platform/single/k/g;->a()Lcom/duoku/platform/single/k/g;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "Init : success!!!"

    invoke-interface {p3, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/duoku/platform/single/view/c;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/duoku/platform/single/view/c;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v0, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {}, Lcom/duoku/platform/single/k/g;->a()Lcom/duoku/platform/single/k/g;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/k/g;->a()Lcom/duoku/platform/single/k/g;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/duoku/platform/single/k/b;->b:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Lcom/duoku/platform/single/util/g;->f:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    const-string v1, "download_num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_0
    const-string v1, "install_num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/util/g;->f:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v3, "download_num"

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v2, "install_num"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/k/b;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/duoku/platform/single/view/c;

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/c;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/duoku/platform/single/view/c;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    sput-object v0, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "Pause : success!!!"

    invoke-interface {p3, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->i()Lcom/duoku/platform/single/item/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/k/g;->a()Lcom/duoku/platform/single/k/g;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/duoku/platform/single/k/g;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/e;Z)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    const-string v1, "showAdsInit"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    const-string v1, "showAdsInit show suspension"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    sput-object p1, Lcom/duoku/platform/single/util/j;->d:Lcom/duoku/platform/single/item/e;

    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/k/b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/duoku/platform/single/suspend/k;->a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;)V

    :cond_1
    invoke-direct {p0}, Lcom/duoku/platform/single/k/b;->d()V

    sget-object v0, Lcom/duoku/platform/single/k/b;->b:Landroid/app/Activity;

    sget-object v1, Lcom/duoku/platform/single/k/b;->c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/duoku/platform/single/k/b;->b(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V

    invoke-direct {p0}, Lcom/duoku/platform/single/k/b;->e()V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    const-string v1, "gameInit"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->g()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/duoku/platform/single/k/b;->d:Z

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/k/b;->a(Lcom/duoku/platform/single/item/e;Z)V

    invoke-static {}, Lcom/duoku/platform/single/util/f;->a()Lcom/duoku/platform/single/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/f;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/k/b;->c()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    const-string v2, "gameInit getLocationFileData"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/duoku/platform/single/k/b;->d:Z

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/k/b;->a(Lcom/duoku/platform/single/item/e;Z)V

    invoke-static {}, Lcom/duoku/platform/single/util/f;->a()Lcom/duoku/platform/single/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/f;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/k/b;->f:Lcom/duoku/platform/single/util/H;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gameInit getLocationFileData checkCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/single/k/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/duoku/platform/single/k/b;->e:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/util/f;->a()Lcom/duoku/platform/single/util/f;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/k/b;->b:Landroid/app/Activity;

    sget-object v2, Lcom/duoku/platform/single/k/b;->c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    sget-boolean v3, Lcom/duoku/platform/single/k/b;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/util/f;->a(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;Z)V

    iget v0, p0, Lcom/duoku/platform/single/k/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/k/b;->e:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/util/f;->a()Lcom/duoku/platform/single/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/f;->b()V

    goto :goto_0
.end method

.method public c()Lcom/duoku/platform/single/item/e;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v2, Lcom/duoku/platform/single/util/g;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/b;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
