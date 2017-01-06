.class Lcom/duoku/platform/single/j/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/z;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/z;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/z;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/z;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_payment_edittext_selector"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v3}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "dk_tip_progress_pay_info"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/z;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v2, Lcom/duoku/platform/single/j/b/A;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/j/b/A;-><init>(Lcom/duoku/platform/single/j/b/z;)V

    invoke-static {v1, v0, v2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Lcom/duoku/platform/single/h/h;)V

    :cond_0
    return-void
.end method
