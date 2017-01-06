.class public Lorg/cocos2d/actions/interval/CCProgressFromTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCProgressFromTo.java"


# instance fields
.field from_:F

.field to_:F


# direct methods
.method protected constructor <init>(FFF)V
    .locals 0
    .param p1, "t"    # F
    .param p2, "fromPercentage"    # F
    .param p3, "toPercentage"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 22
    iput p3, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->to_:F

    .line 23
    iput p2, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->from_:F

    .line 24
    return-void
.end method

.method public static action(FFF)Lorg/cocos2d/actions/interval/CCProgressFromTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "fromPercentage"    # F
    .param p2, "toPercentage"    # F

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/interval/CCProgressFromTo;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/actions/interval/CCProgressFromTo;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCProgressFromTo;->copy()Lorg/cocos2d/actions/interval/CCProgressFromTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCProgressFromTo;->copy()Lorg/cocos2d/actions/interval/CCProgressFromTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCProgressFromTo;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/interval/CCProgressFromTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->from_:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->to_:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCProgressFromTo;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCProgressFromTo;->reverse()Lorg/cocos2d/actions/interval/CCProgressFromTo;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCProgressFromTo;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/actions/interval/CCProgressFromTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->to_:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->from_:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/actions/interval/CCProgressFromTo;-><init>(FFF)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 39
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->target:Lorg/cocos2d/nodes/CCNode;

    check-cast v0, Lorg/cocos2d/actions/CCProgressTimer;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->from_:F

    iget v2, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->to_:F

    iget v3, p0, Lorg/cocos2d/actions/interval/CCProgressFromTo;->from_:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->setPercentage(F)V

    .line 44
    return-void
.end method
