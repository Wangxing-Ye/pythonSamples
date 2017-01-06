.class public Lorg/cocos2d/actions/base/CCFollow;
.super Lorg/cocos2d/actions/base/CCAction;
.source "CCFollow.java"


# instance fields
.field bottomBoundary:F

.field boundaryFullyCovered:Z

.field boundarySet:Z

.field followedNode_:Lorg/cocos2d/nodes/CCNode;

.field fullScreenSize:Lorg/cocos2d/types/CGPoint;

.field halfScreenSize:Lorg/cocos2d/types/CGPoint;

.field leftBoundary:F

.field rightBoundary:F

.field topBoundary:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "followedNode"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lorg/cocos2d/actions/base/CCAction;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    .line 60
    iput-boolean v1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundarySet:Z

    .line 61
    iput-boolean v1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundaryFullyCovered:Z

    .line 63
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 64
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    .line 65
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->halfScreenSize:Lorg/cocos2d/types/CGPoint;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGRect;)V
    .locals 5
    .param p1, "followedNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    .line 70
    invoke-direct {p0}, Lorg/cocos2d/actions/base/CCAction;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    .line 73
    iput-boolean v4, p0, Lorg/cocos2d/actions/base/CCFollow;->boundarySet:Z

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundaryFullyCovered:Z

    .line 76
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 77
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    .line 78
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->halfScreenSize:Lorg/cocos2d/types/CGPoint;

    .line 80
    iget-object v1, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    .line 81
    iget-object v1, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v1, v1

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    .line 82
    iget-object v1, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v1, v1

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    .line 83
    iget-object v1, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCFollow;->fullScreenSize:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    .line 85
    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 88
    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    .line 91
    :cond_0
    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 94
    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    iput v1, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    .line 97
    :cond_1
    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    iget v2, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 98
    iput-boolean v4, p0, Lorg/cocos2d/actions/base/CCFollow;->boundaryFullyCovered:Z

    .line 99
    :cond_2
    return-void
.end method

.method private static CLAMP(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 121
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static action(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/actions/base/CCFollow;
    .locals 1
    .param p0, "followedNode"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 47
    new-instance v0, Lorg/cocos2d/actions/base/CCFollow;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/base/CCFollow;-><init>(Lorg/cocos2d/nodes/CCNode;)V

    return-object v0
.end method

.method public static action(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/actions/base/CCFollow;
    .locals 1
    .param p0, "followedNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 52
    new-instance v0, Lorg/cocos2d/actions/base/CCFollow;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/base/CCFollow;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGRect;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCFollow;->copy()Lorg/cocos2d/actions/base/CCFollow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/base/CCAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCFollow;->copy()Lorg/cocos2d/actions/base/CCFollow;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/base/CCFollow;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/cocos2d/actions/base/CCFollow;

    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/base/CCFollow;-><init>(Lorg/cocos2d/nodes/CCNode;)V

    .line 104
    .local v0, "f":Lorg/cocos2d/actions/base/CCFollow;
    invoke-virtual {p0}, Lorg/cocos2d/actions/base/CCFollow;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/base/CCFollow;->setTag(I)V

    .line 105
    return-object v0
.end method

.method public getBoundarySet()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lorg/cocos2d/actions/base/CCFollow;->boundarySet:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBoundarySet(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundarySet:Z

    .line 26
    return-void
.end method

.method public step(F)V
    .locals 6
    .param p1, "dt"    # F

    .prologue
    .line 126
    iget-boolean v1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundarySet:Z

    if-eqz v1, :cond_1

    .line 128
    iget-boolean v1, p0, Lorg/cocos2d/actions/base/CCFollow;->boundaryFullyCovered:Z

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->halfScreenSize:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 132
    .local v0, "tempPos":Lorg/cocos2d/types/CGPoint;
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->target:Lorg/cocos2d/nodes/CCNode;

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p0, Lorg/cocos2d/actions/base/CCFollow;->leftBoundary:F

    iget v4, p0, Lorg/cocos2d/actions/base/CCFollow;->rightBoundary:F

    invoke-static {v2, v3, v4}, Lorg/cocos2d/actions/base/CCFollow;->CLAMP(FFF)F

    move-result v2

    .line 133
    iget v3, v0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, p0, Lorg/cocos2d/actions/base/CCFollow;->bottomBoundary:F

    iget v5, p0, Lorg/cocos2d/actions/base/CCFollow;->topBoundary:F

    invoke-static {v3, v4, v5}, Lorg/cocos2d/actions/base/CCFollow;->CLAMP(FFF)F

    move-result v3

    .line 132
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 136
    .end local v0    # "tempPos":Lorg/cocos2d/types/CGPoint;
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/base/CCFollow;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v2, p0, Lorg/cocos2d/actions/base/CCFollow;->halfScreenSize:Lorg/cocos2d/types/CGPoint;

    iget-object v3, p0, Lorg/cocos2d/actions/base/CCFollow;->followedNode_:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/actions/base/CCFollow;->target:Lorg/cocos2d/nodes/CCNode;

    .line 117
    invoke-super {p0}, Lorg/cocos2d/actions/base/CCAction;->stop()V

    .line 118
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 143
    return-void
.end method
