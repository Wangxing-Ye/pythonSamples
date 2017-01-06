.class Lcom/duoku/platform/single/j/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/f;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/f;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    iput-object p2, p0, Lcom/duoku/platform/single/j/c/h;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->b(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->b(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->a(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v1}, Lcom/duoku/platform/single/j/c/f;->c(Lcom/duoku/platform/single/j/c/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/f;->c(Lcom/duoku/platform/single/j/c/f;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "other_pay_icon_plus"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v4}, Lcom/duoku/platform/single/j/c/f;->d(Lcom/duoku/platform/single/j/c/f;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/h;->b:Landroid/view/View$OnClickListener;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/util/K;->a(Landroid/content/Context;ILjava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Lcom/duoku/platform/single/j/c/f;Landroid/widget/PopupWindow;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->a(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/h;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->b(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
