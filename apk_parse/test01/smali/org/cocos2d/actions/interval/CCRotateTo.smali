.class public Lorg/cocos2d/actions/interval/CCRotateTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCRotateTo.java"


# instance fields
.field private diffAngle:F

.field private dstAngle:F

.field private startAngle:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "ang"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    iput p2, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->dstAngle:F

    .line 24
    return-void
.end method

.method public static action(FF)Lorg/cocos2d/actions/interval/CCRotateTo;
    .locals 1
    .param p0, "duration"    # F
    .param p1, "ang"    # F

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/interval/CCRotateTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCRotateTo;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRotateTo;->copy()Lorg/cocos2d/actions/interval/CCRotateTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRotateTo;->copy()Lorg/cocos2d/actions/interval/CCRotateTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCRotateTo;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/interval/CCRotateTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->dstAngle:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCRotateTo;-><init>(FF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 33
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 34
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getRotation()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    .line 35
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 36
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    rem-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    .line 40
    :goto_0
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->dstAngle:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    .line 41
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 42
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    .line 43
    :cond_0
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 44
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    .line 45
    :cond_1
    return-void

    .line 38
    :cond_2
    iget v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->startAngle:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRotateTo;->diffAngle:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setRotation(F)V

    .line 50
    return-void
.end method
