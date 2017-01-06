.class public Lorg/cocos2d/actions/interval/CCBezierBy;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCBezierBy.java"


# instance fields
.field protected config:Lorg/cocos2d/types/CCBezierConfig;

.field protected startPosition:Lorg/cocos2d/types/CGPoint;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CCBezierConfig;)V
    .locals 1
    .param p1, "t"    # F
    .param p2, "c"    # Lorg/cocos2d/types/CCBezierConfig;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 24
    iput-object p2, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    .line 25
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 26
    return-void
.end method

.method public static action(FLorg/cocos2d/types/CCBezierConfig;)Lorg/cocos2d/actions/interval/CCBezierBy;
    .locals 1
    .param p0, "t"    # F
    .param p1, "c"    # Lorg/cocos2d/types/CCBezierConfig;

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/interval/CCBezierBy;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCBezierBy;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBezierBy;->copy()Lorg/cocos2d/actions/interval/CCIntervalAction;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lorg/cocos2d/actions/interval/CCBezierBy;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCBezierBy;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCBezierBy;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lorg/cocos2d/types/CCBezierConfig;

    invoke-direct {v0}, Lorg/cocos2d/types/CCBezierConfig;-><init>()V

    .line 60
    .local v0, "r":Lorg/cocos2d/types/CCBezierConfig;
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    .line 61
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v2, v2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    .line 62
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v2, v2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    .line 64
    new-instance v1, Lorg/cocos2d/actions/interval/CCBezierBy;

    iget v2, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->duration:F

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/actions/interval/CCBezierBy;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v1
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBezierBy;->reverse()Lorg/cocos2d/actions/interval/CCBezierBy;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 1
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 36
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    .line 37
    return-void
.end method

.method public update(F)V
    .locals 13
    .param p1, "t"    # F

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "xa":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget v2, v10, Lorg/cocos2d/types/CGPoint;->x:F

    .line 43
    .local v2, "xb":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget v3, v10, Lorg/cocos2d/types/CGPoint;->x:F

    .line 44
    .local v3, "xc":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v4, v10, Lorg/cocos2d/types/CGPoint;->x:F

    .line 46
    .local v4, "xd":F
    const/4 v6, 0x0

    .line 47
    .local v6, "ya":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget v7, v10, Lorg/cocos2d/types/CGPoint;->y:F

    .line 48
    .local v7, "yb":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget v8, v10, Lorg/cocos2d/types/CGPoint;->y:F

    .line 49
    .local v8, "yc":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v10, v10, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v9, v10, Lorg/cocos2d/types/CGPoint;->y:F

    .line 51
    .local v9, "yd":F
    invoke-static {v1, v2, v3, v4, p1}, Lorg/cocos2d/types/CCBezierConfig;->bezierAt(FFFFF)F

    move-result v0

    .line 52
    .local v0, "x":F
    invoke-static {v6, v7, v8, v9, p1}, Lorg/cocos2d/types/CCBezierConfig;->bezierAt(FFFFF)F

    move-result v5

    .line 53
    .local v5, "y":F
    iget-object v10, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v11, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v11, v11, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v11, v0

    iget-object v12, p0, Lorg/cocos2d/actions/interval/CCBezierBy;->startPosition:Lorg/cocos2d/types/CGPoint;

    iget v12, v12, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v12, v5

    invoke-static {v11, v12}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 54
    return-void
.end method
