.class Lcom/duoku/platform/single/util/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    if-lez p4, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/duoku/platform/single/util/j;->a(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/duoku/platform/single/util/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    sget-object v1, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/util/j;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u8f7d\u5168\u90e8\u70ed\u95e8\u6e38\u620f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-static {}, Lcom/duoku/platform/single/util/j;->d()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/util/j;->b()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/duoku/platform/single/util/j;->a(Landroid/widget/AbsListView;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/j;->a(I)V

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--lastPosition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ===list.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->f()I

    move-result v0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    sget v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v2

    sget v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    aput v2, v3, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->e()Lcom/duoku/platform/single/util/H;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request exit good game data = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    invoke-static {}, Lcom/duoku/platform/single/util/j;->h()Lcom/duoku/platform/single/h/h;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
