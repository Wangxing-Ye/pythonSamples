.class public Lorg/cocos2d/actions/grid/CCPageTurn3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCPageTurn3D.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 23
    return-void
.end method

.method public static bridge synthetic action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/grid/CCPageTurn3D;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCPageTurn3D;

    move-result-object v0

    return-object v0
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCPageTurn3D;
    .locals 1
    .param p0, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "d"    # F

    .prologue
    .line 18
    new-instance v0, Lorg/cocos2d/actions/grid/CCPageTurn3D;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/grid/CCPageTurn3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public update(F)V
    .locals 21
    .param p1, "time"    # F

    .prologue
    .line 31
    const/16 v17, 0x0

    const/high16 v18, 0x3e800000    # 0.25f

    sub-float v18, p1, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 32
    .local v16, "tt":F
    mul-float v17, v16, v16

    const/high16 v18, 0x43fa0000    # 500.0f

    mul-float v8, v17, v18

    .line 33
    .local v8, "deltaAy":F
    const/high16 v17, -0x3d380000    # -100.0f

    sub-float v4, v17, v8

    .line 35
    .local v4, "ay":F
    const v17, -0x4036f025

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v9, v17, v18

    .line 36
    .local v9, "deltaTheta":F
    const v17, 0x3fc90fdb

    add-float v15, v17, v9

    .line 38
    .local v15, "theta":F
    float-to-double v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v14, v0

    .line 39
    .local v14, "sinTheta":F
    float-to-double v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v7, v0

    .line 41
    .local v7, "cosTheta":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/grid/CCPageTurn3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v10, v0, :cond_0

    .line 82
    return-void

    .line 42
    :cond_0
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/grid/CCPageTurn3D;->gridSize:Lorg/cocos2d/types/ccGridSize;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_1

    .line 41
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v10, v11}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/grid/CCPageTurn3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v12

    .line 46
    .local v12, "p":Lorg/cocos2d/types/CCVertex3D;
    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v18, v0

    sub-float v18, v18, v4

    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v19, v0

    sub-float v19, v19, v4

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    .line 47
    .local v2, "R":F
    mul-float v13, v2, v14

    .line 48
    .local v13, "r":F
    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    div-float v17, v17, v2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v3, v0

    .line 49
    .local v3, "alpha":F
    div-float v5, v3, v14

    .line 50
    .local v5, "beta":F
    float-to-double v0, v5

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v6, v0

    .line 54
    .local v6, "cosBeta":F
    float-to-double v0, v5

    move-wide/from16 v17, v0

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    cmpg-double v17, v17, v19

    if-gtz v17, :cond_3

    .line 56
    float-to-double v0, v13

    move-wide/from16 v17, v0

    float-to-double v0, v5

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 57
    add-float v17, v2, v4

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v6

    mul-float v18, v18, v13

    mul-float v18, v18, v14

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 61
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v6

    mul-float v17, v17, v13

    mul-float v17, v17, v7

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 74
    :goto_2
    iget v0, v12, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    const v18, 0x3f666666    # 0.9f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_2

    .line 75
    const v17, 0x3f666666    # 0.9f

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 78
    :cond_2
    invoke-static {v10, v11}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lorg/cocos2d/actions/grid/CCPageTurn3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 42
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 67
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 68
    add-float v17, v2, v4

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v6

    mul-float v18, v18, v13

    mul-float v18, v18, v14

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 69
    const v17, 0x3a83126f    # 0.001f

    move/from16 v0, v17

    iput v0, v12, Lorg/cocos2d/types/CCVertex3D;->z:F

    goto :goto_2
.end method
