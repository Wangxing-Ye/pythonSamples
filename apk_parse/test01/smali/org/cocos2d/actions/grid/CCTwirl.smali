.class public Lorg/cocos2d/actions/grid/CCTwirl;
.super Lorg/cocos2d/actions/grid/CCGrid3DAction;
.source "CCTwirl.java"


# instance fields
.field amplitude:F

.field amplitudeRate:F

.field position:Lorg/cocos2d/types/CGPoint;

.field twirls:I


# direct methods
.method public constructor <init>(Lorg/cocos2d/types/CGPoint;IFLorg/cocos2d/types/ccGridSize;F)V
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "t"    # I
    .param p3, "amp"    # F
    .param p4, "gSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p5, "d"    # F

    .prologue
    .line 26
    invoke-direct {p0, p4, p5}, Lorg/cocos2d/actions/grid/CCGrid3DAction;-><init>(Lorg/cocos2d/types/ccGridSize;F)V

    .line 27
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/grid/CCTwirl;->position:Lorg/cocos2d/types/CGPoint;

    .line 28
    iput p2, p0, Lorg/cocos2d/actions/grid/CCTwirl;->twirls:I

    .line 29
    iput p3, p0, Lorg/cocos2d/actions/grid/CCTwirl;->amplitude:F

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/actions/grid/CCTwirl;->amplitudeRate:F

    .line 31
    return-void
.end method

.method public static action(Lorg/cocos2d/types/CGPoint;IFLorg/cocos2d/types/ccGridSize;F)Lorg/cocos2d/actions/grid/CCTwirl;
    .locals 6
    .param p0, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "t"    # I
    .param p2, "amp"    # F
    .param p3, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p4, "d"    # F

    .prologue
    .line 21
    new-instance v0, Lorg/cocos2d/actions/grid/CCTwirl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/actions/grid/CCTwirl;-><init>(Lorg/cocos2d/types/CGPoint;IFLorg/cocos2d/types/ccGridSize;F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCTwirl;->copy()Lorg/cocos2d/actions/grid/CCTwirl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/grid/CCGrid3DAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/grid/CCTwirl;->copy()Lorg/cocos2d/actions/grid/CCTwirl;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/grid/CCTwirl;
    .locals 6

    .prologue
    .line 64
    new-instance v0, Lorg/cocos2d/actions/grid/CCTwirl;

    iget-object v1, p0, Lorg/cocos2d/actions/grid/CCTwirl;->position:Lorg/cocos2d/types/CGPoint;

    iget v2, p0, Lorg/cocos2d/actions/grid/CCTwirl;->twirls:I

    iget v3, p0, Lorg/cocos2d/actions/grid/CCTwirl;->amplitude:F

    iget-object v4, p0, Lorg/cocos2d/actions/grid/CCTwirl;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v5, p0, Lorg/cocos2d/actions/grid/CCTwirl;->duration:F

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/actions/grid/CCTwirl;-><init>(Lorg/cocos2d/types/CGPoint;IFLorg/cocos2d/types/ccGridSize;F)V

    .line 65
    .local v0, "copy":Lorg/cocos2d/actions/grid/CCTwirl;
    return-object v0
.end method

.method public update(F)V
    .locals 19
    .param p1, "time"    # F

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2d/actions/grid/CCTwirl;->position:Lorg/cocos2d/types/CGPoint;

    .line 38
    .local v5, "c":Lorg/cocos2d/types/CGPoint;
    new-instance v6, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v6}, Lorg/cocos2d/types/CGPoint;-><init>()V

    .line 40
    .local v6, "d":Lorg/cocos2d/types/CGPoint;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/cocos2d/actions/grid/CCTwirl;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v11, v11, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v11, v11, 0x1

    if-lt v7, v11, :cond_0

    .line 60
    return-void

    .line 41
    :cond_0
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/cocos2d/actions/grid/CCTwirl;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v11, v11, Lorg/cocos2d/types/ccGridSize;->y:I

    add-int/lit8 v11, v11, 0x1

    if-lt v8, v11, :cond_1

    .line 40
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v7, v8}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/cocos2d/actions/grid/CCTwirl;->originalVertex(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/CCVertex3D;

    move-result-object v10

    .line 44
    .local v10, "v":Lorg/cocos2d/types/CCVertex3D;
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/actions/grid/CCTwirl;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v12, v12, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cocos2d/actions/grid/CCTwirl;->gridSize:Lorg/cocos2d/types/ccGridSize;

    iget v13, v13, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 45
    .local v4, "avg":Lorg/cocos2d/types/CGPoint;
    invoke-static {v4}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v9

    .line 47
    .local v9, "r":F
    const v11, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/actions/grid/CCTwirl;->amplitude:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/actions/grid/CCTwirl;->amplitudeRate:F

    mul-float v3, v11, v12

    .line 48
    .local v3, "amp":F
    float-to-double v11, v9

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    move/from16 v0, p1

    float-to-double v15, v0

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/grid/CCTwirl;->twirls:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    float-to-double v13, v3

    mul-double/2addr v11, v13

    double-to-float v2, v11

    .line 51
    .local v2, "a":F
    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget v13, v10, Lorg/cocos2d/types/CCVertex3D;->y:F

    iget v14, v5, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v11, v13

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    iget v15, v10, Lorg/cocos2d/types/CCVertex3D;->x:F

    iget v0, v5, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v15, v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v11, v11

    iput v11, v6, Lorg/cocos2d/types/CGPoint;->x:F

    .line 52
    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    iget v13, v10, Lorg/cocos2d/types/CCVertex3D;->y:F

    iget v14, v5, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v11, v13

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    iget v15, v10, Lorg/cocos2d/types/CCVertex3D;->x:F

    iget v0, v5, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    double-to-float v11, v11

    iput v11, v6, Lorg/cocos2d/types/CGPoint;->y:F

    .line 54
    iget v11, v5, Lorg/cocos2d/types/CGPoint;->x:F

    iget v12, v6, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v11, v12

    iput v11, v10, Lorg/cocos2d/types/CCVertex3D;->x:F

    .line 55
    iget v11, v5, Lorg/cocos2d/types/CGPoint;->y:F

    iget v12, v6, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v11, v12

    iput v11, v10, Lorg/cocos2d/types/CCVertex3D;->y:F

    .line 57
    invoke-static {v7, v8}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lorg/cocos2d/actions/grid/CCTwirl;->setVertex(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/CCVertex3D;)V

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method
