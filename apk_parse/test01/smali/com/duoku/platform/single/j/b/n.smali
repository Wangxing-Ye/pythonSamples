.class Lcom/duoku/platform/single/j/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->w(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->x(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->y(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strBindVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strCreditVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strDebitVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/n;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->e(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    return-void
.end method
