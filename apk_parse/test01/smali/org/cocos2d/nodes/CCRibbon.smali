.class public Lorg/cocos2d/nodes/CCRibbon;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCRibbon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    }
.end annotation


# instance fields
.field blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field color_:Lorg/cocos2d/types/ccColor4B;

.field curTime_:F

.field deletedSegments_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;",
            ">;"
        }
    .end annotation
.end field

.field delta_:F

.field fadeTime_:F

.field lastLocation_:Lorg/cocos2d/types/CGPoint;

.field lastPoint1_:Lorg/cocos2d/types/CGPoint;

.field lastPoint2_:Lorg/cocos2d/types/CGPoint;

.field lastSign_:F

.field lastWidth_:F

.field pastFirstPoint_:Z

.field segments_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;",
            ">;"
        }
    .end annotation
.end field

.field texVPos_:F

.field textureLength_:F

.field texture_:Lorg/cocos2d/opengl/CCTexture2D;

.field vertCount_:I


# direct methods
.method protected constructor <init>(FLjava/lang/String;FLorg/cocos2d/types/ccColor4B;F)V
    .locals 7
    .param p1, "w"    # F
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "l"    # F
    .param p4, "color"    # Lorg/cocos2d/types/ccColor4B;
    .param p5, "fade"    # F

    .prologue
    const/16 v6, 0x2901

    const/16 v5, 0x2601

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    invoke-direct {v1}, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;-><init>()V

    .line 169
    .local v1, "seg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iput p3, p0, Lorg/cocos2d/nodes/CCRibbon;->textureLength_:F

    .line 173
    iput-object p4, p0, Lorg/cocos2d/nodes/CCRibbon;->color_:Lorg/cocos2d/types/ccColor4B;

    .line 174
    iput p5, p0, Lorg/cocos2d/nodes/CCRibbon;->fadeTime_:F

    .line 175
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    .line 176
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    iput v2, p0, Lorg/cocos2d/nodes/CCRibbon;->lastWidth_:F

    .line 177
    iput v3, p0, Lorg/cocos2d/nodes/CCRibbon;->texVPos_:F

    .line 179
    iput v3, p0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCRibbon;->pastFirstPoint_:Z

    .line 187
    new-instance v2, Lorg/cocos2d/types/ccBlendFunc;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-direct {v2, v3, v4}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 189
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 192
    new-instance v0, Lorg/cocos2d/types/CCTexParams;

    invoke-direct {v0, v5, v5, v6, v6}, Lorg/cocos2d/types/CCTexParams;-><init>(IIII)V

    .line 193
    .local v0, "params":Lorg/cocos2d/types/CCTexParams;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v2, v0}, Lorg/cocos2d/opengl/CCTexture2D;->setTexParameters(Lorg/cocos2d/types/CCTexParams;)V

    .line 194
    return-void
.end method

.method public static node(FLjava/lang/String;FLorg/cocos2d/types/ccColor4B;F)Lorg/cocos2d/nodes/CCRibbon;
    .locals 6
    .param p0, "w"    # F
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "l"    # F
    .param p3, "color"    # Lorg/cocos2d/types/ccColor4B;
    .param p4, "fade"    # F

    .prologue
    .line 158
    new-instance v0, Lorg/cocos2d/nodes/CCRibbon;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCRibbon;-><init>(FLjava/lang/String;FLorg/cocos2d/types/ccColor4B;F)V

    return-object v0
.end method

