.class public Lorg/cocos2d/actions/interval/CCScaleBy;
.super Lorg/cocos2d/actions/interval/CCScaleTo;
.source "CCScaleBy.java"


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "s"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p2}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FFF)V

    .line 20
    return-void
.end method

.method protected constructor <init>(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCScaleTo;-><init>(FFF)V

    .line 24
    return-void
.end method

.method public static action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;
    .locals 1
    .param p0, "t"    # F
    .param p1, "s"    # F

    .prologue
    .line 11
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleBy;

    invoke-direct {v0, p0, p1, p1}, Lorg/cocos2d/actions/interval/CCScaleBy;-><init>(FFF)V

    return-object v0
.end method

.method public static action(FFF)Lorg/cocos2d/actions/interval/CCScaleBy;
    .locals 1
    .param p0, "t"    # F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 15
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleBy;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCScaleBy;-><init>(FFF)V

    return-object v0
.end method

.method public static bridge synthetic action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic action(FFF)Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/cocos2d/actions/interval/CCScaleBy;->action(FFF)Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCScaleBy;->copy()Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCScaleBy;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleX:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleY:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCScaleBy;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCScaleTo;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCScaleBy;->copy()Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCScaleBy;->reverse()Lorg/cocos2d/actions/interval/CCScaleBy;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCScaleBy;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 41
    new-instance v0, Lorg/cocos2d/actions/interval/CCScaleBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleX:F

    div-float v2, v4, v2

    iget v3, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleY:F

    div-float v3, v4, v3

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCScaleBy;-><init>(FFF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCScaleTo;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 35
    iget v0, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->startScaleX:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->startScaleX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->deltaX:F

    .line 36
    iget v0, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->startScaleY:F

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->endScaleY:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->startScaleY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/actions/interval/CCScaleBy;->deltaY:F

    .line 37
    return-void
.end method
