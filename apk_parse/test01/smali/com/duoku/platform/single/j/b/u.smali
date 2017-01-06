.class Lcom/duoku/platform/single/j/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v2, "\u60a8\u6700\u591a\u80fd\u7ed1\u5b9a3\u5f20\u5361"

    const-string v6, "DKQuickpayView.layoutOtherCreditOnClickListener"

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->e(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/j/b/I;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->f(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->f(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/u;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->g(Lcom/duoku/platform/single/j/b/a;)V

    goto :goto_0
.end method
