.class public Lorg/cocos2d/nodes/CCSpriteFrameCache;
.super Ljava/lang/Object;
.source "CCSpriteFrameCache.java"


# static fields
.field private static sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;


# instance fields
.field plistImgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field spriteFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private addSpriteFrame(Lorg/cocos2d/nodes/CCSpriteFrame;Ljava/lang/String;)V
    .locals 1
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "frameName"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public static purgeSharedSpriteFrameCache()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->removeAllSpriteFrames()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 59
    :cond_0
    return-void
.end method

.method private removeSpriteFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public static sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;-><init>()V

    sput-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 40
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache_:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    return-object v0
.end method


# virtual methods
.method public addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 198
    :goto_0
    return-object v4

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, "texturePath":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 192
    .local v0, "i":I
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-gt v0, v4, :cond_1

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    :cond_1
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    .line 196
    .local v1, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {p0, p1, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;Lorg/cocos2d/opengl/CCTexture2D;)Ljava/util/Set;

    move-result-object v3

    .line 197
    .local v3, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    goto :goto_0
.end method

.method public addSpriteFrames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "imageFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 218
    :goto_0
    return-object v4

    .line 211
    :cond_0
    const/4 v2, 0x0

    .line 212
    .local v2, "texturePath":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 213
    .local v0, "i":I
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-gt v0, v4, :cond_1

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_1
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    .line 216
    .local v1, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {p0, p1, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;Lorg/cocos2d/opengl/CCTexture2D;)Ljava/util/Set;

    move-result-object v3

    .line 217
    .local v3, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    goto :goto_0
.end method

