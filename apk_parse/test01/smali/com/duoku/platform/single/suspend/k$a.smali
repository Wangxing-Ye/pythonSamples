.class Lcom/duoku/platform/single/suspend/k$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/k;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/suspend/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/k$a;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/suspend/k;Lcom/duoku/platform/single/suspend/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/k$a;-><init>(Lcom/duoku/platform/single/suspend/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$a;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->c(Lcom/duoku/platform/single/suspend/k;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isView"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$a;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->d(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$a;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->d(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->f()V

    goto :goto_0
.end method
