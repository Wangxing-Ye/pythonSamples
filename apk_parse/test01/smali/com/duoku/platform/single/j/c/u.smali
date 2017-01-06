.class Lcom/duoku/platform/single/j/c/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/t;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/t;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->a(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/b/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/b/I;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->b(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/t;->b(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v1}, Lcom/duoku/platform/single/j/c/t;->a(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/b/I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/b/I;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-static {v1}, Lcom/duoku/platform/single/j/c/t;->c(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/d/d;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/c;->c:Lcom/duoku/platform/single/d/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/u;->a:Lcom/duoku/platform/single/j/c/t;

    invoke-virtual {v4}, Lcom/duoku/platform/single/j/c/t;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0
.end method
