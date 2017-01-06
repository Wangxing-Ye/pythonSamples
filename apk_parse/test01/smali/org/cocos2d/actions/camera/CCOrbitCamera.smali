.class public Lorg/cocos2d/actions/camera/CCOrbitCamera;
.super Lorg/cocos2d/actions/camera/CCCameraAction;
.source "CCOrbitCamera.java"


# instance fields
.field private angleX:F

.field private angleZ:F

.field private deltaAngleX:F

.field private deltaAngleZ:F

.field private deltaRadius:F

.field private radDeltaX:F

.field private radDeltaZ:F

.field private radX:F

.field private radZ:F

.field private radius:F


# direct methods
.method protected constructor <init>(FFFFFFF)V
    .locals 1
    .param p1, "t"    # F
    .param p2, "r"    # F
    .param p3, "dr"    # F
    .param p4, "z"    # F
    .param p5, "dz"    # F
    .param p6, "x"    # F
    .param p7, "dx"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/cocos2d/actions/camera/CCCameraAction;-><init>(F)V

    .line 32
    iput p2, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radius:F

    .line 33
    iput p3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaRadius:F

    .line 34
    iput p4, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleZ:F

    .line 35
    iput p5, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaAngleZ:F

    .line 36
    iput p6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleX:F

    .line 37
    iput p7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaAngleX:F

    .line 39
    invoke-static {p5}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radDeltaZ:F

    .line 40
    invoke-static {p7}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v0

    iput v0, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radDeltaX:F

    .line 41
    return-void
.end method

.method public static action(FFFFFFF)Lorg/cocos2d/actions/camera/CCOrbitCamera;
    .locals 8
    .param p0, "t"    # F
    .param p1, "r"    # F
    .param p2, "dr"    # F
    .param p3, "z"    # F
    .param p4, "dz"    # F
    .param p5, "x"    # F
    .param p6, "dx"    # F

    .prologue
    .line 25
    new-instance v0, Lorg/cocos2d/actions/camera/CCOrbitCamera;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/actions/camera/CCOrbitCamera;-><init>(FFFFFFF)V

    return-object v0
.end method

