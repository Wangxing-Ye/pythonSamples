.class public Lorg/cocos2d/nodes/CCTileMapAtlas;
.super Lorg/cocos2d/nodes/CCAtlasNode;
.source "CCTileMapAtlas.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private itemsToRender:I

.field private posToAtlasIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/cocos2d/nodes/CCTileMapAtlas;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lorg/cocos2d/nodes/CCAtlasNode;-><init>(Ljava/lang/String;III)V

    .line 63
    invoke-direct {p0, p2}, Lorg/cocos2d/nodes/CCTileMapAtlas;->loadTGAfile(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCTileMapAtlas;->calculateItemsToRender()V

    .line 68
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    iget v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->resizeCapacity(I)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    .line 71
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCTileMapAtlas;->updateAtlasValues()V

    .line 72
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v0, v0, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    iget v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v1, v1, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    iget v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCTileMapAtlas;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 73
    return-void
.end method

.method private calculateItemsToRender()V
    .locals 8

    .prologue
    .line 76
    sget-boolean v4, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "tgaInfo must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 78
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    .line 79
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    if-lt v2, v4, :cond_1

    .line 89
    return-void

    .line 80
    :cond_1
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    if-lt v3, v4, :cond_2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v3

    add-int v0, v2, v4

    .line 82
    .local v0, "p":I
    new-instance v1, Lorg/cocos2d/types/ccColor3B;

    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v5, v0, 0x0

    aget-byte v4, v4, v5

    .line 83
    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    .line 84
    iget-object v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v6, v6, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    .line 82
    invoke-direct {v1, v4, v5, v6}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    .line 85
    .local v1, "value":Lorg/cocos2d/types/ccColor3B;
    iget v4, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    if-eqz v4, :cond_3

    .line 86
    iget v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private loadTGAfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "file must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 96
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/opengl/TGA;->load(Ljava/io/InputStream;)Lorg/cocos2d/opengl/TGA$ImageTGA;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static tilemap(Ljava/lang/String;Ljava/lang/String;II)Lorg/cocos2d/nodes/CCTileMapAtlas;
    .locals 1
    .param p0, "tile"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 53
    new-instance v0, Lorg/cocos2d/nodes/CCTileMapAtlas;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/nodes/CCTileMapAtlas;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method private updateAtlas(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccColor3B;I)V
    .locals 9
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "value"    # Lorg/cocos2d/types/ccColor3B;
    .param p3, "idx"    # I

    .prologue
    const/4 v8, 0x0

    .line 153
    new-instance v2, Lorg/cocos2d/types/ccQuad2;

    invoke-direct {v2}, Lorg/cocos2d/types/ccQuad2;-><init>()V

    .line 154
    .local v2, "texCoord":Lorg/cocos2d/types/ccQuad2;
    new-instance v3, Lorg/cocos2d/types/ccQuad3;

    invoke-direct {v3}, Lorg/cocos2d/types/ccQuad3;-><init>()V

    .line 155
    .local v3, "vertex":Lorg/cocos2d/types/ccQuad3;
    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    .line 156
    .local v4, "x":I
    iget v5, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    .line 157
    .local v5, "y":I
    iget v6, p2, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsPerRow:I

    rem-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepX:F

    mul-float v1, v6, v7

    .line 158
    .local v1, "row":F
    iget v6, p2, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsPerRow:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepY:F

    mul-float v0, v6, v7

    .line 160
    .local v0, "col":F
    iput v1, v2, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    .line 161
    iput v0, v2, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    .line 162
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepX:F

    add-float/2addr v6, v1

    iput v6, v2, Lorg/cocos2d/types/ccQuad2;->br_x:F

    .line 163
    iput v0, v2, Lorg/cocos2d/types/ccQuad2;->br_y:F

    .line 164
    iput v1, v2, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    .line 165
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepY:F

    add-float/2addr v6, v0

    iput v6, v2, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    .line 166
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepX:F

    add-float/2addr v6, v1

    iput v6, v2, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    .line 167
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->texStepY:F

    add-float/2addr v6, v0

    iput v6, v2, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    .line 169
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 170
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 171
    iput v8, v3, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 172
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    mul-int/2addr v6, v4

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 173
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    mul-int/2addr v6, v5

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 174
    iput v8, v3, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 175
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    mul-int/2addr v6, v4

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 176
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 177
    iput v8, v3, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 178
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    mul-int/2addr v6, v4

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 179
    iget v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v3, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 180
    iput v8, v3, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 182
    iget-object v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v6, v2, v3, p3}, Lorg/cocos2d/opengl/CCTextureAtlas;->updateQuad(Lorg/cocos2d/types/ccQuad2;Lorg/cocos2d/types/ccQuad3;I)V

    .line 183
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    invoke-static {v0}, Lorg/cocos2d/opengl/TGA;->destroy(Lorg/cocos2d/opengl/TGA$ImageTGA;)V

    .line 228
    :cond_0
    iput-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    .line 229
    iput-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    return-void
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseMap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    invoke-static {v0}, Lorg/cocos2d/opengl/TGA;->destroy(Lorg/cocos2d/opengl/TGA$ImageTGA;)V

    .line 219
    :cond_0
    iput-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    .line 221
    iput-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    .line 222
    return-void
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 244
    return-void
