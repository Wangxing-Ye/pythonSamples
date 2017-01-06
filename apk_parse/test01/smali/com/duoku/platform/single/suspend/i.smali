.class Lcom/duoku/platform/single/suspend/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/h;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/h;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 7

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->a(Lcom/duoku/platform/single/suspend/h;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/h;->b(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/h;->b(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    iget-object v5, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v5}, Lcom/duoku/platform/single/suspend/h;->c(Lcom/duoku/platform/single/suspend/h;)I

    move-result v5

    iget-object v6, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v6}, Lcom/duoku/platform/single/suspend/h;->d(Lcom/duoku/platform/single/suspend/h;)I

    move-result v6

    invoke-static {v4, v0, v2, v5, v6}, Lcom/duoku/platform/single/suspend/h;->a(Lcom/duoku/platform/single/suspend/h;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/duoku/platform/single/suspend/h;->a(Lcom/duoku/platform/single/suspend/h;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/i;->a:Lcom/duoku/platform/single/suspend/h;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/suspend/h;->a(IIIIZ)V

    :cond_0
    return-void
.end method