.method private spherical([F[F[F)V
    .locals 18
    .param p1, "newRadius"    # [F
    .param p2, "zenith"    # [F
    .param p3, "azimuth"    # [F

    .prologue
    .line 80
    const/4 v12, 0x1

    new-array v4, v12, [F

    .local v4, "ex":[F
    const/4 v12, 0x1

    new-array v5, v12, [F

    .local v5, "ey":[F
    const/4 v12, 0x1

    new-array v6, v12, [F

    .line 81
    .local v6, "ez":[F
    const/4 v12, 0x1

    new-array v1, v12, [F

    .local v1, "cx":[F
    const/4 v12, 0x1

    new-array v2, v12, [F

    .local v2, "cy":[F
    const/4 v12, 0x1

    new-array v3, v12, [F

    .line 86
    .local v3, "cz":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v12}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v12

    invoke-virtual {v12, v4, v5, v6}, Lorg/cocos2d/opengl/CCCamera;->getEye([F[F[F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v12}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v12

    invoke-virtual {v12, v1, v2, v3}, Lorg/cocos2d/opengl/CCCamera;->getCenter([F[F[F)V

    .line 89
    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x0

    aget v13, v1, v13

    sub-float v9, v12, v13

    .line 90
    .local v9, "x":F
    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x0

    aget v13, v2, v13

    sub-float v10, v12, v13

    .line 91
    .local v10, "y":F
    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x0

    aget v13, v3, v13

    sub-float v11, v12, v13

    .line 93
    .local v11, "z":F
    float-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    float-to-double v14, v14

    add-double/2addr v12, v14

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    .line 94
    .local v7, "r":F
    float-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    float-to-double v14, v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    .line 96
    .local v8, "s":F
    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-nez v12, :cond_0

    .line 97
    const v8, 0x322bcc77    # 1.0E-8f

    .line 98
    :cond_0
    const/4 v12, 0x0

    cmpl-float v12, v7, v12

    if-nez v12, :cond_1

    .line 99
    const v7, 0x322bcc77    # 1.0E-8f

    .line 101
    :cond_1
    const/4 v12, 0x0

    div-float v13, v11, v7

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, p2, v12

    .line 103
    const/4 v12, 0x0

    cmpg-float v12, v9, v12

    if-gez v12, :cond_2

    .line 104
    const/4 v12, 0x0

    const v13, 0x40490fdb    # (float)Math.PI

    div-float v14, v10, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    double-to-float v14, v14

    sub-float/2addr v13, v14

    aput v13, p3, v12

    .line 108
    :goto_0
    const/4 v12, 0x0

    invoke-static {}, Lorg/cocos2d/opengl/CCCamera;->getZEye()F

    move-result v13

    div-float v13, v7, v13

    aput v13, p1, v12

    .line 109
    return-void

    .line 106
    :cond_2
    const/4 v12, 0x0

    div-float v13, v10, v8

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, p3, v12

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/camera/CCOrbitCamera;->copy()Lorg/cocos2d/actions/camera/CCOrbitCamera;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/camera/CCOrbitCamera;
    .locals 8

    .prologue
    .line 45
    new-instance v0, Lorg/cocos2d/actions/camera/CCOrbitCamera;

    iget v1, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->duration:F

    iget v2, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radius:F

    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaRadius:F

    iget v4, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleZ:F

    iget v5, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaAngleZ:F

    iget v6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleX:F

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaAngleX:F

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/actions/camera/CCOrbitCamera;-><init>(FFFFFFF)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/camera/CCOrbitCamera;->copy()Lorg/cocos2d/actions/camera/CCOrbitCamera;

    move-result-object v0

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 5
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1}, Lorg/cocos2d/actions/camera/CCCameraAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 51
    new-array v1, v3, [F

    .local v1, "r":[F
    new-array v2, v3, [F

    .local v2, "zenith":[F
    new-array v0, v3, [F

    .line 53
    .local v0, "azimuth":[F
    invoke-direct {p0, v1, v2, v0}, Lorg/cocos2d/actions/camera/CCOrbitCamera;->spherical([F[F[F)V

    .line 54
    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radius:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radius:F

    .line 56
    :cond_0
    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    aget v3, v2, v4

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_RADIANS_TO_DEGREES(F)F

    move-result v3

    iput v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleZ:F

    .line 58
    :cond_1
    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    aget v3, v0, v4

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_RADIANS_TO_DEGREES(F)F

    move-result v3

    iput v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleX:F

    .line 61
    :cond_2
    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleZ:F

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v3

    iput v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radZ:F

    .line 62
    iget v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->angleX:F

    invoke-static {v3}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v3

    iput v3, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radX:F

    .line 63
    return-void
.end method

.method public update(F)V
    .locals 9
    .param p1, "t"    # F

    .prologue
    .line 67
    iget v6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radius:F

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->deltaRadius:F

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    invoke-static {}, Lorg/cocos2d/opengl/CCCamera;->getZEye()F

    move-result v7

    mul-float v3, v6, v7

    .line 68
    .local v3, "r":F
    iget v6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radZ:F

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radDeltaZ:F

    mul-float/2addr v7, p1

    add-float v5, v6, v7

    .line 69
    .local v5, "za":F
    iget v6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radX:F

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->radDeltaX:F

    mul-float/2addr v7, p1

    add-float v4, v6, v7

    .line 71
    .local v4, "xa":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->centerXOrig:F

    add-float v0, v6, v7

    .line 72
    .local v0, "i":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->centerYOrig:F

    add-float v1, v6, v7

    .line 73
    .local v1, "j":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v3

    iget v7, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->centerZOrig:F

    add-float v2, v6, v7

    .line 75
    .local v2, "k":F
    iget-object v6, p0, Lorg/cocos2d/actions/camera/CCOrbitCamera;->target:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v6

    invoke-virtual {v6, v0, v1, v2}, Lorg/cocos2d/opengl/CCCamera;->setEye(FFF)V

    .line 76
    return-void
.end method
