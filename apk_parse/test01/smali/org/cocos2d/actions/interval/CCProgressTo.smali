.class public Lorg/cocos2d/actions/interval/CCProgressTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCProgressTo.java"


# instance fields
.field from_:F

.field to_:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "percent"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    iput p2, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->to_:F

    .line 24
    return-void
.end method

.method public static action(FF)Lorg/cocos2d/actions/interval/CCProgressTo;
    .locals 1
    .param p0, "duration"    # F
    .param p1, "percent"    # F

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/interval/CCProgressTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCProgressTo;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCProgressTo;->copy()Lorg/cocos2d/actions/interval/CCProgressTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCProgressTo;->copy()Lorg/cocos2d/actions/interval/CCProgressTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCProgressTo;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/interval/CCProgressTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->to_:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCProgressTo;-><init>(FF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 34
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/actions/CCProgressTimer;

    invoke-virtual {v0}, Lorg/cocos2d/actions/CCProgressTimer;->getPercentage()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->from_:F

    .line 38
    iget v0, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->from_:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->from_:F

    .line 40
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/actions/CCProgressTimer;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->from_:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->to_:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCProgressTo;->from_:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->setPercentage(F)V

    .line 45
    return-void
.end method
