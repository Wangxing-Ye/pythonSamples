.class public Lorg/cocos2d/nodes/CCLabelAtlas;
.super Lorg/cocos2d/nodes/CCAtlasNode;
.source "CCLabelAtlas.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCLabelProtocol;
.implements Lorg/cocos2d/nodes/CCNode$CocosNodeSize;


# instance fields
.field mapStartChar:C

.field string_:Lorg/cocos2d/utils/javolution/TextBuilder;


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;IIC)V
    .locals 2
    .param p1, "theString"    # Ljava/lang/CharSequence;
    .param p2, "charmapfile"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "c"    # C

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Lorg/cocos2d/nodes/CCAtlasNode;-><init>(Ljava/lang/String;III)V

    .line 43
    new-instance v0, Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 44
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 45
    iput-char p5, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->mapStartChar:C

    .line 47
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCLabelAtlas;->updateAtlasValues()V

    .line 48
    return-void
.end method

.method public static label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 6
    .param p0, "theString"    # Ljava/lang/CharSequence;
    .param p1, "charmapfile"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "c"    # C

    .prologue
    .line 36
    new-instance v0, Lorg/cocos2d/nodes/CCLabelAtlas;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCLabelAtlas;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;IIC)V

    return-object v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v8, 0x8076

    const/16 v7, 0x303

    const/4 v6, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    .line 117
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 118
    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->opacity_:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v1, v7, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 126
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    iget-object v2, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/cocos2d/opengl/CCTextureAtlas;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 128
    if-eqz v0, :cond_2

    .line 129
    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 132
    :cond_2
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 144
    return-void
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 166
    return-void
.end method

.method public setString(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "newString"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTotalQuads()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->resizeCapacity(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->reset()V

    .line 106
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 107
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCLabelAtlas;->updateAtlasValues()V

    .line 109
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setContentSize(FF)V

    .line 110
    return-void
.end method

.method public updateAtlasValues()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 52
    iget-object v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v8}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v4

    .line 54
    .local v4, "n":I
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v2

    .line 55
    .local v2, "holder":Lorg/cocos2d/types/util/PoolHolder;
    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getccQuad2Pool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/types/ccQuad2;

    .line 56
    .local v6, "texCoord":Lorg/cocos2d/types/ccQuad2;
    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getccQuad3Pool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/types/ccQuad3;

    .line 59
    .local v7, "vertex":Lorg/cocos2d/types/ccQuad3;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 89
    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getccQuad2Pool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v2}, Lorg/cocos2d/types/util/PoolHolder;->getccQuad3Pool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 60
    :cond_0
    iget-object v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v8, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v8

    iget-char v9, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->mapStartChar:C

    sub-int v0, v8, v9

    .line 61
    .local v0, "a":I
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemsPerRow:I

    rem-int v8, v0, v8

    int-to-float v8, v8

    iget v9, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepX:F

    mul-float v5, v8, v9

    .line 62
    .local v5, "row":F
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemsPerRow:I

    div-int v8, v0, v8

    int-to-float v8, v8

    iget v9, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepY:F

    mul-float v1, v8, v9

    .line 64
    .local v1, "col":F
    iput v5, v6, Lorg/cocos2d/types/ccQuad2;->bl_x:F

    .line 65
    iput v1, v6, Lorg/cocos2d/types/ccQuad2;->bl_y:F

    .line 66
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepX:F

    add-float/2addr v8, v5

    iput v8, v6, Lorg/cocos2d/types/ccQuad2;->br_x:F

    .line 67
    iput v1, v6, Lorg/cocos2d/types/ccQuad2;->br_y:F

    .line 68
    iput v5, v6, Lorg/cocos2d/types/ccQuad2;->tl_x:F

    .line 69
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepY:F

    add-float/2addr v8, v1

    iput v8, v6, Lorg/cocos2d/types/ccQuad2;->tl_y:F

    .line 70
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepX:F

    add-float/2addr v8, v5

    iput v8, v6, Lorg/cocos2d/types/ccQuad2;->tr_x:F

    .line 71
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->texStepY:F

    add-float/2addr v8, v1

    iput v8, v6, Lorg/cocos2d/types/ccQuad2;->tr_y:F

    .line 73
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->bl_x:F

    .line 74
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->bl_y:F

    .line 75
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->bl_z:F

    .line 76
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v8, v3

    iget v9, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->br_x:F

    .line 77
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->br_y:F

    .line 78
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->br_z:F

    .line 79
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->tl_x:F

    .line 80
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemHeight:I

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->tl_y:F

    .line 81
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->tl_z:F

    .line 82
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    mul-int/2addr v8, v3

    iget v9, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->tr_x:F

    .line 83
    iget v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->itemHeight:I

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/types/ccQuad3;->tr_y:F

    .line 84
    iput v10, v7, Lorg/cocos2d/types/ccQuad3;->tr_z:F

    .line 86
    iget-object v8, p0, Lorg/cocos2d/nodes/CCLabelAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v8, v6, v7, v3}, Lorg/cocos2d/opengl/CCTextureAtlas;->updateQuad(Lorg/cocos2d/types/ccQuad2;Lorg/cocos2d/types/ccQuad3;I)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
