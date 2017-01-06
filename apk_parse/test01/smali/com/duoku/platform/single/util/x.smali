.class Lcom/duoku/platform/single/util/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_boutique_show"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {v4}, Lcom/duoku/platform/single/util/j;->b(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/j;->d(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    if-eq v0, v1, :cond_3

    invoke-static {v4}, Lcom/duoku/platform/single/util/j;->b(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/j;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/util/j;->a()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/util/x;->a:Landroid/app/Activity;

    const-string v2, "dk_payment_error_2003"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
