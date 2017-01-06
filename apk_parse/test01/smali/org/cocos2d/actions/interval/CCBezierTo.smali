.class public Lorg/cocos2d/actions/interval/CCBezierTo;
.super Lorg/cocos2d/actions/interval/CCBezierBy;
.source "CCBezierTo.java"


# instance fields
.field final originalconfig:Lorg/cocos2d/types/CCBezierConfig;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/types/CCBezierConfig;)V
    .locals 3
    .param p1, "t"    # F
    .param p2, "c"    # Lorg/cocos2d/types/CCBezierConfig;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/interval/CCBezierBy;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    .line 25
    new-instance v0, Lorg/cocos2d/types/CCBezierConfig;

    invoke-direct {v0}, Lorg/cocos2d/types/CCBezierConfig;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    .line 26
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p2, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p2, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    .line 27
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p2, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p2, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    .line 28
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    .line 29
    return-void
.end method

.method public static bridge synthetic action(FLorg/cocos2d/types/CCBezierConfig;)Lorg/cocos2d/actions/interval/CCBezierBy;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/interval/CCBezierTo;->action(FLorg/cocos2d/types/CCBezierConfig;)Lorg/cocos2d/actions/interval/CCBezierTo;

    move-result-object v0

    return-object v0
.end method

.method public static action(FLorg/cocos2d/types/CCBezierConfig;)Lorg/cocos2d/actions/interval/CCBezierTo;
    .locals 1
    .param p0, "t"    # F
    .param p1, "c"    # Lorg/cocos2d/types/CCBezierConfig;

    .prologue
    .line 19
    new-instance v0, Lorg/cocos2d/actions/interval/CCBezierTo;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/interval/CCBezierTo;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBezierTo;->copy()Lorg/cocos2d/actions/interval/CCBezierTo;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/interval/CCBezierTo;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/cocos2d/actions/interval/CCBezierTo;

    iget v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->duration:F

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/interval/CCBezierTo;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBezierTo;->copy()Lorg/cocos2d/actions/interval/CCBezierTo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCBezierBy;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/interval/CCBezierTo;->reverse()Lorg/cocos2d/actions/interval/CCBezierTo;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCBezierTo;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/cocos2d/types/CCBezierConfig;

    invoke-direct {v0}, Lorg/cocos2d/types/CCBezierConfig;-><init>()V

    .line 49
    .local v0, "r":Lorg/cocos2d/types/CCBezierConfig;
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    .line 50
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v2, v2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    .line 51
    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v2, v2, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpNeg(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    .line 53
    new-instance v1, Lorg/cocos2d/actions/interval/CCBezierTo;

    iget v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->duration:F

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/actions/interval/CCBezierTo;-><init>(FLorg/cocos2d/types/CCBezierConfig;)V

    return-object v1
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 3
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCBezierBy;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 40
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_1:Lorg/cocos2d/types/CGPoint;

    .line 41
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->controlPoint_2:Lorg/cocos2d/types/CGPoint;

    .line 42
    iget-object v0, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->config:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->originalconfig:Lorg/cocos2d/types/CCBezierConfig;

    iget-object v1, v1, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    iget-object v2, p0, Lorg/cocos2d/actions/interval/CCBezierTo;->startPosition:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/types/CCBezierConfig;->endPosition:Lorg/cocos2d/types/CGPoint;

    .line 43
    return-void
.end method
