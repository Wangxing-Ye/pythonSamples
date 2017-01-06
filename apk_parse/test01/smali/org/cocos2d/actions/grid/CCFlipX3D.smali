.class public Lorg/cocos2d/actions/grid/CCFlipX3D;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCFlipX3D.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lorg/cocos2d/actions/grid/CCFlipX3D;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/actions/grid/CCFlipX3D;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-static {v0, v0}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cocos2d/actions/grid/CCFlipX3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccGridSize;F)V
    .locals 2
    .param p1, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "d"    # F

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 23
    sget-boolean v0, Lorg/cocos2d/actions/grid/CCFlipX3D;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Grid size must be (1,1)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method

.method public static action(F)Lorg/cocos2d/actions/interval/CCIntervalAction;
    .locals 2
    .param p0, "duration"    # F

    .prologue
    const/4 v1, 0x1

    .line 13
    new-instance v0, Lorg/cocos2d/actions/grid/CCFlipX3D;

    invoke-static {v1, v1}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/cocos2d/actions/grid/CCFlipX3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCFlipX3D;->copy()Lorg/cocos2d/actions/grid/CCFlipX3D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCFlipX3D;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lorg/cocos2d/actions/grid/CCFlipX3D;

    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCFlipX3D;->getGridSize()Lorg/cocos2d/types/ccGridSize;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCFlipX3D;->getDuration()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/actions/grid/CCFlipX3D;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCFlipX3D;->copy()Lorg/cocos2d/actions/grid/CCFlipX3D;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 20
    .param p1, "time"    # F

    .prologue
    .line 33
    const v17, 0x40490fdb    # (float)Math.PI

    mul-float v4, v17, p1

    .line 34
    .local v4, "angle":F
    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v10, v0

    .line 35
    .local v10, "mz":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v4, v17

    .line 36
    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v9, v0

    .line 40
    .local v9, "mx":F
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v12

    .line 41
    .local v12, "v0":Lorg/cocos2d/types/CCVertex3D;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v13

    .line 43
    .local v13, "v1":Lorg/cocos2d/types/CCVertex3D;
    iget v15, v12, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 44
    .local v15, "x0":F
    iget v0, v13, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v16, v0

    .line 48
    .local v16, "x1":F
    cmpl-float v17, v15, v16

    if-lez v17, :cond_0

    .line 50
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    .line 51
    .local v3, "a":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    .line 52
    .local v5, "b":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    .line 53
    .local v6, "c":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v7

    .line 54
    .local v7, "d":Lorg/cocos2d/types/ccGridSize;
    move v14, v15

    .line 64
    .local v14, "x":F
    :goto_0
    new-instance v8, Lorg/cocos2d/types/CCVertex3D;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lorg/cocos2d/types/CCVertex3D;-><init>(FFF)V

    .line 65
    .local v8, "diff":Lorg/cocos2d/types/CCVertex3D;
    mul-float v17, v14, v9

    sub-float v17, v14, v17

    move/from16 v0, v17

    iput v0, v8, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 66
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

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 70
    .local v11, "v":Lorg/cocos2d/types/CCVertex3D;
    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 71
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lorg/cocos2d/actions/grid/CCFlipX3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 75
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 76
    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 77
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 78
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/cocos2d/actions/grid/CCFlipX3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 81
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 82
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 83
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 84
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/cocos2d/actions/grid/CCFlipX3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/cocos2d/actions/grid/CCFlipX3D;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v11

    .line 88
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 89
    iget v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v17, v0

    iget v0, v8, Lorg/cocos2d/types/CCVertex3D;->z:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lorg/cocos2d/types/CCVertex3D;->z:F

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/cocos2d/actions/grid/CCFlipX3D;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 91
    return-void

    .line 57
    .end local v3    # "a":Lorg/cocos2d/types/ccGridSize;
    .end local v5    # "b":Lorg/cocos2d/types/ccGridSize;
    .end local v6    # "c":Lorg/cocos2d/types/ccGridSize;
    .end local v7    # "d":Lorg/cocos2d/types/ccGridSize;
    .end local v8    # "diff":Lorg/cocos2d/types/CCVertex3D;
    .end local v11    # "v":Lorg/cocos2d/types/CCVertex3D;
    .end local v14    # "x":F
    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v6

    .line 58
    .restart local v6    # "c":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v7

    .line 59
    .restart local v7    # "d":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v3

    .line 60
    .restart local v3    # "a":Lorg/cocos2d/types/ccGridSize;
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    .line 61
    .restart local v5    # "b":Lorg/cocos2d/types/ccGridSize;
    move/from16 v14, v16

    .restart local v14    # "x":F
    goto/16 :goto_0
.end method