.end method

.method public setTile(Lorg/cocos2d/types/ccColor3B;Lorg/cocos2d/types/ccGridSize;)V
    .locals 8
    .param p1, "tile"    # Lorg/cocos2d/types/ccColor3B;
    .param p2, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 127
    sget-boolean v2, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "tgaInfo must not be null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 128
    :cond_0
    sget-boolean v2, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "posToAtlasIndex must not be nil"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 129
    :cond_1
    sget-boolean v2, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v3, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v3, v3, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Invalid position.x"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 130
    :cond_2
    sget-boolean v2, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v3, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v3, v3, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    if-lt v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Invalid position.y"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 131
    :cond_3
    sget-boolean v2, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "R component must be non-zero"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 133
    :cond_4
    new-instance v1, Lorg/cocos2d/types/ccColor3B;

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v3, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    .line 134
    iget-object v3, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v3, v3, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v4, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v6, v6, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    .line 135
    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v5, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v7, v7, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    .line 133
    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    .line 137
    .local v1, "value":Lorg/cocos2d/types/ccColor3B;
    iget v2, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    if-nez v2, :cond_5

    .line 138
    const/4 v2, 0x0

    const-string v3, "Value.r must be non-zero."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 140
    :cond_5
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v3, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x0

    iget v4, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 141
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v3, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 142
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v3, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x2

    iget v4, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 144
    new-instance v2, Lorg/cocos2d/utils/CCFormatter;

    invoke-direct {v2}, Lorg/cocos2d/utils/CCFormatter;-><init>()V

    .line 147
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    const-string v3, "%d,%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p2, Lorg/cocos2d/types/ccGridSize;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lorg/cocos2d/types/ccGridSize;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/cocos2d/utils/CCFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    .local v0, "num":I
    invoke-direct {p0, p2, p1, v0}, Lorg/cocos2d/nodes/CCTileMapAtlas;->updateAtlas(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccColor3B;I)V

    goto :goto_0
.end method

.method public tgaInfo()Lorg/cocos2d/opengl/TGA$ImageTGA;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    return-object v0
.end method

.method public tile(Lorg/cocos2d/types/ccGridSize;)Lorg/cocos2d/types/ccColor3B;
    .locals 7
    .param p1, "pos"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 106
    sget-boolean v1, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "tgaInfo must not be null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 107
    :cond_0
    sget-boolean v1, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid position.x"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 108
    :cond_1
    sget-boolean v1, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget v1, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid position.y"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 115
    :cond_2
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v1, v1, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v2, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v2, v2, 0x0

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v4, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v4, v4, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    .line 116
    iget-object v2, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v2, v2, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v3, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    .line 117
    iget-object v3, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v3, v3, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    iget v4, p1, Lorg/cocos2d/types/ccGridSize;->x:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p1, Lorg/cocos2d/types/ccGridSize;->y:I

    iget-object v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v6, v6, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    .line 115
    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    .line 119
    .local v0, "value":Lorg/cocos2d/types/ccColor3B;
    return-object v0
.end method

.method public updateAtlasValues()V
    .locals 10

    .prologue
    .line 187
    sget-boolean v5, Lorg/cocos2d/nodes/CCTileMapAtlas;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "tgaInfo must be non-nil"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 191
    .local v1, "total":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    if-lt v3, v5, :cond_1

    .line 210
    return-void

    .line 192
    :cond_1
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_1
    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->height:I

    if-lt v4, v5, :cond_2

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_2
    iget v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->itemsToRender:I

    if-ge v1, v5, :cond_3

    .line 194
    new-instance v2, Lorg/cocos2d/types/ccColor3B;

    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v5, v5, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v6, v3, 0x0

    iget-object v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v7, v7, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    .line 195
    iget-object v6, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v6, v6, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v8, v8, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    .line 196
    iget-object v7, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget-object v7, v7, Lorg/cocos2d/opengl/TGA$ImageTGA;->imageData:[B

    add-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->tgaInfo:Lorg/cocos2d/opengl/TGA$ImageTGA;

    iget v9, v9, Lorg/cocos2d/opengl/TGA$ImageTGA;->width:I

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    .line 194
    invoke-direct {v2, v5, v6, v7}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    .line 198
    .local v2, "value":Lorg/cocos2d/types/ccColor3B;
    iget v5, v2, Lorg/cocos2d/types/ccColor3B;->r:I

    if-eqz v5, :cond_3

    .line 199
    invoke-static {v3, v4}, Lorg/cocos2d/types/ccGridSize;->ccg(II)Lorg/cocos2d/types/ccGridSize;

    move-result-object v5

    invoke-direct {p0, v5, v2, v1}, Lorg/cocos2d/nodes/CCTileMapAtlas;->updateAtlas(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/types/ccColor3B;I)V

    .line 201
    new-instance v5, Lorg/cocos2d/utils/CCFormatter;

    invoke-direct {v5}, Lorg/cocos2d/utils/CCFormatter;-><init>()V

    .line 202
    const-string v5, "%d,%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/cocos2d/utils/CCFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/cocos2d/nodes/CCTileMapAtlas;->posToAtlasIndex:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 192
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Lorg/cocos2d/types/ccColor3B;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
