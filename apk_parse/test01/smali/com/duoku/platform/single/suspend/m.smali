.class Lcom/duoku/platform/single/suspend/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestTag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__response data is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/duoku/platform/single/h/a/b;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->n()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1, v4}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1, v4}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    sget-object v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    new-instance v1, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    sget-object v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/suspend/DKSuspensionView$c;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "-tag 46 DKCrossRecommendData is null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "-response data failure"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_0
.end method

.method public a(JJI)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/m;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method