.method private rotatePoint(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "vec"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "a"    # F

    .prologue
    .line 198
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 199
    .local v0, "xtemp":F
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 200
    iput v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    .line 201
    return-object p1
.end method


# virtual methods
.method public addPoint(Lorg/cocos2d/types/CGPoint;F)V
    .locals 20
    .param p1, "location"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "w"    # F

    .prologue
    .line 208
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float p2, p2, v15

    .line 210
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/cocos2d/nodes/CCRibbon;->pastFirstPoint_:Z

    if-nez v15, :cond_0

    .line 211
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2d/nodes/CCRibbon;->lastWidth_:F

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    .line 213
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/cocos2d/nodes/CCRibbon;->pastFirstPoint_:Z

    .line 310
    :goto_0
    return-void

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v12

    .line 218
    .local v12, "sub":Lorg/cocos2d/types/CGPoint;
    invoke-static {v12}, Lorg/cocos2d/types/CGPoint;->ccpToAngle(Lorg/cocos2d/types/CGPoint;)F

    move-result v15

    const v16, 0x40c90fdb

    add-float v9, v15, v16

    .line 219
    .local v9, "r":F
    move/from16 v0, p2

    neg-float v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lorg/cocos2d/nodes/CCRibbon;->rotatePoint(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    .line 220
    .local v7, "p1":Lorg/cocos2d/types/CGPoint;
    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-static {v0, v15}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lorg/cocos2d/nodes/CCRibbon;->rotatePoint(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 221
    .local v8, "p2":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    iget v15, v15, Lorg/cocos2d/types/CGPoint;->x:F

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v3, v15

    .line 222
    .local v3, "len":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/cocos2d/nodes/CCRibbon;->texVPos_:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->textureLength_:F

    move/from16 v16, v0

    div-float v16, v3, v16

    add-float v13, v15, v16

    .line 225
    .local v13, "tend":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    .line 227
    .local v10, "seg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 235
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "seg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    check-cast v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    .line 241
    .restart local v10    # "seg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    .line 246
    .local v6, "newSeg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->reset()V

    .line 252
    :goto_2
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v14, v15, 0x6

    .line 253
    .local v14, "v":I
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v2, v15, 0x4

    .line 254
    .local v2, "c":I
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x0

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    aget v17, v17, v14

    aput v17, v15, v16

    .line 255
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x1

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 256
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x2

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 257
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x3

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x3

    aget v17, v17, v18

    aput v17, v15, v16

    .line 258
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x4

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x4

    aget v17, v17, v18

    aput v17, v15, v16

    .line 259
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x5

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x5

    aget v17, v17, v18

    aput v17, v15, v16

    .line 261
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x0

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    move-object/from16 v17, v0

    aget v17, v17, v2

    aput v17, v15, v16

    .line 262
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x1

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 263
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x2

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 264
    iget-object v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x3

    iget-object v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, 0x3

    aget v17, v17, v18

    aput v17, v15, v16

    .line 265
    iget v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    .line 266
    move-object v10, v6

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "c":I
    .end local v6    # "newSeg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    .end local v14    # "v":I
    :cond_3
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    if-nez v15, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget v15, v0, Lorg/cocos2d/nodes/CCRibbon;->lastWidth_:F

    neg-float v15, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lorg/cocos2d/nodes/CCRibbon;->rotatePoint(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 273
    .local v4, "lp1":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget v15, v0, Lorg/cocos2d/nodes/CCRibbon;->lastWidth_:F

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lorg/cocos2d/nodes/CCRibbon;->rotatePoint(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 274
    .local v5, "lp2":Lorg/cocos2d/types/CGPoint;
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->creationTime:[F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->delta_:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    aput v17, v15, v16

    .line 275
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x0

    iget v0, v4, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 276
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x1

    iget v0, v4, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 277
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x2

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 278
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x3

    iget v0, v5, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 279
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x4

    iget v0, v5, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 280
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    const/16 v16, 0x5

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 281
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 282
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->texVPos_:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 283
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    .line 284
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->texVPos_:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 285
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    .line 288
    .end local v4    # "lp1":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "lp2":Lorg/cocos2d/types/CGPoint;
    :cond_4
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    mul-int/lit8 v14, v15, 0x6

    .line 289
    .restart local v14    # "v":I
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    mul-int/lit8 v2, v15, 0x4

    .line 291
    .restart local v2    # "c":I
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->creationTime:[F

    iget v0, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 292
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    iget v0, v7, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v16, v0

    aput v16, v15, v14

    .line 293
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    add-int/lit8 v16, v14, 0x1

    iget v0, v7, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 294
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    add-int/lit8 v16, v14, 0x2

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 295
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    add-int/lit8 v16, v14, 0x3

    iget v0, v8, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 296
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    add-int/lit8 v16, v14, 0x4

    iget v0, v8, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 297
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->verts:[F

    add-int/lit8 v16, v14, 0x5

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 299
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    const/16 v16, 0x0

    aput v16, v15, v2

    .line 300
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    add-int/lit8 v16, v2, 0x1

    aput v13, v15, v16

    .line 301
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    add-int/lit8 v16, v2, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    .line 302
    iget-object v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->coords:[F

    add-int/lit8 v16, v2, 0x3

    aput v13, v15, v16

    .line 304
    move-object/from16 v0, p0

    iput v13, v0, Lorg/cocos2d/nodes/CCRibbon;->texVPos_:F

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/nodes/CCRibbon;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    .line 306
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/cocos2d/nodes/CCRibbon;->lastPoint1_:Lorg/cocos2d/types/CGPoint;

    .line 307
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/cocos2d/nodes/CCRibbon;->lastPoint2_:Lorg/cocos2d/types/CGPoint;

    .line 308
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/cocos2d/nodes/CCRibbon;->lastWidth_:F

    .line 309
    iget v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v10, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->end:I

    goto/16 :goto_0

    .line 227
    .end local v2    # "c":I
    .end local v14    # "v":I
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    .line 228
    .local v11, "seg2":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    if-eq v11, v10, :cond_1

    iget-boolean v0, v11, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->finished:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCRibbon;->deletedSegments_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 249
    .end local v11    # "seg2":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    :cond_6
    new-instance v6, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    invoke-direct {v6}, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;-><init>()V

    .restart local v6    # "newSeg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    goto/16 :goto_2
.end method

.method public blendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v8, 0x8076

    const/16 v7, 0x303

    const/4 v6, 0x1

    .line 327
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 331
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 332
    const/16 v2, 0xde1

    iget-object v3, p0, Lorg/cocos2d/nodes/CCRibbon;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "newBlend":Z
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v2, v7, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 337
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v3, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v3, v3, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 340
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/nodes/CCRibbon;->segments_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 343
    if-eqz v0, :cond_2

    .line 344
    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 346
    :cond_2
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 348
    .end local v0    # "newBlend":Z
    :cond_3
    return-void

    .line 340
    .restart local v0    # "newBlend":Z
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;

    .line 341
    .local v1, "seg":Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;
    iget v3, p0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    iget v4, p0, Lorg/cocos2d/nodes/CCRibbon;->fadeTime_:F

    iget-object v5, p0, Lorg/cocos2d/nodes/CCRibbon;->color_:Lorg/cocos2d/types/ccColor4B;

    invoke-virtual {v1, p1, v3, v4, v5}, Lorg/cocos2d/nodes/CCRibbon$CCRibbonSegment;->draw(Ljavax/microedition/khronos/opengles/GL10;FFLorg/cocos2d/types/ccColor4B;)V

    goto :goto_0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 355
    iput-object p1, p0, Lorg/cocos2d/nodes/CCRibbon;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 356
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 361
    iput-object p1, p0, Lorg/cocos2d/nodes/CCRibbon;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 362
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCRibbon;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 364
    return-void
.end method

.method public sideOfLine(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 3
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "l1"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "l2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 320
    invoke-static {p2, p3}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/types/CGPoint;->ccpPerp(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 321
    .local v0, "vp":Lorg/cocos2d/types/CGPoint;
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 322
    .local v1, "vx":Lorg/cocos2d/types/CGPoint;
    invoke-static {v1, v0}, Lorg/cocos2d/types/CGPoint;->ccpDot(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v2

    return v2
.end method

.method public texture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/cocos2d/nodes/CCRibbon;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public update(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 314
    iget v0, p0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/nodes/CCRibbon;->curTime_:F

    .line 315
    iput p1, p0, Lorg/cocos2d/nodes/CCRibbon;->delta_:F

    .line 316
    return-void
.end method
