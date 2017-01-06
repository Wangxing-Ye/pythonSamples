.class public Lorg/cocos2d/layers/CCTMXTiledMap;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCTMXTiledMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CCTMXOrientationHex:I = 0x1

.field public static final CCTMXOrientationIso:I = 0x2

.field public static final CCTMXOrientationOrtho:I

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mapOrientation_:I

.field mapSize_:Lorg/cocos2d/types/CGSize;

.field public objectGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCTMXObjectGroup;",
            ">;"
        }
    .end annotation
.end field

.field properties_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation
.end field

.field tileProperties_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field tileSize_:Lorg/cocos2d/types/CGSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/cocos2d/layers/CCTMXTiledMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/layers/CCTMXTiledMap;->$assertionsDisabled:Z

    .line 70
    const-class v0, Lorg/cocos2d/layers/CCTMXTiledMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/layers/CCTMXTiledMap;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "tmxFile"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 121
    if-nez p1, :cond_1

    .line 122
    sget-object v6, Lorg/cocos2d/layers/CCTMXTiledMap;->LOG_TAG:Ljava/lang/String;

    const-string v7, "TMXTiledMap: tmx file should not bi nil"

    invoke-static {v6, v7}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cocos2d/layers/CCTMXTiledMap;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 128
    invoke-static {p1}, Lorg/cocos2d/layers/CCTMXMapInfo;->formatWithTMXFile(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXMapInfo;

    move-result-object v5

    .line 130
    .local v5, "mapInfo":Lorg/cocos2d/layers/CCTMXMapInfo;
    sget-boolean v6, Lorg/cocos2d/layers/CCTMXTiledMap;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "TMXTiledMap: Map not found. Please check the filename."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 132
    :cond_2
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->mapSize:Lorg/cocos2d/types/CGSize;

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->mapSize_:Lorg/cocos2d/types/CGSize;

    .line 133
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->tileSize_:Lorg/cocos2d/types/CGSize;

    .line 134
    iget v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    iput v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->mapOrientation_:I

    .line 135
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    .line 136
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->properties:Ljava/util/HashMap;

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->properties_:Ljava/util/HashMap;

    .line 137
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->tileProperties:Ljava/util/HashMap;

    iput-object v6, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->tileProperties_:Ljava/util/HashMap;

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, "idx":I
    iget-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/layers/CCTMXLayerInfo;

    .line 142
    .local v4, "layerInfo":Lorg/cocos2d/layers/CCTMXLayerInfo;
    iget-boolean v6, v4, Lorg/cocos2d/layers/CCTMXLayerInfo;->visible:Z

    if-eqz v6, :cond_3

    .line 143
    invoke-direct {p0, v4, v5}, Lorg/cocos2d/layers/CCTMXTiledMap;->parseLayer(Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXLayer;

    move-result-object v0

    .line 144
    .local v0, "child":Lorg/cocos2d/layers/CCTMXLayer;
    invoke-virtual {p0, v0, v3, v3}, Lorg/cocos2d/layers/CCTMXTiledMap;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 147
    invoke-virtual {v0}, Lorg/cocos2d/layers/CCTMXLayer;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 148
    .local v1, "childSize":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCTMXTiledMap;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 149
    .local v2, "currentSize":Lorg/cocos2d/types/CGSize;
    iget v6, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget v8, v1, Lorg/cocos2d/types/CGSize;->width:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4

    iget v6, v2, Lorg/cocos2d/types/CGSize;->width:F

    :goto_1
    iput v6, v2, Lorg/cocos2d/types/CGSize;->width:F

    .line 150
    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v8, v1, Lorg/cocos2d/types/CGSize;->height:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    iget v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    :goto_2
    iput v6, v2, Lorg/cocos2d/types/CGSize;->height:F

    .line 151
    invoke-virtual {p0, v2}, Lorg/cocos2d/layers/CCTMXTiledMap;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_4
    iget v6, v1, Lorg/cocos2d/types/CGSize;->width:F

    goto :goto_1

    .line 150
    :cond_5
    iget v6, v1, Lorg/cocos2d/types/CGSize;->height:F

    goto :goto_2
.end method

.method private parseLayer(Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXLayer;
    .locals 3
    .param p1, "layerInfo"    # Lorg/cocos2d/layers/CCTMXLayerInfo;
    .param p2, "mapInfo"    # Lorg/cocos2d/layers/CCTMXMapInfo;

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/layers/CCTMXTiledMap;->tilesetForLayer(Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXTilesetInfo;

    move-result-object v1

    .line 208
    .local v1, "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    invoke-static {v1, p1, p2}, Lorg/cocos2d/layers/CCTMXLayer;->layer(Lorg/cocos2d/layers/CCTMXTilesetInfo;Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXLayer;

    move-result-object v0

    .line 211
    .local v0, "layer":Lorg/cocos2d/layers/CCTMXLayer;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lorg/cocos2d/layers/CCTMXLayerInfo;->ownTiles:Z

    .line 213
    invoke-virtual {v0}, Lorg/cocos2d/layers/CCTMXLayer;->setupTiles()V

    .line 215
    return-object v0
.end method

.method public static tiledMap(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXTiledMap;
    .locals 1
    .param p0, "tmxFile"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lorg/cocos2d/layers/CCTMXTiledMap;

    invoke-direct {v0, p0}, Lorg/cocos2d/layers/CCTMXTiledMap;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private tilesetForLayer(Lorg/cocos2d/layers/CCTMXLayerInfo;Lorg/cocos2d/layers/CCTMXMapInfo;)Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .locals 11
    .param p1, "layerInfo"    # Lorg/cocos2d/layers/CCTMXLayerInfo;
    .param p2, "mapInfo"    # Lorg/cocos2d/layers/CCTMXMapInfo;

    .prologue
    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    iget-object v3, p1, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    .line 222
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    iget-object v8, p2, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    iget-object v9, p2, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 223
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/cocos2d/layers/CCTMXTilesetInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-nez v8, :cond_1

    .line 248
    sget-object v8, Lorg/cocos2d/layers/CCTMXTiledMap;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cocos2d: Warning: TMX Layer \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Lorg/cocos2d/layers/CCTMXLayerInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has no tiles"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 249
    .end local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .local v5, "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    :goto_0
    return-object v5

    .line 224
    .end local v5    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .restart local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    check-cast v4, Lorg/cocos2d/layers/CCTMXTilesetInfo;

    .line 225
    .restart local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    int-to-float v8, v7

    iget v9, v3, Lorg/cocos2d/types/CGSize;->height:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 226
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    int-to-float v8, v6

    iget v9, v3, Lorg/cocos2d/types/CGSize;->width:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 225
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    :cond_2
    int-to-float v8, v6

    iget v9, v3, Lorg/cocos2d/types/CGSize;->width:F

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 228
    .local v2, "pos":I
    iget-object v8, p1, Lorg/cocos2d/layers/CCTMXLayerInfo;->tiles:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 234
    .local v0, "gid":I
    invoke-static {v0}, Lorg/cocos2d/utils/CCFormatter;->swapIntToLittleEndian(I)I

    move-result v0

    .line 237
    if-eqz v0, :cond_3

    .line 240
    iget v8, v4, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    if-lt v0, v8, :cond_3

    move-object v5, v4

    .line 241
    .end local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .restart local v5    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    goto :goto_0

    .line 226
    .end local v5    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .restart local v4    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final getMapOrientation()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->mapOrientation_:I

    return v0
.end method

.method public final getMapSize()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->mapSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public final getProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->properties_:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTileSize()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->tileSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public groupNamed(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXObjectGroup;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lorg/cocos2d/layers/CCTMXTiledMap;->objectGroupNamed(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXObjectGroup;

    move-result-object v0

    return-object v0
.end method

.method public layerNamed(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXLayer;
    .locals 5
    .param p1, "layerName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->children_:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 171
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v2

    .line 171
    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v1

    .line 163
    check-cast v0, Lorg/cocos2d/layers/CCTMXLayer;

    .line 164
    .local v0, "layer":Lorg/cocos2d/layers/CCTMXLayer;
    if-eqz v0, :cond_1

    .line 165
    iget-object v4, v0, Lorg/cocos2d/layers/CCTMXLayer;->layerName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method public objectGroupNamed(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXObjectGroup;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v1, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 176
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/layers/CCTMXObjectGroup;

    .line 177
    .local v0, "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    iget-object v2, v0, Lorg/cocos2d/layers/CCTMXObjectGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public propertiesForGID(I)Ljava/util/HashMap;
    .locals 2
    .param p1, "GID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->tileProperties_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public propertyNamed(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->properties_:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    iput-object p1, p0, Lorg/cocos2d/layers/CCTMXTiledMap;->properties_:Ljava/util/HashMap;

    .line 109
    return-void
.end method
