.class public Lorg/cocos2d/actions/CCProgressTimer;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCProgressTimer.java"


# static fields
.field public static final kCCProgressTimerTypeHorizontalBarLR:I = 0x2

.field public static final kCCProgressTimerTypeHorizontalBarRL:I = 0x3

.field public static final kCCProgressTimerTypeRadialCCW:I = 0x0

.field public static final kCCProgressTimerTypeRadialCW:I = 0x1

.field public static final kCCProgressTimerTypeVerticalBarBT:I = 0x4

.field public static final kCCProgressTimerTypeVerticalBarTB:I = 0x5

.field public static final kProgressTextureCoords:C = '\u001e'

.field public static final kProgressTextureCoordsCount:I = 0x4


# instance fields
.field protected colors:Ljava/nio/FloatBuffer;

.field percentage_:F

.field sprite_:Lorg/cocos2d/nodes/CCSprite;

.field protected textureCoordinates:Ljava/nio/FloatBuffer;

.field type_:I

.field protected vertexCoordinates:Ljava/nio/FloatBuffer;

.field protected vertexDataCount_:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/actions/CCProgressTimer;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 69
    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    .line 70
    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    .line 71
    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    .line 72
    iput v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    .line 110
    invoke-static {p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    .line 112
    iput v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    .line 113
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/actions/CCProgressTimer;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 114
    iget-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/actions/CCProgressTimer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 115
    iput v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    .line 116
    return-void
.end method

.method public static progress(Ljava/lang/String;)Lorg/cocos2d/actions/CCProgressTimer;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lorg/cocos2d/actions/CCProgressTimer;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/CCProgressTimer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static progress(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/actions/CCProgressTimer;
    .locals 1
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 104
    new-instance v0, Lorg/cocos2d/actions/CCProgressTimer;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/CCProgressTimer;-><init>(Lorg/cocos2d/opengl/CCTexture2D;)V

    return-object v0
.end method


# virtual methods
.method public boundaryTexCoord(I)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/16 v2, 0x1e

    .line 531
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 532
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    packed-switch v0, :pswitch_data_0

    .line 541
    :cond_0
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    :goto_0
    return-object v0

    .line 534
    :pswitch_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    shr-int v0, v2, v0

    and-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    shl-int/lit8 v1, p1, 0x1

    shr-int v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    goto :goto_0

    .line 536
    :pswitch_1
    shl-int/lit8 v0, p1, 0x1

    rsub-int/lit8 v0, v0, 0x7

    shr-int v0, v2, v0

    and-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    rsub-int/lit8 v1, v1, 0x7

    shr-int v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 546
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v1, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "newBlend":Z
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    const/16 v2, 0x303

    if-eq v1, v2, :cond_3

    .line 552
    :cond_2
    const/4 v0, 0x1

    .line 553
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 560
    :cond_3
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 562
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 563
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 564
    iget-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 566
    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-ne v1, v4, :cond_6

    .line 567
    :cond_4
    const/4 v1, 0x6

    iget v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    invoke-interface {p1, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 578
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    .line 579
    const/16 v1, 0x303

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    .line 568
    :cond_6
    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-eq v1, v5, :cond_7

    .line 569
    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 570
    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-eq v1, v7, :cond_7

    .line 571
    iget v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 572
    :cond_7
    const/4 v1, 0x5

    iget v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    invoke-interface {p1, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    return v0
.end method

.method public getSprite()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    return v0
.end method

.method protected resetVertex()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 85
    iput-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    .line 86
    iput-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    .line 87
    iput-object v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    .line 90
    :cond_0
    return-void
.end method

.method public setPercentage(F)V
    .locals 3
    .param p1, "percentage"    # F

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 119
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 121
    iput v1, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->updateProgress()V

    .line 129
    :cond_0
    return-void

    .line 122
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 123
    iput v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    goto :goto_0

    .line 125
    :cond_2
    iput p1, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    goto :goto_0
.end method

.method public setSprite(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 1
    .param p1, "newSprite"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    .line 136
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->resetVertex()V

    .line 138
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "newType"    # I

    .prologue
    .line 141
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-eq p1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->resetVertex()V

    .line 145
    iput p1, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    .line 147
    :cond_0
    return-void
.end method

.method protected setVertexDataCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    .line 78
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    .line 79
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    .line 80
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    .line 81
    return-void
.end method

.method public updateBar()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 389
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v0, v5, v6

    .line 391
    .local v0, "alpha":F
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/opengl/CCTexture2D;->maxS()F

    move-result v5

    iget-object v6, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v6}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/opengl/CCTexture2D;->maxT()F

    move-result v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 393
    .local v2, "tMax":Lorg/cocos2d/types/CGPoint;
    new-array v4, v13, [C

    .line 398
    .local v4, "vIndexes":[C
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_4

    .line 399
    const/4 v5, 0x4

    iput v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    .line 400
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCProgressTimer;->setVertexDataCount(I)V

    .line 402
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-ne v5, v13, :cond_9

    .line 403
    aput-char v10, v4, v10

    .line 404
    aput-char v11, v4, v11

    .line 406
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 407
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 408
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 409
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 436
    :cond_0
    :goto_0
    aget-char v1, v4, v10

    .line 437
    .local v1, "index":C
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 438
    .local v3, "tmpPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 439
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 441
    aget-char v1, v4, v11

    .line 442
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 443
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 444
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 446
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v5, :cond_3

    .line 447
    :cond_1
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v5, :cond_2

    .line 448
    aget-char v1, v4, v10

    .line 449
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 450
    aget-char v1, v4, v11

    .line 451
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 453
    :cond_2
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eqz v5, :cond_3

    .line 454
    aget-char v1, v4, v10

    .line 455
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 457
    aget-char v1, v4, v11

    .line 458
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 462
    :cond_3
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->updateColor()V

    .line 465
    .end local v1    # "index":C
    .end local v3    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    :cond_4
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-ne v5, v13, :cond_c

    .line 466
    aput-char v14, v4, v10

    .line 467
    aput-char v13, v4, v11

    .line 469
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 470
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 471
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 472
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 499
    :cond_5
    :goto_1
    aget-char v1, v4, v10

    .line 500
    .restart local v1    # "index":C
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 501
    .restart local v3    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 502
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 504
    aget-char v1, v4, v11

    .line 505
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    .line 506
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 507
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v3, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 509
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v5, :cond_8

    .line 510
    :cond_6
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    if-eqz v5, :cond_7

    .line 511
    aget-char v1, v4, v10

    .line 512
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 514
    aget-char v1, v4, v11

    .line 515
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 517
    :cond_7
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    iget-boolean v5, v5, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    if-eqz v5, :cond_8

    .line 518
    aget-char v1, v4, v10

    .line 519
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 521
    aget-char v1, v4, v11

    .line 522
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v8, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 526
    :cond_8
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 527
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    return-void

    .line 410
    .end local v1    # "index":C
    .end local v3    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    :cond_9
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-ne v5, v14, :cond_a

    .line 411
    aput-char v13, v4, v10

    .line 412
    aput-char v14, v4, v11

    .line 414
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 415
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 416
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 417
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 418
    :cond_a
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 419
    aput-char v11, v4, v10

    .line 420
    aput-char v14, v4, v11

    .line 422
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 423
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 424
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 425
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 426
    :cond_b
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 427
    aput-char v10, v4, v10

    .line 428
    aput-char v13, v4, v11

    .line 430
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 431
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 432
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 433
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    .line 473
    :cond_c
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    if-ne v5, v14, :cond_d

    .line 474
    aput-char v11, v4, v10

    .line 475
    aput-char v10, v4, v11

    .line 477
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 478
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 479
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 480
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 481
    :cond_d
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    .line 482
    aput-char v10, v4, v10

    .line 483
    aput-char v13, v4, v11

    .line 485
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 486
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 487
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 488
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 489
    :cond_e
    iget v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 490
    aput-char v11, v4, v10

    .line 491
    aput-char v14, v4, v11

    .line 493
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 494
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 495
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 496
    iget-object v5, p0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    aget-char v6, v4, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v2, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1
.end method

.method public updateColor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 165
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getColor()Lorg/cocos2d/types/ccColor3B;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/types/ccColor4F;->ccc4FFromccc3B(Lorg/cocos2d/types/ccColor3B;)Lorg/cocos2d/types/ccColor4F;

    move-result-object v0

    .line 166
    .local v0, "color":Lorg/cocos2d/types/ccColor4F;
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getOpacity()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v4

    .line 168
    .local v2, "op":F
    iget v3, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    mul-float/2addr v3, v2

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 169
    iget v3, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    mul-float/2addr v3, v2

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 170
    iget v3, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    mul-float/2addr v3, v2

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 171
    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 176
    .end local v2    # "op":F
    :goto_0
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    if-lt v1, v3, :cond_2

    .line 182
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getOpacity()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    goto :goto_0

    .line 179
    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/cocos2d/actions/CCProgressTimer;->colors:Ljava/nio/FloatBuffer;

    iget v4, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 180
    iget v4, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public updateProgress()V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->updateRadial()V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCProgressTimer;->updateBar()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateRadial()V
    .locals 26

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/cocos2d/opengl/CCTexture2D;->maxS()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/cocos2d/opengl/CCTexture2D;->maxT()F

    move-result v22

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    .line 217
    .local v17, "tMax":Lorg/cocos2d/types/CGPoint;
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/actions/CCProgressTimer;->getAnchorPoint()Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpCompMult(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    .line 219
    .local v9, "midpoint":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->percentage_:F

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v2, v21, v22

    .line 222
    .local v2, "alpha":F
    const v22, 0x40c90fdb

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->type_:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    move/from16 v21, v2

    :goto_0
    mul-float v3, v22, v21

    .line 227
    .local v3, "angle":F
    iget v0, v9, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v20

    .line 228
    .local v20, "topMid":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, v20

    invoke-static {v0, v9, v3}, Lorg/cocos2d/types/CGPoint;->ccpRotateByAngle(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v12

    .line 231
    .local v12, "percentagePt":Lorg/cocos2d/types/CGPoint;
    const/4 v8, 0x0

    .line 232
    .local v8, "index":I
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    .line 234
    .local v6, "hit":Lorg/cocos2d/types/CGPoint;
    const/16 v21, 0x0

    cmpl-float v21, v2, v21

    if-nez v21, :cond_8

    .line 237
    move-object/from16 v6, v20

    .line 238
    const/4 v8, 0x0

    .line 302
    :goto_1
    const/4 v15, 0x1

    .line 303
    .local v15, "sameIndexCount":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v21, v0

    add-int/lit8 v22, v8, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 304
    const/4 v15, 0x0

    .line 306
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/actions/CCProgressTimer;->resetVertex()V

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 310
    add-int/lit8 v21, v8, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->setVertexDataCount(I)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/actions/CCProgressTimer;->updateColor()V

    .line 315
    :cond_1
    if-nez v15, :cond_3

    .line 316
    const/16 v19, 0x0

    .line 319
    .local v19, "tmpPoint":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v9, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    iget v0, v9, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    iget v0, v9, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 329
    iget v0, v9, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 333
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-lt v7, v8, :cond_10

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 346
    :cond_2
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-lt v7, v0, :cond_11

    .line 358
    .end local v7    # "i":I
    .end local v19    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    iget v0, v6, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    iget v0, v6, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    .line 362
    .restart local v19    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v24

    sub-float v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexDataCount_:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v24

    sub-float v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    return-void

    .line 222
    .end local v3    # "angle":F
    .end local v6    # "hit":Lorg/cocos2d/types/CGPoint;
    .end local v8    # "index":I
    .end local v12    # "percentagePt":Lorg/cocos2d/types/CGPoint;
    .end local v15    # "sameIndexCount":Z
    .end local v19    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    .end local v20    # "topMid":Lorg/cocos2d/types/CGPoint;
    :cond_7
    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v21, v2

    goto/16 :goto_0

    .line 239
    .restart local v3    # "angle":F
    .restart local v6    # "hit":Lorg/cocos2d/types/CGPoint;
    .restart local v8    # "index":I
    .restart local v12    # "percentagePt":Lorg/cocos2d/types/CGPoint;
    .restart local v20    # "topMid":Lorg/cocos2d/types/CGPoint;
    :cond_8
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v2, v21

    if-nez v21, :cond_9

    .line 242
    move-object/from16 v6, v20

    .line 243
    const/4 v8, 0x4

    goto/16 :goto_1

    .line 249
    :cond_9
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 251
    .local v10, "min_t":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v7, v0, :cond_a

    .line 294
    invoke-static {v12, v9}, Lorg/cocos2d/types/CGPoint;->ccpSub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lorg/cocos2d/types/CGPoint;->ccpAdd(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    goto/16 :goto_1

    .line 252
    :cond_a
    add-int/lit8 v21, v7, 0x3

    rem-int/lit8 v11, v21, 0x4

    .line 254
    .local v11, "pIndex":I
    rem-int/lit8 v21, v7, 0x4

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->boundaryTexCoord(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpCompMult(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    .line 255
    .local v4, "edgePtA":Lorg/cocos2d/types/CGPoint;
    int-to-char v0, v11

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->boundaryTexCoord(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpCompMult(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 259
    .local v5, "edgePtB":Lorg/cocos2d/types/CGPoint;
    if-nez v7, :cond_e

    .line 260
    const/high16 v21, 0x3f000000    # 0.5f

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lorg/cocos2d/types/CGPoint;->ccpLerp(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 266
    :cond_b
    :goto_5
    const/4 v14, 0x0

    .local v14, "s":F
    const/16 v16, 0x0

    .line 267
    .local v16, "t":F
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v13

    .line 268
    .local v13, "ret":Lorg/cocos2d/types/CGPoint;
    invoke-static {v4, v5, v9, v12, v13}, Lorg/cocos2d/types/CGPoint;->ccpLineIntersect(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 269
    iget v14, v13, Lorg/cocos2d/types/CGPoint;->x:F

    .line 270
    iget v0, v13, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v16, v0

    .line 274
    if-eqz v7, :cond_c

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v7, v0, :cond_f

    .line 276
    :cond_c
    const/16 v21, 0x0

    cmpg-float v21, v21, v14

    if-gtz v21, :cond_d

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v14, v21

    if-lez v21, :cond_f

    .line 251
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 261
    .end local v13    # "ret":Lorg/cocos2d/types/CGPoint;
    .end local v14    # "s":F
    .end local v16    # "t":F
    :cond_e
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v7, v0, :cond_b

    .line 262
    const/high16 v21, 0x3f000000    # 0.5f

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lorg/cocos2d/types/CGPoint;->ccpLerp(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    goto :goto_5

    .line 282
    .restart local v13    # "ret":Lorg/cocos2d/types/CGPoint;
    .restart local v14    # "s":F
    .restart local v16    # "t":F
    :cond_f
    const/16 v21, 0x0

    cmpl-float v21, v16, v21

    if-ltz v21, :cond_d

    .line 285
    cmpg-float v21, v16, v10

    if-gez v21, :cond_d

    .line 286
    move/from16 v10, v16

    .line 287
    move v8, v7

    goto :goto_6

    .line 334
    .end local v4    # "edgePtA":Lorg/cocos2d/types/CGPoint;
    .end local v5    # "edgePtB":Lorg/cocos2d/types/CGPoint;
    .end local v10    # "min_t":F
    .end local v11    # "pIndex":I
    .end local v13    # "ret":Lorg/cocos2d/types/CGPoint;
    .end local v14    # "s":F
    .end local v16    # "t":F
    .restart local v15    # "sameIndexCount":Z
    .restart local v19    # "tmpPoint":Lorg/cocos2d/types/CGPoint;
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/cocos2d/actions/CCProgressTimer;->boundaryTexCoord(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccpCompMult(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v18

    .line 336
    .local v18, "texCoords":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v7, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v7, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCProgressTimer;->vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v7, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->vertexCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v7, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 333
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 347
    .end local v18    # "texCoords":Lorg/cocos2d/types/CGPoint;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipX_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    mul-int/lit8 v22, v7, 0x2

    add-int/lit8 v22, v22, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    mul-int/lit8 v25, v7, 0x2

    add-int/lit8 v25, v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v24

    sub-float v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 350
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/cocos2d/nodes/CCSprite;->flipY_:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    mul-int/lit8 v22, v7, 0x2

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/actions/CCProgressTimer;->textureCoordinates:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    mul-int/lit8 v25, v7, 0x2

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v24

    sub-float v23, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 346
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method public vertexFromTexCoord(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 7
    .param p1, "texCoord"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 154
    iget-object v2, p0, Lorg/cocos2d/actions/CCProgressTimer;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    .line 155
    .local v1, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 157
    .local v0, "size":Lorg/cocos2d/types/CGSize;
    iget v2, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->maxS()F

    move-result v3

    div-float/2addr v2, v3

    .line 158
    iget v3, v0, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->maxT()F

    move-result v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 157
    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 160
    .end local v0    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    goto :goto_0
.end method
