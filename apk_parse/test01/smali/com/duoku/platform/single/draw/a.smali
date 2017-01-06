.class public Lcom/duoku/platform/single/draw/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/view/animation/RotateAnimation;

.field c:Landroid/view/animation/RotateAnimation;

.field d:Landroid/view/animation/RotateAnimation;

.field e:Landroid/view/animation/Animation$AnimationListener;

.field f:F

.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/a;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/draw/a;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/draw/a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/duoku/platform/single/draw/a;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->e:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/a;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/a;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/draw/a;->h:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/draw/a;->e:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x45610000    # 3600.0f

    iget-object v3, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/a;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/draw/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/draw/a;->h:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/draw/a;->h:Z

    return-void
.end method
