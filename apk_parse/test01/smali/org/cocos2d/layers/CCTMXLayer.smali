.class public Lorg/cocos2d/layers/CCTMXLayer;
.super Lorg/cocos2d/nodes/CCSpriteSheet;
.source "CCTMXLayer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field alphaFuncValue_:F

.field atlasIndexArray_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public layerName:Ljava/lang/String;

.field public layerOrientation_:I

.field public layerSize:Lorg/cocos2d/types/CGSize;

.field public mapTileSize:Lorg/cocos2d/types/CGSize;

.field maxGID_:I

.field minGID_:I

.field opacity_:I

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reusedTile_:Lorg/cocos2d/nodes/CCSprite;

.field public tiles:Ljava/nio/IntBuffer;

.field public tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

.field useAutomaticVertexZ_:Z

.field vertexZvalue_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/cocos2d/layers/CCTMXLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/cocos2d/layers/CCTMXTilesetInfo;Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)V
    .locals 8
    .param p1, "tilesetInfo"    # Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .param p2, "layerInfo"    # Lorg/cocos2d/layers/CCTMXLayerInfo;
    .param p3, "mapInfo"    # Lorg/cocos2d/layers/CCTMXMapInfo;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    .line 93
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 94
    :goto_0
    iget-object v3, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v4, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    .line 97
    iget-object v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerName:Ljava/lang/String;

    .line 98
    iget-object v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    .line 99
    iget-object v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->tiles:Ljava/nio/IntBuffer;

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    .line 100
    iget v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->minGID:I

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->minGID_:I

    .line 101
    iget v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->maxGID:I

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->maxGID_:I

    .line 102
    iget v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->opacity:I

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->opacity_:I

    .line 103
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->properties:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->properties:Ljava/util/HashMap;

    .line 106
    iput-object p1, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    .line 109
    iget-object v2, p3, Lorg/cocos2d/layers/CCTMXMapInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    .line 110
    iget v2, p3, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerOrientation_:I

    .line 113
    iget-object v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->offset:Lorg/cocos2d/types/CGPoint;

    invoke-direct {p0, v2}, Lorg/cocos2d/layers/CCTMXLayer;->calculateLayerOffset(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 114
    .local v0, "offset":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCTMXLayer;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    .line 117
    iget-object v2, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p2, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    float-to-int v1, v2

    .line 118
    .local v1, "totalNumberOfTiles":I
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 120
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/layers/CCTMXLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 122
    iput-boolean v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->useAutomaticVertexZ_:Z

    .line 123
    iput v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->vertexZvalue_:I

    .line 124
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->alphaFuncValue_:F

    .line 126
    return-void

    .line 93
    .end local v0    # "offset":Lorg/cocos2d/types/CGPoint;
    .end local v1    # "totalNumberOfTiles":I
    :cond_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v2

    iget-object v3, p1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->sourceImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private appendTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;
    .locals 6
    .param p1, "gid"    # I
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 432
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-virtual {v3, p1}, Lorg/cocos2d/layers/CCTMXTilesetInfo;->rectForGID(I)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 434
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    iget v3, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 437
    .local v2, "z":I
    invoke-static {p0, v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    .line 441
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->positionAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 442
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->vertexZForPos(Lorg/cocos2d/types/CGPoint;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setVertexZ(F)V

    .line 443
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 444
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->opacity_:I

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 449
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 453
    .local v0, "indexForZ":I
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/layers/CCTMXLayer;->addQuadFromSprite(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 457
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 459
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    return-object v3
.end method

.method private atlasIndexForExistantZ(I)I
    .locals 3
    .param p1, "z"    # I

    .prologue
    .line 546
    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 547
    .local v0, "index":I
    return v0
.end method

.method private atlasIndexForNewZ(I)I
    .locals 3
    .param p1, "z"    # I

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 558
    :cond_0
    return v0

    .line 554
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 555
    .local v1, "val":I
    if-lt p1, v1, :cond_0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calculateLayerOffset(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 365
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 366
    .local v0, "ret":Lorg/cocos2d/types/CGPoint;
    iget v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerOrientation_:I

    packed-switch v1, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 368
    :pswitch_0
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 369
    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v4

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 372
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v4

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v3, v3

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 371
    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 373
    goto :goto_0

    .line 375
    :pswitch_2
    sget-boolean v1, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "offset for hexagonal map not implemented yet"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private insertTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;
    .locals 9
    .param p1, "gid"    # I
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 463
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-virtual {v6, p1}, Lorg/cocos2d/layers/CCTMXTilesetInfo;->rectForGID(I)Lorg/cocos2d/types/CGRect;

    move-result-object v3

    .line 465
    .local v3, "rect":Lorg/cocos2d/types/CGRect;
    iget v6, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v7, p2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v8, v8, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 468
    .local v5, "z":I
    invoke-static {p0, v3}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    .line 472
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->positionAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 473
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->vertexZForPos(Lorg/cocos2d/types/CGPoint;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setVertexZ(F)V

    .line 474
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 475
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    iget v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->opacity_:I

    invoke-virtual {v6, v7}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 478
    invoke-direct {p0, v5}, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexForNewZ(I)I

    move-result v1

    .line 481
    .local v1, "indexForZ":I
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v6, v1}, Lorg/cocos2d/layers/CCTMXLayer;->addQuadFromSprite(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 484
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 487
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->children_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 494
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 496
    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    return-object v6

    .line 487
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .local v2, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v4, v2

    .line 488
    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 489
    .local v4, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget v0, v4, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 490
    .local v0, "ai":I
    if-lt v0, v1, :cond_0

    .line 491
    add-int/lit8 v7, v0, 0x1

    iput v7, v4, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    goto :goto_0
.end method

.method public static layer(Lorg/cocos2d/layers/CCTMXTilesetInfo;Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXLayer;
    .locals 1
    .param p0, "tilesetInfo"    # Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .param p1, "layerInfo"    # Lorg/cocos2d/layers/CCTMXLayerInfo;
    .param p2, "mapInfo"    # Lorg/cocos2d/layers/CCTMXMapInfo;

    .prologue
    .line 89
    new-instance v0, Lorg/cocos2d/layers/CCTMXLayer;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/layers/CCTMXLayer;-><init>(Lorg/cocos2d/layers/CCTMXTilesetInfo;Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)V

    return-object v0
.end method

.method private parseInternalProperties()V
    .locals 3

    .prologue
    .line 528
    const-string v2, "cc_vertexz"

    invoke-virtual {p0, v2}, Lorg/cocos2d/layers/CCTMXLayer;->propertyNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "vertexz":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 530
    const-string v2, "automatic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->useAutomaticVertexZ_:Z

    .line 536
    :cond_0
    :goto_0
    const-string v2, "cc_alpha_func"

    invoke-virtual {p0, v2}, Lorg/cocos2d/layers/CCTMXLayer;->propertyNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "alphaFuncVal":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->alphaFuncValue_:F

    .line 538
    return-void

    .line 533
    .end local v0    # "alphaFuncVal":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->vertexZvalue_:I

    goto :goto_0

    .line 537
    .restart local v0    # "alphaFuncVal":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_1
.end method

.method private positionForHexAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 6
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const v5, 0x3efae148    # 0.49f

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "diffY":F
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    float-to-int v3, v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 396
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 398
    :cond_0
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 399
    .local v1, "x":I
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    .line 400
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    return-object v3
.end method

.method private positionForIsoAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 7
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const v6, 0x3efae148    # 0.49f

    const/high16 v5, 0x40000000    # 2.0f

    .line 388
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v0, v2

    .line 389
    .local v0, "x":I
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v5

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v1, v2

    .line 390
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method private positionForOrthoAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const v4, 0x3efae148    # 0.49f

    .line 382
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v0, v2

    .line 383
    .local v0, "x":I
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->mapTileSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 384
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method private updateTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;
    .locals 6
    .param p1, "gid"    # I
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 500
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-virtual {v3, p1}, Lorg/cocos2d/layers/CCTMXTilesetInfo;->rectForGID(I)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 502
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    iget v3, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 505
    .local v2, "z":I
    invoke-static {p0, v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    .line 509
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->positionAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 510
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->vertexZForPos(Lorg/cocos2d/types/CGPoint;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setVertexZ(F)V

    .line 511
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 512
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->opacity_:I

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 515
    invoke-direct {p0, v2}, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexForExistantZ(I)I

    move-result v0

    .line 517
    .local v0, "indexForZ":I
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    iput v0, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 518
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->updateTransform()V

    .line 519
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 521
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->reusedTile_:Lorg/cocos2d/nodes/CCSprite;

    return-object v3
.end method

.method private vertexZForPos(Lorg/cocos2d/types/CGPoint;)I
    .locals 5
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 406
    .local v0, "maxVal":I
    iget-boolean v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->useAutomaticVertexZ_:Z

    if-eqz v2, :cond_1

    .line 407
    iget v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerOrientation_:I

    packed-switch v2, :pswitch_data_0

    .line 419
    sget-boolean v2, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "TMX invalid value"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 409
    :pswitch_0
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 410
    int-to-float v2, v0

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    neg-float v2, v2

    float-to-int v1, v2

    .line 425
    :cond_0
    :goto_0
    return v1

    .line 413
    :pswitch_1
    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    float-to-int v1, v2

    .line 414
    goto :goto_0

    .line 416
    :pswitch_2
    sget-boolean v2, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "TMX Hexa zOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 423
    :cond_1
    iget v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->vertexZvalue_:I

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "tag"    # I

    .prologue
    .line 340
    sget-boolean v0, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "addChild: is not supported on CCTMXLayer. Instead use setTileGID:at:/tileAt:"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareInts(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 562
    sub-int v0, p1, p2

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v3, 0x8076

    const/16 v2, 0xbc0

    .line 568
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 569
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->useAutomaticVertexZ_:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 571
    const/16 v0, 0x204

    iget v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->alphaFuncValue_:F

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 574
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 576
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->useAutomaticVertexZ_:Z

    if-eqz v0, :cond_1

    .line 577
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 579
    :cond_1
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 580
    return-void
.end method

.method public positionAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 270
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 271
    .local v0, "ret":Lorg/cocos2d/types/CGPoint;
    iget v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerOrientation_:I

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_0
    return-object v0

    .line 273
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->positionForOrthoAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 274
    goto :goto_0

    .line 276
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->positionForIsoAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 277
    goto :goto_0

    .line 279
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->positionForHexAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public propertyNamed(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public releaseMap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 136
    iput-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 140
    iput-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    .line 142
    :cond_1
    return-void
.end method

.method public removeChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 5
    .param p1, "node"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "cleanup"    # Z

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 350
    :cond_0
    sget-boolean v3, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->children_:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Tile does not belong to TMXLayer"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 352
    :cond_1
    instance-of v3, p1, Lorg/cocos2d/nodes/CCSprite;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 353
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 354
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    iget v0, v1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 355
    .local v0, "atlasIndex":I
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, "zz":I
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 357
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    .end local v0    # "atlasIndex":I
    .end local v1    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "zz":I
    :cond_2
    const/4 v3, 0x1

    invoke-super {p0, p1, v3}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method public removeTileAt(Lorg/cocos2d/types/CGPoint;)V
    .locals 10
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v9, 0x0

    .line 234
    sget-boolean v7, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v8, v8, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v8, v8, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_0

    iget v7, p1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v7, v7, v9

    if-gez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "TMXLayer: invalid position"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 235
    :cond_1
    sget-boolean v7, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "TMXLayer: the tiles map has been released"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 237
    :cond_3
    invoke-virtual {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->tileGIDAt(Lorg/cocos2d/types/CGPoint;)I

    move-result v2

    .line 239
    .local v2, "gid":I
    if-eqz v2, :cond_4

    .line 240
    iget v7, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v8, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v9, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v9, v9, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 241
    .local v6, "z":I
    invoke-direct {p0, v6}, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexForExistantZ(I)I

    move-result v1

    .line 244
    .local v1, "atlasIndex":I
    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 247
    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    invoke-virtual {p0, v6}, Lorg/cocos2d/layers/CCTMXLayer;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSprite;

    .line 251
    .local v5, "sprite":Lorg/cocos2d/nodes/CCSprite;
    if-eqz v5, :cond_5

    .line 252
    const/4 v7, 0x1

    invoke-super {p0, v5, v7}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 266
    .end local v1    # "atlasIndex":I
    .end local v5    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    .end local v6    # "z":I
    :cond_4
    return-void

    .line 254
    .restart local v1    # "atlasIndex":I
    .restart local v5    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    .restart local v6    # "z":I
    :cond_5
    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v7, v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->removeQuad(I)V

    .line 257
    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->children_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v4, v3

    .line 258
    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 259
    .local v4, "s":Lorg/cocos2d/nodes/CCSprite;
    iget v0, v4, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 260
    .local v0, "ai":I
    if-lt v0, v1, :cond_6

    .line 261
    add-int/lit8 v8, v0, -0x1

    iput v8, v4, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    goto :goto_0
.end method

.method public setTileGID(ILorg/cocos2d/types/CGPoint;)V
    .locals 7
    .param p1, "gid"    # I
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v6, 0x0

    .line 201
    sget-boolean v4, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p2, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "TMXLayer: invalid position"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 202
    :cond_1
    sget-boolean v4, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "TMXLayer: the tiles map has been released"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 204
    :cond_3
    invoke-virtual {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->tileGIDAt(Lorg/cocos2d/types/CGPoint;)I

    move-result v0

    .line 206
    .local v0, "currentGID":I
    if-eq v0, p1, :cond_4

    .line 209
    if-nez p1, :cond_5

    .line 210
    invoke-virtual {p0, p2}, Lorg/cocos2d/layers/CCTMXLayer;->removeTileAt(Lorg/cocos2d/types/CGPoint;)V

    .line 229
    :cond_4
    :goto_0
    return-void

    .line 213
    :cond_5
    if-nez v0, :cond_6

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/layers/CCTMXLayer;->insertTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;

    goto :goto_0

    .line 218
    :cond_6
    iget v4, p2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, p2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 219
    .local v3, "z":I
    invoke-virtual {p0, v3}, Lorg/cocos2d/layers/CCTMXLayer;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 220
    .local v2, "sprite":Lorg/cocos2d/nodes/CCSprite;
    if-eqz v2, :cond_7

    .line 221
    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-virtual {v4, p1}, Lorg/cocos2d/layers/CCTMXTilesetInfo;->rectForGID(I)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 222
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {v2, v1}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 223
    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 225
    .end local v1    # "rect":Lorg/cocos2d/types/CGRect;
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/layers/CCTMXLayer;->updateTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;

    goto :goto_0
.end method

.method public setupTiles()V
    .locals 7

    .prologue
    .line 295
    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v5

    iput-object v5, v4, Lorg/cocos2d/layers/CCTMXTilesetInfo;->imageSize:Lorg/cocos2d/types/CGSize;

    .line 302
    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTexture2D;->setAliasTexParameters()V

    .line 305
    invoke-direct {p0}, Lorg/cocos2d/layers/CCTMXLayer;->parseInternalProperties()V

    .line 307
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    int-to-float v4, v3

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 329
    sget-boolean v4, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->maxGID_:I

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    iget v5, v5, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    if-lt v4, v5, :cond_0

    .line 330
    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->minGID_:I

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    iget v5, v5, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    if-ge v4, v5, :cond_6

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "TMX: Only 1 tilset per layer is supported"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 308
    :cond_1
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    int-to-float v4, v2

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_2
    int-to-float v4, v2

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 310
    .local v1, "pos":I
    iget-object v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 316
    .local v0, "gid":I
    invoke-static {v0}, Lorg/cocos2d/utils/CCFormatter;->swapIntToLittleEndian(I)I

    move-result v0

    .line 319
    if-eqz v0, :cond_3

    .line 320
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/cocos2d/layers/CCTMXLayer;->appendTileForGID(ILorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;

    .line 323
    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->minGID_:I

    if-ge v0, v4, :cond_4

    move v4, v0

    :goto_2
    iput v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->minGID_:I

    .line 324
    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->maxGID_:I

    if-le v0, v4, :cond_5

    .end local v0    # "gid":I
    :goto_3
    iput v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->maxGID_:I

    .line 308
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    .restart local v0    # "gid":I
    :cond_4
    iget v4, p0, Lorg/cocos2d/layers/CCTMXLayer;->minGID_:I

    goto :goto_2

    .line 324
    :cond_5
    iget v0, p0, Lorg/cocos2d/layers/CCTMXLayer;->maxGID_:I

    goto :goto_3

    .line 331
    .end local v0    # "gid":I
    .end local v1    # "pos":I
    .end local v2    # "x":I
    :cond_6
    return-void
.end method

.method public tileAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSprite;
    .locals 8
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v7, 0x0

    .line 154
    sget-boolean v5, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_0

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v5, v5, v7

    if-gez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "TMXLayer: invalid position"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 155
    :cond_1
    sget-boolean v5, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "TMXLayer: the tiles map has been released"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 157
    :cond_3
    const/4 v3, 0x0

    .line 158
    .local v3, "tile":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->tileGIDAt(Lorg/cocos2d/types/CGPoint;)I

    move-result v0

    .line 161
    .local v0, "gid":I
    if-eqz v0, :cond_4

    .line 162
    iget v5, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v6, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v7, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 163
    .local v4, "z":I
    invoke-virtual {p0, v4}, Lorg/cocos2d/layers/CCTMXLayer;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    .end local v3    # "tile":Lorg/cocos2d/nodes/CCSprite;
    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 166
    .restart local v3    # "tile":Lorg/cocos2d/nodes/CCSprite;
    if-nez v3, :cond_4

    .line 167
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->tileset:Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-virtual {v5, v0}, Lorg/cocos2d/layers/CCTMXTilesetInfo;->rectForGID(I)Lorg/cocos2d/types/CGRect;

    move-result-object v2

    .line 168
    .local v2, "rect":Lorg/cocos2d/types/CGRect;
    invoke-static {p0, v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    .line 169
    invoke-virtual {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->positionAt(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 170
    invoke-direct {p0, p1}, Lorg/cocos2d/layers/CCTMXLayer;->vertexZForPos(Lorg/cocos2d/types/CGPoint;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/cocos2d/nodes/CCSprite;->setVertexZ(F)V

    .line 171
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 172
    iget v5, p0, Lorg/cocos2d/layers/CCTMXLayer;->opacity_:I

    invoke-virtual {v3, v5}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 174
    invoke-direct {p0, v4}, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexForExistantZ(I)I

    move-result v1

    .line 175
    .local v1, "indexForZ":I
    invoke-virtual {p0, v3, v1, v4}, Lorg/cocos2d/layers/CCTMXLayer;->addSpriteWithoutQuad(Lorg/cocos2d/nodes/CCSprite;II)Lorg/cocos2d/nodes/CCSpriteSheet;

    .line 176
    const/4 v3, 0x0

    .line 179
    .end local v1    # "indexForZ":I
    .end local v2    # "rect":Lorg/cocos2d/types/CGRect;
    .end local v4    # "z":I
    :cond_4
    return-object v3
.end method

.method public tileGIDAt(Lorg/cocos2d/types/CGPoint;)I
    .locals 4
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v3, 0x0

    .line 188
    sget-boolean v1, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "TMXLayer: invalid position"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 189
    :cond_1
    sget-boolean v1, Lorg/cocos2d/layers/CCTMXLayer;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->atlasIndexArray_:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "TMXLayer: the tiles map has been released"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 191
    :cond_3
    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXLayer;->layerSize:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 192
    .local v0, "idx":I
    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXLayer;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    return v1
.end method
