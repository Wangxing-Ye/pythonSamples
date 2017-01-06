.class Lcom/duoku/platform/single/suspend/DKSuspensionView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionView;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/suspend/DKSuspensionView$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v2, 0x0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-lez p4, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    move v3, v2

    move v1, v2

    :goto_0
    if-lt v3, v6, :cond_2

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0, v2}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Landroid/widget/AbsListView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Landroid/widget/AbsListView;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g(Lcom/duoku/platform/single/suspend/DKSuspensionView;)I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u8f7d\u5168\u90e8\u6700\u65b0\u6e38\u620f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v2, v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    aput v2, v1, v3

    sget v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    aput v2, v1, v4

    aput v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request pageNum is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v4}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/h/h;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "---is last item position ---"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j(Lcom/duoku/platform/single/suspend/DKSuspensionView;)I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->k(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u8f7d\u5168\u90e8\u70ed\u95e8\u6e38\u620f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget v2, v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    aput v2, v1, v3

    sget v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    aput v2, v1, v4

    aput v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request pageNum2 is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v4}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/h/h;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
