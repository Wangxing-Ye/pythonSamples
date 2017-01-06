.class public Lorg/cocos2d/actions/interval/CCMoveBy;
.super Lorg/cocos2d/actions/interval/CCMoveTo;
.source "CCMoveBy.java"


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p1, "t"    # F
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/interval/CCMoveTo;-><init>(FLorg/cocos2d/types/CGPoint;)V

    .line 19
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v1, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 20
    return-void
.end method

.method public static action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;
    .locals 1
    .param p0, "duration"    # F
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/actions/interval/CCMoveBy;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCMoveBy;-><init>(FLorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public static bridge synthetic action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/interval/CCMoveBy;->action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCMoveBy;->copy()Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCMoveBy;->copy()Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCMoveBy;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lorg/cocos2d/actions/interval/CCMoveBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCMoveBy;-><init>(FLorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCMoveBy;->reverse()Lorg/cocos2d/actions/interval/CCMoveBy;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCMoveBy;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/cocos2d/actions/interval/CCMoveBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCMoveBy;-><init>(FLorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 29
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v0, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 30
    .local v0, "tmpx":F
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v1, v2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 32
    .local v1, "tmpy":F
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCMoveTo;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 33
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveBy;->delta:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v2, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 34
    return-void
.end method