.method public addSpriteFrames(Ljava/lang/String;Lorg/cocos2d/opengl/CCTexture2D;)Ljava/util/Set;
    .locals 2
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/cocos2d/opengl/CCTexture2D;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Lorg/cocos2d/utils/PlistParser;->parse(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 227
    .local v0, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/util/HashMap;Lorg/cocos2d/opengl/CCTexture2D;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public addSpriteFrames(Ljava/util/HashMap;Lorg/cocos2d/opengl/CCTexture2D;)Ljava/util/Set;
    .locals 35
    .param p2, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/cocos2d/opengl/CCTexture2D;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v29, "metadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 76
    .local v12, "metadataDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v29, "frames"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 78
    .local v10, "framesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 81
    .local v6, "format":I
    if-eqz v12, :cond_0

    .line 82
    const-string v29, "format"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 85
    :cond_0
    if-ltz v6, :cond_1

    const/16 v29, 0x3

    move/from16 v0, v29

    if-le v6, v0, :cond_2

    .line 86
    :cond_1
    const-string v29, "CCSpriteFrameCache"

    .line 87
    const-string v30, "Unsupported Zwoptex plist file format."

    .line 86
    invoke-static/range {v29 .. v30}, Lorg/cocos2d/config/ccMacros;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_3

    .line 161
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v29

    return-object v29

    .line 91
    :cond_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 93
    .local v9, "frameDictEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 94
    .local v8, "frameDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v20, 0x0

    .line 95
    .local v20, "spriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-nez v6, :cond_5

    .line 96
    const-string v29, "x"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v27

    .line 97
    .local v27, "x":F
    const-string v29, "y"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v28

    .line 98
    .local v28, "y":F
    const-string v29, "width"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v26

    .line 99
    .local v26, "w":F
    const-string v29, "height"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 100
    .local v11, "h":F
    const-string v29, "offsetX"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v16

    .line 101
    .local v16, "ox":F
    const-string v29, "offsetY"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->floatValue()F

    move-result v17

    .line 103
    .local v17, "oy":F
    const/4 v15, 0x0

    .line 104
    .local v15, "ow":I
    const/4 v14, 0x0

    .line 107
    .local v14, "oh":I
    :try_start_0
    const-string v29, "originalWidth"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 108
    const-string v29, "originalHeight"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 114
    :goto_1
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 115
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 118
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v0, v1, v2, v11}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v29

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-static/range {v16 .. v17}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v32

    int-to-float v0, v15

    move/from16 v33, v0

    int-to-float v0, v14

    move/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v20

    .line 159
    .end local v11    # "h":F
    .end local v14    # "oh":I
    .end local v15    # "ow":I
    .end local v16    # "ox":F
    .end local v17    # "oy":F
    .end local v26    # "w":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 109
    .restart local v11    # "h":F
    .restart local v14    # "oh":I
    .restart local v15    # "ow":I
    .restart local v16    # "ox":F
    .restart local v17    # "oy":F
    .restart local v26    # "w":F
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :catch_0
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/Exception;
    const-string v29, "cocos2d"

    const-string v31, "WARNING: originalWidth/Height not found on the CCSpriteFrame. AnchorPoint won\'t work as expected. Regenerate the .plist"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "h":F
    .end local v14    # "oh":I
    .end local v15    # "ow":I
    .end local v16    # "ox":F
    .end local v17    # "oy":F
    .end local v26    # "w":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_5
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v6, v0, :cond_6

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v6, v0, :cond_8

    .line 121
    :cond_6
    const-string v29, "frame"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGRectFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGRect;

    move-result-object v7

    .line 122
    .local v7, "frame":Lorg/cocos2d/types/CGRect;
    const/16 v18, 0x0

    .line 125
    .local v18, "rotated":Z
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v6, v0, :cond_7

    .line 126
    const-string v29, "rotated"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Boolean;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 128
    :cond_7
    const-string v29, "offset"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGPointFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGPoint;

    move-result-object v13

    .line 129
    .local v13, "offset":Lorg/cocos2d/types/CGPoint;
    const-string v29, "sourceSize"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGSizeFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v19

    .line 132
    .local v19, "sourceSize":Lorg/cocos2d/types/CGSize;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-static {v0, v7, v1, v13, v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v20

    goto :goto_2

    .line 133
    .end local v7    # "frame":Lorg/cocos2d/types/CGRect;
    .end local v13    # "offset":Lorg/cocos2d/types/CGPoint;
    .end local v18    # "rotated":Z
    .end local v19    # "sourceSize":Lorg/cocos2d/types/CGSize;
    :cond_8
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v6, v0, :cond_4

    .line 135
    const-string v29, "spriteSize"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGSizeFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v22

    .line 136
    .local v22, "spriteSize":Lorg/cocos2d/types/CGSize;
    const-string v29, "spriteOffset"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGPointFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    .line 137
    .local v21, "spriteOffset":Lorg/cocos2d/types/CGPoint;
    const-string v29, "spriteSourceSize"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGSizeFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v23

    .line 138
    .local v23, "spriteSourceSize":Lorg/cocos2d/types/CGSize;
    const-string v29, "textureRect"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lorg/cocos2d/utils/GeometryUtil;->CGRectFromString(Ljava/lang/String;)Lorg/cocos2d/types/CGRect;

    move-result-object v24

    .line 139
    .local v24, "textureRect":Lorg/cocos2d/types/CGRect;
    const-string v29, "textureRotated"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Boolean;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 154
    .local v25, "textureRotated":Z
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v31, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v32, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v29

    .line 155
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 153
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v20

    goto/16 :goto_2
.end method

.method public addSpriteFrames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "plistArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    return-void

    .line 252
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "plist":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    goto :goto_0
.end method

.method public addSpriteFrames([Ljava/lang/String;)V
    .locals 3
    .param p1, "plistArray"    # [Ljava/lang/String;

    .prologue
    .line 244
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 247
    return-void

    .line 244
    :cond_0
    aget-object v0, p1, v1

    .line 245
    .local v0, "plist":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public converToImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "texturePath":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 491
    .local v0, "i":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    :cond_0
    return-object v1
.end method

.method public converToPlistPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "plistPath":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 504
    .local v0, "i":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".plist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_0
    return-object v1
.end method

.method public createSprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 480
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    return-object v1
.end method

.method public getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 331
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-nez v0, :cond_0

    .line 332
    const-string v1, "CCSpriteFrameCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Frame not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    return-object v0
.end method

.method public getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 415
    const/4 v3, 0x0

    .line 417
    .local v3, "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v4, "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_1
    iget-object v5, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 419
    iget-object v5, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 420
    .local v1, "frames":[Lorg/cocos2d/nodes/CCSpriteFrame;
    array-length v7, v1

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    move-object v3, v4

    .line 427
    .end local v1    # "frames":[Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_1
    return-object v3

    .line 420
    .end local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v1    # "frames":[Lorg/cocos2d/nodes/CCSpriteFrame;
    .restart local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    aget-object v2, v1, v5

    .line 421
    .local v2, "spriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "frames":[Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v2    # "spriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_2

    .end local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_1
    move-object v3, v4

    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v3    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_1
.end method

.method public getSpriteFrames(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "startFrameIdx"    # I
    .param p4, "endFrameIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v4, 0x1

    .line 380
    .local v4, "isLoad":Z
    const/4 v5, 0x0

    .line 383
    .local v5, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v6, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v3, p3

    .local v3, "i":I
    :goto_0
    if-le v3, p4, :cond_0

    .line 401
    :goto_1
    if-nez v4, :cond_4

    .line 403
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 404
    const/4 v5, 0x0

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_2
    move-object v7, v5

    .line 407
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :goto_3
    return-object v7

    .line 387
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    .line 390
    .local v2, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 391
    if-nez v2, :cond_1

    .line 393
    const/4 v4, 0x0

    .line 394
    goto :goto_1

    .line 385
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v3    # "i":I
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    if-nez v4, :cond_2

    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 404
    const/4 v5, 0x0

    .line 399
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 401
    :goto_5
    if-nez v4, :cond_3

    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 404
    const/4 v5, 0x0

    .line 406
    :cond_3
    throw v7

    .line 400
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_5

    .line 397
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_4

    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_4
    move-object v5, v6

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_2
.end method

.method public varargs getSpriteFrames(Ljava/lang/String;[I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "sequence"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    array-length v0, p2

    .line 460
    .local v0, "count":I
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 461
    .local v3, "plistFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 462
    .local v4, "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 469
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "plistFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_1
    return-object v4

    .line 463
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "plistFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    aget v5, p2, v2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "plistFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v4    # "spriteFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public varargs getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    const/4 v4, 0x1

    .line 344
    .local v4, "isLoad":Z
    const/4 v5, 0x0

    .line 346
    .local v5, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_0
    array-length v0, p1

    .line 347
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v6, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 361
    :goto_1
    if-nez v4, :cond_4

    .line 362
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 363
    const/4 v5, 0x0

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_2
    move-object v7, v5

    .line 366
    .end local v0    # "count":I
    .end local v3    # "i":I
    :goto_3
    return-object v7

    .line 349
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    :try_start_1
    aget-object v7, p1, v3

    invoke-virtual {p0, v7}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    .line 350
    .local v2, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    if-nez v2, :cond_2

    .line 352
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Frame not found "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/cocos2d/config/ccMacros;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 357
    .end local v2    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 358
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    if-nez v4, :cond_1

    .line 362
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 363
    const/4 v5, 0x0

    .line 359
    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 348
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "count":I
    .restart local v2    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "count":I
    .end local v2    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v3    # "i":I
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catchall_0
    move-exception v7

    .line 361
    :goto_5
    if-nez v4, :cond_3

    .line 362
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 363
    const/4 v5, 0x0

    .line 365
    :cond_3
    throw v7

    .line 360
    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_5

    .line 357
    .end local v0    # "count":I
    .end local v3    # "i":I
    :catch_1
    move-exception v1

    goto :goto_4

    .end local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_4
    move-object v5, v6

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v5    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyPlist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSpriteFrames()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    return-void
.end method

.method public removeSpriteFrames()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 266
    return-void
.end method

.method public removeSpriteFrames(Ljava/lang/String;)V
    .locals 8
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v3, 0x0

    .line 302
    .local v3, "frameDictKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Set;

    move-object v3, v0

    .line 303
    if-eqz v3, :cond_1

    .line 304
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 305
    .local v5, "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 316
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 317
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->plistImgNames:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v5    # "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 307
    .restart local v5    # "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/cocos2d/nodes/CCSpriteFrameCache;->spriteFrames:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 309
    .local v2, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v6

    .line 311
    .local v6, "tex_":Lorg/cocos2d/opengl/CCTexture2D;
    sget-object v7, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v6, v7}, Lorg/cocos2d/opengl/CCTexture2D;->releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 312
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/cocos2d/nodes/CCTextureCache;->removeTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 313
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/cocos2d/nodes/CCTextureCache;->removeTexture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v2    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "tex_":Lorg/cocos2d/opengl/CCTexture2D;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public spriteFrameByName(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    return-object v0
.end method
