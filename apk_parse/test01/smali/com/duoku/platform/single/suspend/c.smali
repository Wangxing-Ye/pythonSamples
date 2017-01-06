.class Lcom/duoku/platform/single/suspend/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/c;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/c;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/c;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/c;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
