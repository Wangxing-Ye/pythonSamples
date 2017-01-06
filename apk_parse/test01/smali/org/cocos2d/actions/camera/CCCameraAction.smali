.class public abstract Lorg/cocos2d/actions/camera/CCCameraAction;
.super Lorg/cocos2d/actions/interval/CCIntervalAction;
.source "CCCameraAction.java"


# instance fields
.field protected centerXOrig:F

.field protected centerYOrig:F

.field protected centerZOrig:F

.field protected eyeXOrig:F

.field protected eyeYOrig:F

.field protected eyeZOrig:F

.field protected upXOrig:F

.field protected upYOrig:F

.field protected upZOrig:F


# direct methods
.method protected constructor <init>(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;-><init>(F)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic reverse()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/camera/CCCameraAction;->reverse()Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/cocos2d/actions/interval/CCReverseTime;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lorg/cocos2d/actions/interval/CCReverseTime;->action(Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCReverseTime;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 5
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Lorg/cocos2d/actions/interval/CCIntervalAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 30
    new-array v0, v3, [F

    .line 31
    .local v0, "x":[F
    new-array v1, v3, [F

    .line 32
    .local v1, "y":[F
    new-array v2, v3, [F

    .line 34
    .local v2, "z":[F
    iget-object v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/CCCamera;->getCenter([F[F[F)V

    .line 35
    aget v3, v0, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->centerXOrig:F

    .line 36
    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->centerYOrig:F

    .line 37
    aget v3, v2, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->centerZOrig:F

    .line 39
    iget-object v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/CCCamera;->getEye([F[F[F)V

    .line 40
    aget v3, v0, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->eyeXOrig:F

    .line 41
    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->eyeYOrig:F

    .line 42
    aget v3, v2, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->eyeZOrig:F

    .line 44
    iget-object v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/CCCamera;->getUp([F[F[F)V

    .line 45
    aget v3, v0, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->upXOrig:F

    .line 46
    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->upYOrig:F

    .line 47
    aget v3, v2, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCCameraAction;->upZOrig:F

    .line 48
    return-void
.end method
