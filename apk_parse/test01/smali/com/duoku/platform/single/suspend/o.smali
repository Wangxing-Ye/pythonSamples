.class Lcom/duoku/platform/single/suspend/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iput v1, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/o;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V

    :cond_1
    return-void
.end method
