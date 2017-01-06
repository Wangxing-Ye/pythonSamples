.class public Lcom/duoku/platform/single/j/c/b;
.super Lcom/duoku/platform/single/view/a;


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/c/b;)Lcom/duoku/platform/single/d/d;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/b;->e:Lcom/duoku/platform/single/d/d;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/c/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/b;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/b;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/duoku/platform/single/d/c;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 1

    const-string v0, "dkMainFootView"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/b;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected e()V
    .locals 2

    const-string v0, "dkMainHeadBack"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/b;->b:Landroid/widget/ImageView;

    const-string v0, "dkMainHeadClose"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/b;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/b;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/j/c/c;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/c/c;-><init>(Lcom/duoku/platform/single/j/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/j/c/d;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/c/d;-><init>(Lcom/duoku/platform/single/j/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected f()V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->d()V

    return-void
.end method
