.class public abstract Lorg/cocos2d/nodes/CCAtlasNode;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCAtlasNode.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;
.implements Lorg/cocos2d/protocols/CCTextureProtocol;


# instance fields
.field blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

.field color_:Lorg/cocos2d/types/ccColor3B;

.field protected itemHeight:I

.field protected itemWidth:I

.field protected itemsPerColumn:I

.field protected itemsPerRow:I

.field opacityModifyRGB_:Z

.field opacity_:I

.field protected texStepX:F

.field protected texStepY:F

.field protected textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;


# direct methods
.method protected constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "tile"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "c"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 67
    iput p2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemWidth:I

    .line 68
    iput p3, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemHeight:I

    .line 69
    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    .line 70
    sget-object v0, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 71
    sget-object v0, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    .line 72
    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    .line 74
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x303

    invoke-direct {v0, v2, v1}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 75
    new-instance v0, Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-direct {v0, p1, p4}, Lorg/cocos2d/opengl/CCTextureAtlas;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    .line 77
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->updateBlendFunc()V

    .line 78
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->updateOpacityModifyRGB()V

    .line 80
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->calculateMaxItems()V

    .line 81
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->calculateTexCoordsSteps()V

    .line 82
    return-void
.end method

.method private calculateMaxItems()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 86
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->height:F

    iget v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemsPerColumn:I

    .line 87
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemsPerRow:I

    .line 88
    return-void
.end method

.method private calculateTexCoordsSteps()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    .line 92
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    iget v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemWidth:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->texStepX:F

    .line 93
    iget v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->itemHeight:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->texStepY:F

    .line 94
    return-void
.end method


# virtual methods
.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v8, 0x8076

    const/16 v7, 0x303

    const/4 v6, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    .line 107
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 109
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v1, v7, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 114
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->drawQuads(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-interface {p1, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 129
    :cond_2
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 130
    return-void
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    return v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 3
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 151
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 152
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    .line 153
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 155
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iget v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 156
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iget v2, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 158
    :cond_0
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacity_:I

    .line 138
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    if-eqz v0, :cond_0

    .line 139
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->colorUnmodified_:Lorg/cocos2d/types/ccColor3B;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCAtlasNode;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 141
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->color_:Lorg/cocos2d/types/ccColor3B;

    goto :goto_0
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 0
    .param p1, "modify"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    .line 194
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/CCTextureAtlas;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 182
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->updateBlendFunc()V

    .line 183
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCAtlasNode;->updateOpacityModifyRGB()V

    .line 184
    return-void
.end method

.method public abstract updateAtlasValues()V
.end method

.method public updateBlendFunc()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 174
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x303

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 176
    :cond_0
    return-void
.end method

.method public updateOpacityModifyRGB()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCAtlasNode;->opacityModifyRGB_:Z

    .line 203
    return-void
.end method
