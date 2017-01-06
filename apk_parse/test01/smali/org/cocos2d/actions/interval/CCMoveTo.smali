.class public Lorg/cocos2d/actions/interval/CCMoveTo;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCMoveTo.java"


# instance fields
.field protected delta:Lorg/cocos2d/types/CGPoint;

.field private endPosition:Lorg/cocos2d/types/CGPoint;

.field private startPosition:Lorg/cocos2d/types/CGPoint;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "t"    # F
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 25
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 26
    iget v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->endPosition:Lorg/cocos2d/types/CGPoint;

    .line 27
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->delta:Lorg/cocos2d/types/CGPoint;

    .line 28
    return-void
.end method

.method public static action(FLorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/interval/CCMoveTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/actions/interval/CCMoveTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCMoveTo;-><init>(FLorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCMoveTo;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/cocos2d/actions/interval/CCMoveTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCMoveTo;-><init>(FLorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public setEndPosition(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 35
    return-void
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 46
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 47
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 48
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 53
    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCMoveTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->setPosition(FF)V

    .line 54
    return-void
.end method
