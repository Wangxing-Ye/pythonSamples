.class public Lorg/cocos2d/actions/interval/CCSkewTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCSkewTo.java"


# instance fields
.field protected deltaX:F

.field protected deltaY:F

.field protected endSkewX:F

.field protected endSkewY:F

.field protected startSkewX:F

.field protected startSkewY:F


# direct methods
.method protected constructor <init>(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 20
    iput p2, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewX:F

    .line 21
    iput p3, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewY:F

    .line 22
    return-void
.end method

.method public static action(FFF)Lorg/cocos2d/actions/interval/CCSkewTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/interval/CCSkewTo;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCSkewTo;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSkewTo;->copy()Lorg/cocos2d/actions/interval/CCSkewTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCSkewTo;->copy()Lorg/cocos2d/actions/interval/CCSkewTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCSkewTo;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2d/actions/interval/CCSkewTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewX:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewY:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCSkewTo;-><init>(FFF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 6
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 31
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 34
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getSkewX()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    .line 36
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 37
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    rem-float/2addr v0, v3

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    .line 41
    :goto_0
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewX:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    .line 43
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 44
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    .line 49
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getSkewY()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    .line 51
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 52
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    rem-float/2addr v0, v3

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    .line 56
    :goto_2
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->endSkewY:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    .line 58
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 59
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    .line 62
    :cond_1
    :goto_3
    return-void

    .line 39
    :cond_2
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    rem-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    goto :goto_0

    .line 45
    :cond_3
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 46
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    goto :goto_1

    .line 54
    :cond_4
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    rem-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    goto :goto_2

    .line 60
    :cond_5
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 61
    iget v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    goto :goto_3
.end method

.method public update(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewX:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaX:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setSkewX(F)V

    .line 67
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->startSkewY:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCSkewTo;->deltaY:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setSkewY(F)V

    .line 68
    return-void
.end method
