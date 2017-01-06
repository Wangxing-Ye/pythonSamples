.class public Lcom/duoku/platform/single/a/e;
.super Landroid/support/v4/view/PagerAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/duoku/platform/single/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/duoku/platform/single/view/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;",
            "Lcom/duoku/platform/single/view/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoku/platform/single/a/e;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/duoku/platform/single/a/e;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/duoku/platform/single/a/e;->d:Lcom/duoku/platform/single/view/c;

    return-void
.end method

.method private a(Ljava/util/List;I)Lcom/duoku/platform/single/item/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;I)",
            "Lcom/duoku/platform/single/item/i;"
        }
    .end annotation

    new-instance v1, Lcom/duoku/platform/single/item/i;

    invoke-direct {v1}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->b(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/d;->l()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/i;->c(I)V

    return-object v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/duoku/platform/single/a/e;->c:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Lcom/duoku/platform/single/a/e;->a(Ljava/util/List;I)Lcom/duoku/platform/single/item/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/single/item/i;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/duoku/platform/single/item/i;

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/a/f;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/a/f;-><init>(Lcom/duoku/platform/single/a/e;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->d:Lcom/duoku/platform/single/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->d:Lcom/duoku/platform/single/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/c;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/a/e;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v6

    sget v7, Lcom/duoku/platform/single/util/a;->iT:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->d:Lcom/duoku/platform/single/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/a/e;->d:Lcom/duoku/platform/single/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/c;->b()V

    goto :goto_0
.end method
