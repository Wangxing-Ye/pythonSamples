.class public Lorg/cocos2d/actions/interval/CCRotateBy;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCRotateBy.java"


# instance fields
.field private angle:F

.field private startAngle:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "a"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 24
    iput p2, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->angle:F

    .line 25
    return-void
.end method

.method public static action(FF)Lorg/cocos2d/actions/interval/CCRotateBy;
    .locals 1
    .param p0, "t"    # F
    .param p1, "a"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/CCRotateBy;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCRotateBy;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRotateBy;->copy()Lorg/cocos2d/actions/interval/CCRotateBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRotateBy;->copy()Lorg/cocos2d/actions/interval/CCRotateBy;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCRotateBy;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/cocos2d/actions/interval/CCRotateBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->angle:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCRotateBy;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCRotateBy;->reverse()Lorg/cocos2d/actions/interval/CCRotateBy;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCRotateBy;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/cocos2d/actions/interval/CCRotateBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->angle:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCRotateBy;-><init>(FF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getRotation()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->startAngle:F

    .line 36
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->startAngle:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCRotateBy;->angle:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setRotation(F)V

    .line 42
    return-void
.end method
