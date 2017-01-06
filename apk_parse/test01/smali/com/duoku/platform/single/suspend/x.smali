.class Lcom/duoku/platform/single/suspend/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/q;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/q;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/x;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/x;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/x;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/h;->o()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/x;->a:Lcom/duoku/platform/single/suspend/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/q;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/suspend/h;)V

    sput-boolean v2, Lcom/duoku/platform/single/suspend/q;->b:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/x;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->k(Lcom/duoku/platform/single/suspend/q;)V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
