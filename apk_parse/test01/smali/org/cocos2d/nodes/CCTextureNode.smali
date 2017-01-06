.class public Lorg/cocos2d/nodes/CCTextureNode;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCTextureNode.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;
.implements Lorg/cocos2d/nodes/CCNode$CocosNodeSize;


# instance fields
.field private blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field private color_:Lorg/cocos2d/types/ccColor3B;

.field opacityModifyRGB_:Z

.field private opacity_:I

.field protected texture_:Lorg/cocos2d/opengl/CCTexture2D;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v1, 0xff

    .line 74
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 75
    iput v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacity_:I

    .line 76
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1, v1, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 77
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCTextureNode;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 78
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 80
    return-void
.end method


# virtual methods
.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacityModifyRGB_:Z

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v9, 0xde1

    const/16 v8, 0x303

    const/4 v7, 0x1

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 84
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 85
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 87
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 89
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacity_:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v1, v8, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 94
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureNode;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/cocos2d/opengl/CCTexture2D;->drawAtPoint(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/CGPoint;)V

    .line 100
    :cond_2
    if-eqz v0, :cond_3

    .line 101
    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 104
    :cond_3
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 106
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 108
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 109
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 110
    return-void
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->r:I

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    iget-object v3, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v3, v3, Lorg/cocos2d/types/ccColor3B;->b:I

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->getHeight()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacity_:I

    return v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->getWidth()F

    move-result v0

    return v0
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 2
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->r:I

    .line 65
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->g:I

    .line 66
    iget-object v0, p0, Lorg/cocos2d/nodes/CCTextureNode;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    iput v1, v0, Lorg/cocos2d/types/ccColor3B;->b:I

    .line 67
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacity_:I

    .line 60
    return-void
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCTextureNode;->opacityModifyRGB_:Z

    .line 130
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 2
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/cocos2d/nodes/CCTextureNode;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 40
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCTextureNode;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 47
    return-void
.end method
