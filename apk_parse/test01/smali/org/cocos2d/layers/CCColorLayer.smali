.class public Lorg/cocos2d/layers/CCColorLayer;
.super Lorg/cocos2d/layers/CCLayer;
.source "CCColorLayer.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;
.implements Lorg/cocos2d/nodes/CCNode$CocosNodeSize;


# instance fields
.field protected blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

.field protected color_:Lorg/cocos2d/types/ccColor3B;

.field protected opacity_:I

.field private squareColors_:Ljava/nio/FloatBuffer;

.field private squareVertices_:Ljava/nio/FloatBuffer;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/ccColor4B;)V
    .locals 3
    .param p1, "color"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 52
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 53
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p0, p1, v1, v2}, Lorg/cocos2d/layers/CCColorLayer;->init(Lorg/cocos2d/types/ccColor4B;FF)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/types/ccColor4B;FF)V
    .locals 0
    .param p1, "color"    # Lorg/cocos2d/types/ccColor4B;
    .param p2, "w"    # F
    .param p3, "h"    # F

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lorg/cocos2d/layers/CCColorLayer;->init(Lorg/cocos2d/types/ccColor4B;FF)V

    .line 59
    return-void
.end method

.method public static node(Lorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/layers/CCColorLayer;
    .locals 4
    .param p0, "color"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    .line 41
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 42
    .local v0, "size":Lorg/cocos2d/types/CGSize;
    new-instance v1, Lorg/cocos2d/layers/CCColorLayer;

    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    invoke-direct {v1, p0, v2, v3}, Lorg/cocos2d/layers/CCColorLayer;-><init>(Lorg/cocos2d/types/ccColor4B;FF)V

    return-object v1
.end method

.method public static node(Lorg/cocos2d/types/ccColor4B;FF)Lorg/cocos2d/layers/CCColorLayer;
    .locals 1
    .param p0, "color"    # Lorg/cocos2d/types/ccColor4B;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 47
    new-instance v0, Lorg/cocos2d/layers/CCColorLayer;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/layers/CCColorLayer;-><init>(Lorg/cocos2d/types/ccColor4B;FF)V

    return-object v0
.end method

.method private updateColor()V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 100
    return-void

    .line 85
    :cond_0
    rem-int/lit8 v1, v0, 0x4

    packed-switch v1, :pswitch_data_0

    .line 96
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/layers/CCColorLayer;->opacity_:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 98
    :goto_1
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->r:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 90
    :pswitch_1
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->g:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 93
    :pswitch_2
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public changeHeight(F)V
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCColorLayer;->getWidth()F

    move-result v0

    invoke-static {v0, p1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCColorLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 196
    return-void
.end method

.method public changeWidth(F)V
    .locals 1
    .param p1, "w"    # F

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCColorLayer;->getHeight()F

    move-result v0

    invoke-static {p1, v0}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCColorLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 191
    return-void
.end method

.method public changeWidthAndHeight(FF)V
    .locals 1
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 185
    invoke-static {p1, p2}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCColorLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 186
    return-void
.end method

.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v5, 0x303

    const/4 v4, 0x0

    .line 107
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 108
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 110
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 111
    const/16 v1, 0x1406

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-eq v1, v5, :cond_3

    .line 115
    :cond_0
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 122
    :cond_1
    :goto_0
    const/4 v1, 0x5

    invoke-interface {p1, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 124
    if-eqz v0, :cond_2

    .line 125
    invoke-interface {p1, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 128
    :cond_2
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 129
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 130
    return-void

    .line 117
    :cond_3
    iget v1, p0, Lorg/cocos2d/layers/CCColorLayer;->opacity_:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    .line 118
    const/4 v0, 0x1

    .line 119
    const/16 v1, 0x302

    invoke-interface {p1, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v0, v0, Lorg/cocos2d/types/ccColor3B;->r:I

    iget-object v1, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v1, v1, Lorg/cocos2d/types/ccColor3B;->g:I

    iget-object v2, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    iget v2, v2, Lorg/cocos2d/types/ccColor3B;->b:I

    invoke-static {v0, v1, v2}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/cocos2d/layers/CCColorLayer;->opacity_:I

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method protected init(Lorg/cocos2d/types/ccColor4B;FF)V
    .locals 7
    .param p1, "color"    # Lorg/cocos2d/types/ccColor4B;
    .param p2, "w"    # F
    .param p3, "h"    # F

    .prologue
    .line 62
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 63
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    .line 66
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    .local v1, "sbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->squareColors_:Ljava/nio/FloatBuffer;

    .line 70
    new-instance v3, Lorg/cocos2d/types/ccColor3B;

    iget v4, p1, Lorg/cocos2d/types/ccColor4B;->r:I

    iget v5, p1, Lorg/cocos2d/types/ccColor4B;->g:I

    iget v6, p1, Lorg/cocos2d/types/ccColor4B;->b:I

    invoke-direct {v3, v4, v5, v6}, Lorg/cocos2d/types/ccColor3B;-><init>(III)V

    iput-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 71
    iget v3, p1, Lorg/cocos2d/types/ccColor4B;->a:I

    iput v3, p0, Lorg/cocos2d/layers/CCColorLayer;->opacity_:I

    .line 72
    new-instance v3, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-direct {v3, v4, v5}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->blendFunc_:Lorg/cocos2d/types/ccBlendFunc;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 77
    iget-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    invoke-direct {p0}, Lorg/cocos2d/layers/CCColorLayer;->updateColor()V

    .line 80
    invoke-static {p2, p3}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/layers/CCColorLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 81
    return-void

    .line 75
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 3
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 140
    iget v0, p1, Lorg/cocos2d/types/ccColor3B;->r:I

    iget v1, p1, Lorg/cocos2d/types/ccColor3B;->g:I

    iget v2, p1, Lorg/cocos2d/types/ccColor3B;->b:I

    invoke-static {v0, v1, v2}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 141
    invoke-direct {p0}, Lorg/cocos2d/layers/CCColorLayer;->updateColor()V

    .line 142
    return-void
.end method

.method public setContentSize(Lorg/cocos2d/types/CGSize;)V
    .locals 3
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    iget v2, p1, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 174
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    iget v2, p1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    iget v2, p1, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 176
    iget-object v0, p0, Lorg/cocos2d/layers/CCColorLayer;->squareVertices_:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    iget v2, p1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/layers/CCLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 180
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "o"    # I

    .prologue
    .line 147
    iput p1, p0, Lorg/cocos2d/layers/CCColorLayer;->opacity_:I

    .line 148
    invoke-direct {p0}, Lorg/cocos2d/layers/CCColorLayer;->updateColor()V

    .line 149
    return-void
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 208
    return-void
.end method
