.class public Lorg/cocos2d/actions/interval/CCScaleTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCScaleTo.java"


# instance fields
.field protected deltaX:F

.field protected deltaY:F

.field protected endScaleX:F

.field protected endScaleY:F

.field protected scaleX:F

.field protected scaleY:F

.field protected startScaleX:F

.field protected startScaleY:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p2}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FFF)V

    .line 31
    return-void
.end method

.method protected constructor <init>(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 36
    iput p2, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleX:F

    .line 37
    iput p3, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleY:F

    .line 38
    return-void
.end method

.method public static action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # F

    .prologue
    .line 20
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FF)V

    return-object v0
.end method

.method public static action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleTo;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCScaleTo;->copy()Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCScaleTo;->copy()Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleX:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleY:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FFF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 48
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getScaleX()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleX:F

    .line 49
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getScaleY()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleY:F

    .line 50
    iget v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleX:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->deltaX:F

    .line 51
    iget v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->endScaleY:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->deltaY:F

    .line 52
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleX:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->deltaX:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setScaleX(F)V

    .line 57
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->startScaleY:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCScaleTo;->deltaY:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setScaleY(F)V

    .line 58
    return-void
.end method
