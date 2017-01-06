.class public Lorg/cocos2d/nodes/CCSpriteSheet;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCSpriteSheet.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCTextureProtocol;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final defaultCapacity:I = 0x1d


# instance fields
.field blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field descendants_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSprite;",
            ">;"
        }
    .end annotation
.end field

.field protected textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCSpriteSheet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fileImage"    # Ljava/lang/String;
    .param p2, "capacity"    # I

    .prologue
    .line 102
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    .line 103
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;I)V
    .locals 3
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "capacity"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 87
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 88
    new-instance v0, Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-direct {v0, p1, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    .line 90
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSpriteSheet;->updateBlendFunc()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->children_:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method private increaseAtlasCapacity()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v0, v1, 0x3

    .line 288
    .local v0, "quantity":I
    const-string v1, "CCSpriteSheet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resizing TextureAtlas capacity from ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->resizeCapacity(I)V

    .line 294
    return-void
.end method

.method public static spriteSheet(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 2
    .param p0, "fileImage"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteSheet;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static spriteSheet(Ljava/lang/String;I)Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 1
    .param p0, "fileImage"    # Ljava/lang/String;
    .param p1, "capacity"    # I

    .prologue
    .line 80
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 2
    .param p0, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 57
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteSheet;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    return-object v0
.end method

.method public static spriteSheet(Lorg/cocos2d/opengl/CCTexture2D;I)Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 1
    .param p0, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "capacity"    # I

    .prologue
    .line 64
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteSheet;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Lorg/cocos2d/opengl/CCTexture2D;I)V

    return-object v0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I
    .param p3, "aTag"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    move-object v1, p1

    .line 177
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 179
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p0, v1, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->atlasIndex(Lorg/cocos2d/nodes/CCSprite;I)I

    move-result v0

    .line 180
    .local v0, "index":I
    invoke-virtual {p0, v1, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->insertChild(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 182
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->updateColor()V

    .line 184
    return-object p1
.end method

.method protected addQuadFromSprite(Lorg/cocos2d/nodes/CCSprite;I)V
    .locals 4
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "index"    # I

    .prologue
    .line 475
    sget-boolean v2, Lorg/cocos2d/nodes/CCSpriteSheet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 476
    :cond_0
    sget-boolean v2, Lorg/cocos2d/nodes/CCSpriteSheet;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "CCSpriteSheet only supports CCSprites as children"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 479
    :cond_1
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSpriteSheet;->increaseAtlasCapacity()V

    .line 478
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTotalQuads()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 485
    invoke-virtual {p1, p0}, Lorg/cocos2d/nodes/CCSprite;->useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V

    .line 486
    iput p2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 488
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getTexCoords()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 489
    .local v0, "texCordBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getVertices()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 490
    .local v1, "vertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2, v0, v1, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->insertQuad(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V

    .line 494
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->updateTransform()V

    .line 495
    return-void
.end method

.method protected addSpriteWithoutQuad(Lorg/cocos2d/nodes/CCSprite;II)Lorg/cocos2d/nodes/CCSpriteSheet;
    .locals 4
    .param p1, "child"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "z"    # I
    .param p3, "aTag"    # I

    .prologue
    .line 501
    sget-boolean v2, Lorg/cocos2d/nodes/CCSpriteSheet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Argument must be non-nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 502
    :cond_0
    sget-boolean v2, Lorg/cocos2d/nodes/CCSpriteSheet;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "CCSpriteSheet only supports CCSprites as children"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 505
    :cond_1
    iput p2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "i":I
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 514
    :cond_2
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 517
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 518
    return-object p0

    .line 509
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 510
    .local v0, "c":Lorg/cocos2d/nodes/CCSprite;
    iget v3, v0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    if-ge v3, p2, :cond_2

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public atlasIndex(Lorg/cocos2d/nodes/CCSprite;I)I
    .locals 7
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "z"    # I

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "brothers":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 347
    .local v1, "childIndex":I
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v6

    if-ne v6, p0, :cond_1

    const/4 v2, 0x1

    .line 348
    .local v2, "ignoreParent":Z
    :goto_0
    const/4 v4, 0x0

    .line 349
    .local v4, "previous":Lorg/cocos2d/nodes/CCSprite;
    if-lez v1, :cond_0

    .line 350
    add-int/lit8 v6, v1, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "previous":Lorg/cocos2d/nodes/CCSprite;
    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 353
    .restart local v4    # "previous":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    if-eqz v2, :cond_3

    .line 354
    if-nez v1, :cond_2

    .line 377
    :goto_1
    return v5

    .end local v2    # "ignoreParent":Z
    .end local v4    # "previous":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    move v2, v5

    .line 347
    goto :goto_0

    .line 357
    .restart local v2    # "ignoreParent":Z
    .restart local v4    # "previous":Lorg/cocos2d/nodes/CCSprite;
    :cond_2
    invoke-virtual {p0, v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->highestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    :cond_3
    if-nez v1, :cond_5

    .line 363
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 366
    .local v3, "p":Lorg/cocos2d/nodes/CCSprite;
    if-gez p2, :cond_4

    .line 367
    iget v5, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    goto :goto_1

    .line 369
    :cond_4
    iget v5, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 372
    .end local v3    # "p":Lorg/cocos2d/nodes/CCSprite;
    :cond_5
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v5

    if-gez v5, :cond_6

    if-ltz p2, :cond_7

    :cond_6
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v5

    if-ltz v5, :cond_8

    if-ltz p2, :cond_8

    .line 373
    :cond_7
    invoke-virtual {p0, v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->highestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    :cond_8
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 377
    .restart local v3    # "p":Lorg/cocos2d/nodes/CCSprite;
    iget v5, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public createSprite(Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;
    .locals 2
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 115
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0, p0}, Lorg/cocos2d/nodes/CCSprite;->useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V

    .line 117
    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v7, 0x303

    const/4 v6, 0x1

    .line 242
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTotalQuads()I

    move-result v4

    if-nez v4, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 246
    .local v1, "descendants_Num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_4

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, "newBlend":Z
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v4, v4, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v4, v4, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v4, v7, :cond_3

    .line 273
    :cond_2
    const/4 v3, 0x1

    .line 274
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v4, v4, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v5, v5, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 277
    :cond_3
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v4, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->drawQuads(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 278
    if-eqz v3, :cond_0

    .line 279
    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    .line 247
    .end local v3    # "newBlend":Z
    :cond_4
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 251
    .local v0, "child":Lorg/cocos2d/nodes/CCSprite;
    iget-boolean v4, v0, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    if-eqz v4, :cond_5

    .line 252
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->updateTransform()V

    .line 246
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    return-object v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    return-object v0
.end method

.method public getTextureAtlas()Lorg/cocos2d/opengl/CCTextureAtlas;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    return-object v0
.end method

.method public highestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I
    .locals 3
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    if-nez v0, :cond_0

    .line 323
    iget v2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 329
    :goto_0
    return v2

    .line 325
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 326
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 327
    iget v2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    goto :goto_0

    .line 329
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v2}, Lorg/cocos2d/nodes/CCSpriteSheet;->highestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I

    move-result v2

    goto :goto_0
.end method

.method public initSprite(Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;
    .locals 2
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/cocos2d/nodes/CCSprite;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 164
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0, p0}, Lorg/cocos2d/nodes/CCSprite;->useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V

    .line 165
    return-object v0
.end method

.method protected insertChild(Lorg/cocos2d/nodes/CCSprite;I)V
    .locals 7
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "index"    # I

    .prologue
    .line 383
    invoke-virtual {p1, p0}, Lorg/cocos2d/nodes/CCSprite;->useSpriteSheetRender(Lorg/cocos2d/nodes/CCSpriteSheet;)V

    .line 384
    iput p2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 385
    const/4 v4, 0x1

    iput-boolean v4, p1, Lorg/cocos2d/nodes/CCSprite;->dirty_:Z

    .line 387
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTotalQuads()I

    move-result v4

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSpriteSheet;->increaseAtlasCapacity()V

    .line 391
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getTexCoords()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getVertices()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p2}, Lorg/cocos2d/opengl/CCTextureAtlas;->insertQuad(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;I)V

    .line 392
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    add-int/lit8 v1, p2, 0x1

    .line 397
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 403
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 410
    :cond_1
    return-void

    .line 398
    :cond_2
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 399
    .local v0, "child":Lorg/cocos2d/nodes/CCSprite;
    iget v4, v0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "child":Lorg/cocos2d/nodes/CCSprite;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .local v3, "o":Lorg/cocos2d/nodes/CCNode;
    move-object v0, v3

    .line 405
    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 406
    .restart local v0    # "child":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lorg/cocos2d/nodes/CCSpriteSheet;->atlasIndex(Lorg/cocos2d/nodes/CCSprite;I)I

    move-result v2

    .line 407
    .local v2, "idx":I
    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/nodes/CCSpriteSheet;->insertChild(Lorg/cocos2d/nodes/CCSprite;I)V

    goto :goto_1
.end method

.method public lowestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I
    .locals 3
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 335
    .local v1, "count":I
    if-nez v1, :cond_0

    .line 336
    iget v2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 338
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v2}, Lorg/cocos2d/nodes/CCSpriteSheet;->lowestAtlasIndexInChild(Lorg/cocos2d/nodes/CCSprite;)I

    move-result v2

    goto :goto_0
.end method

.method public rebuildIndexInOrder(Lorg/cocos2d/nodes/CCSprite;I)I
    .locals 5
    .param p1, "node"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "index"    # I

    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 306
    if-eq p1, p0, :cond_1

    .line 307
    iput p2, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 308
    add-int/lit8 p2, p2, 0x1

    .line 311
    :cond_1
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 317
    return p2

    .line 298
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "n":Lorg/cocos2d/nodes/CCNode;
    move-object v2, v0

    .line 299
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 300
    .local v2, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v4

    if-gez v4, :cond_0

    .line 301
    invoke-virtual {p0, v2, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->rebuildIndexInOrder(Lorg/cocos2d/nodes/CCSprite;I)I

    move-result p2

    goto :goto_0

    .line 311
    .end local v0    # "n":Lorg/cocos2d/nodes/CCNode;
    .end local v2    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCNode;

    .local v1, "o":Lorg/cocos2d/nodes/CCNode;
    move-object v2, v1

    .line 312
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 313
    .restart local v2    # "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getZOrder()I

    move-result v4

    if-ltz v4, :cond_2

    .line 314
    invoke-virtual {p0, v2, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->rebuildIndexInOrder(Lorg/cocos2d/nodes/CCSprite;I)I

    move-result p2

    goto :goto_1
.end method

.method public removeAllChildren(Z)V
    .locals 4
    .param p1, "doCleanup"    # Z

    .prologue
    .line 229
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->children_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCNode;->removeAllChildren(Z)V

    .line 236
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->removeAllQuads()V

    .line 238
    return-void

    .line 229
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "node":Lorg/cocos2d/nodes/CCNode;
    move-object v1, v0

    .line 230
    check-cast v1, Lorg/cocos2d/nodes/CCSprite;

    .line 231
    .local v1, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->useSelfRender()V

    goto :goto_0
.end method

.method public removeChild(Lorg/cocos2d/nodes/CCNode;Z)V
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "doCleanup"    # Z

    .prologue
    .line 206
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 208
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSpriteFromAtlas(Lorg/cocos2d/nodes/CCSprite;)V

    .line 215
    invoke-super {p0, v0, p2}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    goto :goto_0
.end method

.method public removeChildAtIndex(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "doCleanup"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->children_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 223
    .local v0, "sprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p0, v0, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 224
    return-void
.end method

.method public removeSpriteFromAtlas(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 6
    .param p1, "sprite"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 415
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    iget v5, p1, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    invoke-virtual {v4, v5}, Lorg/cocos2d/opengl/CCTextureAtlas;->removeQuad(I)V

    .line 418
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->useSelfRender()V

    .line 420
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 421
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 422
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 427
    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 434
    .end local v0    # "count":I
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 435
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 439
    :cond_1
    return-void

    .line 428
    .restart local v0    # "count":I
    :cond_2
    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->descendants_:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 429
    .local v3, "s":Lorg/cocos2d/nodes/CCSprite;
    iget v4, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/cocos2d/nodes/CCSprite;->atlasIndex:I

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "count":I
    .end local v3    # "s":Lorg/cocos2d/nodes/CCSprite;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .line 436
    .local v2, "o":Lorg/cocos2d/nodes/CCNode;
    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .end local v2    # "o":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {p0, v2}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeSpriteFromAtlas(Lorg/cocos2d/nodes/CCSprite;)V

    goto :goto_1
.end method

.method public reorderChild(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 1
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 193
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getZOrder()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCSpriteSheet;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 198
    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/nodes/CCSpriteSheet;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 462
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 463
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 450
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 451
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSpriteSheet;->updateBlendFunc()V

    .line 452
    return-void
.end method

.method public updateBlendFunc()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 444
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x303

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 446
    :cond_0
    return-void
.end method

.method public visit(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->visible_:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 137
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v0}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v0, p1}, Lorg/cocos2d/grid/CCGridBase;->beforeDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->transformAncestors(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->transform(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 144
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 146
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v0}, Lorg/cocos2d/grid/CCGridBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteSheet;->grid_:Lorg/cocos2d/grid/CCGridBase;

    invoke-virtual {v0, p1, p0}, Lorg/cocos2d/grid/CCGridBase;->afterDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/nodes/CCNode;)V

    .line 150
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method
