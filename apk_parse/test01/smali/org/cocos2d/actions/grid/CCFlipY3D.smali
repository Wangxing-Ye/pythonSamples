.class public Lorg/cocos2d/actions/grid/CCFlipY3D;
.super Lorg/cocos2d/actions/grid/CCFlipX3D;
.source "CCFlipY3D.java"


# direct methods
.method protected constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-static {v0, v0}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cocos2d/actions/grid/CCFlipY3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 0
    .param p1, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "duration"    # F

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/grid/CCFlipX3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 25
    return-void
.end method

.method public static action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCFlipY3D;
    .locals 1
    .param p0, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p1, "duration"    # F

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/actions/grid/CCFlipY3D;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/actions/grid/CCFlipY3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public static bridge synthetic action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/cocos2d/actions/grid/CCFlipY3D;->action(Lorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCFlipY3D;

    move-result-object v0

    return-object v0
.end method

.method public static action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 1
    .param p0, "duration"    # F

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/actions/grid/CCFlipY3D;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/grid/CCFlipY3D;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public update(F)V
    .locals 20
    .param p1, "time"    # F

    .prologue
    .line 29
    const v17, 0x40490fdb    # (float)Math.PI

    mul-float v4, v17, p1

    .line 30
    .local v4, "angle":F
    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v10, v0

    .line 31
    .local v10, "mz":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v4, v17

    .line 32
    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v9, v0

    .line 35
    .local v9, "my":F
    new-instance v8, Lorg/cocos2d/types/CCVertex3D;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 37
    .local v8, "diff":Lorg/cocos2d/types/CCVertex3D;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v12

    .line 38
    .local v12, "v0":Lorg/cocos2d/types/CCVertex3D;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v13

    .line 40
    .local v13, "v1":Lorg/cocos2d/types/CCVertex3D;
    iget v15, v12, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 41
    .local v15, "y0":F
    iget v0, v13, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v16, v0

    .line 45
    .local v16, "y1":F
    cmpl-float v17, v15, v16

    if-lez v17, :cond_0

    .line 47
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    .line 48
    .local v3, "a":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    .line 49
    .local v5, "b":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    .line 50
    .local v6, "c":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v7

    .line 51
    .local v7, "d":Lorg/cocos2d/types/ccGridSize;
    move v14, v15

    .line 61
    .local v14, "y":F
    :goto_0
    mul-float v17, v14, v9

    sub-float v17, v14, v17

    move/from16 v0, v17

    iput v0, v8, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 62
    mul-float v17, v14, v10

    const/high16 v18, 0x40800000    # 4.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 65
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 66
    .local v11, "v":Lorg/cocos2d/types/CCVertex3D;
    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 67
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 68
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lorg/cocos2d/actions/grid/CCFlipY3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 72
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 73
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/cocos2d/actions/grid/CCFlipY3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 78
    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 79
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 80
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/cocos2d/actions/grid/CCFlipY3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 83
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/cocos2d/actions/grid/CCFlipY3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 84
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 85
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/cocos2d/actions/grid/CCFlipY3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 87
    return-void

    .line 54
    .end local v3    # "a":Lorg/cocos2d/types/ccGridSize;
    .end local v5    # "b":Lorg/cocos2d/types/ccGridSize;
    .end local v6    # "c":Lorg/cocos2d/types/ccGridSize;
    .end local v7    # "d":Lorg/cocos2d/types/ccGridSize;
    .end local v11    # "v":Lorg/cocos2d/types/CCVertex3D;
    .end local v14    # "y":F
    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    .line 55
    .restart local v5    # "b":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    .line 56
    .restart local v3    # "a":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v7

    .line 57
    .restart local v7    # "d":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    .line 58
    .restart local v6    # "c":Lorg/cocos2d/types/ccGridSize;
    move/from16 v14, v16

    .restart local v14    # "y":F
    goto/16 :goto_0
.end method
