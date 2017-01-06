.class Lcom/duoku/platform/single/j/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/d;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/d;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/b;->b(Lcom/duoku/platform/single/j/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/d;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-static {v2}, Lcom/duoku/platform/single/j/c/b;->b(Lcom/duoku/platform/single/j/c/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/d;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-static {v3}, Lcom/duoku/platform/single/j/c/b;->b(Lcom/duoku/platform/single/j/c/b;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "payment_not_finish_tip"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/duoku/platform/single/j/c/e;

    invoke-direct {v6, p0}, Lcom/duoku/platform/single/j/c/e;-><init>(Lcom/duoku/platform/single/j/c/d;)V

    const-string v8, "DKPayBaseView.initViewHeader"

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/d;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-virtual {v4}, Lcom/duoku/platform/single/j/c/b;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    move v9, v7

    :goto_0
    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    return-void

    :cond_0
    const/4 v9, 0x1

    goto :goto_0
.end method
