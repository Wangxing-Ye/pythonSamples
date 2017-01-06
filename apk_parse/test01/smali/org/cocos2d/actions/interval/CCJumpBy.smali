.class public Lorg/cocos2d/actions/interval/CCJumpBy;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCJumpBy.java"


# instance fields
.field protected delta:Lorg/cocos2d/types/CGPoint;

.field protected height:F

.field protected jumps:I

.field protected startPosition:Lorg/cocos2d/types/CGPoint;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CGPoint;FI)V
    .locals 2
    .param p1, "time"    # F
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "h"    # F
    .param p4, "j"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 23
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 24
    iget v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->delta:Lorg/cocos2d/types/CGPoint;

    .line 25
    iput p3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->height:F

    .line 26
    iput p4, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->jumps:I

    .line 27
    return-void
.end method

.method public static action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;
    .locals 1
    .param p0, "time"    # F
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "height"    # F
    .param p3, "jumps"    # I

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/interval/CCJumpBy;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCJumpBy;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCJumpBy;->copy()Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCJumpBy;->copy()Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCJumpBy;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lorg/cocos2d/actions/interval/CCJumpBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->height:F

    iget v4, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->jumps:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/CCJumpBy;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCJumpBy;->reverse()Lorg/cocos2d/actions/interval/CCJumpBy;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCJumpBy;
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lorg/cocos2d/actions/interval/CCJumpBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->delta:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->height:F

    iget v4, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->jumps:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/CCJumpBy;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 37
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 38
    .local v0, "pnt":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 39
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 44
    iget v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->jumps:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    rem-float v0, v3, v5

    .line 45
    .local v0, "frac":F
    iget v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->height:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float v4, v5, v0

    mul-float v2, v3, v4

    .line 46
    .local v2, "y":F
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 47
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->delta:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float v1, v3, p1

    .line 48
    .local v1, "x":F
    iget-object v3, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v4, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v4, v4, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lorg/cocos2d/actions/interval/CCJumpBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v5, v5, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v5, v2

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 49
    return-void
.end method
