.class Lcom/duoku/platform/single/suspend/DKBannerService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKBannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKBannerService;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/suspend/DKBannerService;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/suspend/DKBannerService;Lcom/duoku/platform/single/suspend/DKBannerService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKBannerService$a;-><init>(Lcom/duoku/platform/single/suspend/DKBannerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v4}, Lcom/duoku/platform/single/suspend/DKBannerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    const-string v2, "isBannerViewShow"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/suspend/DKBannerService;->a(Lcom/duoku/platform/single/suspend/DKBannerService;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKBannerService;->a(Lcom/duoku/platform/single/suspend/DKBannerService;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v1, v2}, Lcom/duoku/platform/single/suspend/DKBannerService;->a(Lcom/duoku/platform/single/suspend/DKBannerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKBannerService;->b(Lcom/duoku/platform/single/suspend/DKBannerService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/C;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKBannerService;->c(Lcom/duoku/platform/single/suspend/DKBannerService;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKBannerService;->d(Lcom/duoku/platform/single/suspend/DKBannerService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKBannerService;->c(Lcom/duoku/platform/single/suspend/DKBannerService;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->g()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKBannerService;->c(Lcom/duoku/platform/single/suspend/DKBannerService;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKBannerService;->c(Lcom/duoku/platform/single/suspend/DKBannerService;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->f()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKBannerService$a;->a:Lcom/duoku/platform/single/suspend/DKBannerService;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKBannerService;->c(Lcom/duoku/platform/single/suspend/DKBannerService;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->g()V

    goto :goto_0
.end method
