.class Lcom/duoku/platform/single/j/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->z(Lcom/duoku/platform/single/j/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->x(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->w(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_payment_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_tip_progress_pay_info"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->A(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strBindVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strCreditVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/o;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strDebitVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
