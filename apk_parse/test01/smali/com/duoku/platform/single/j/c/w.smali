.class Lcom/duoku/platform/single/j/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/t;

.field private final synthetic b:Landroid/view/View$OnClickListener;

.field private final synthetic c:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/t;Landroid/view/View$OnClickListener;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    iput-object p2, p0, Lcom/duoku/platform/single/j/c/w;->b:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/duoku/platform/single/j/c/w;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->f(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->f(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v1}, Lcom/duoku/platform/single/j/c/t;->g(Lcom/duoku/platform/single/j/c/t;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/t;->g(Lcom/duoku/platform/single/j/c/t;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "other_pay_icon_plus"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v4}, Lcom/duoku/platform/single/j/c/t;->h(Lcom/duoku/platform/single/j/c/t;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/w;->b:Landroid/view/View$OnClickListener;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/util/K;->a(Landroid/content/Context;ILjava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Lcom/duoku/platform/single/j/c/t;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->f(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/PopupWindow;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/j/c/x;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/w;->c:Landroid/widget/Button;

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/single/j/c/x;-><init>(Lcom/duoku/platform/single/j/c/w;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/w;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->f(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
