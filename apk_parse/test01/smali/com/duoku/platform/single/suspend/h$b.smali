.class Lcom/duoku/platform/single/suspend/h$b;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/h;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/suspend/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/h$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/h$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-virtual {v1}, Lcom/duoku/platform/single/suspend/h;->o()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->g(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->g(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->e(Lcom/duoku/platform/single/suspend/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/h;->f(Lcom/duoku/platform/single/suspend/h;)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/h$b;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/h$b;->getHeight()I

    move-result v1

    if-lt v2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-virtual {v1}, Lcom/duoku/platform/single/suspend/h;->o()V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-virtual {v1}, Lcom/duoku/platform/single/suspend/h;->o()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->h(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/h$b;->a:Lcom/duoku/platform/single/suspend/h;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/h;->h(Lcom/duoku/platform/single/suspend/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
