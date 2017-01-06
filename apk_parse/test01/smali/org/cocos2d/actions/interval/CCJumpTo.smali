.class public Lorg/cocos2d/actions/interval/CCJumpTo;
.super Lorg/cocos2d/actions/interval/CCJumpBy;
.source "CCJumpTo.java"


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CGPoint;FI)V
    .locals 0
    .param p1, "time"    # F
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "height"    # F
    .param p4, "jumps"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2d/actions/interval/CCJumpBy;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    .line 22
    return-void
.end method

.method public static bridge synthetic action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpBy;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCJumpTo;->action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpTo;

    move-result-object v0

    return-object v0
.end method

.method public static action(FLorg/cocos2d/types/CGPoint;FI)Lorg/cocos2d/actions/interval/CCJumpTo;
    .locals 1
    .param p0, "time"    # F
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "height"    # F
    .param p3, "jumps"    # I

    .prologue
    .line 17
    new-instance v0, Lorg/cocos2d/actions/interval/CCJumpTo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/actions/interval/CCJumpTo;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCJumpTo;->copy()Lorg/cocos2d/actions/interval/CCJumpTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCJumpBy;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCJumpTo;->copy()Lorg/cocos2d/actions/interval/CCJumpTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCJumpTo;
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2d/actions/interval/CCJumpTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget v3, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->height:F

    iget v4, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->jumps:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/actions/interval/CCJumpTo;-><init>(FLorg/cocos2d/types/CGPoint;FI)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCJumpBy;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 32
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 33
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->delta:Lorg/cocos2d/types/CGPoint;

    iget v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCJumpTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 34
    return-void
.end method
