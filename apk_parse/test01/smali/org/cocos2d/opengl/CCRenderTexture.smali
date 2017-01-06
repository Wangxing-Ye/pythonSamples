.class public Lorg/cocos2d/opengl/CCRenderTexture;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCRenderTexture.java"


# static fields
.field public static final kImageFormatJPG:I = 0x0

.field public static final kImageFormatPNG:I = 0x1


# instance fields
.field fbo_:[I

.field oldFBO_:[I

.field protected sprite_:Lorg/cocos2d/nodes/CCSprite;

.field texture_:Lorg/cocos2d/opengl/CCTexture2D;


# direct methods
.method protected constructor <init>(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 31
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->fbo_:[I

    .line 32
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->oldFBO_:[I

    .line 48
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 49
    .local v0, "egl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v2, 0x8ca6

    iget-object v3, p0, Lorg/cocos2d/opengl/CCRenderTexture;->oldFBO_:[I

    invoke-interface {v0, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    .line 52
    const/16 v7, 0x8

    .line 53
    .local v7, "pow":I
    :goto_0
    if-lt v7, p1, :cond_0

    if-lt v7, p2, :cond_0

    .line 57
    move v6, v7

    .line 58
    .local v6, "finPow":I
    new-instance v2, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v2}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    iput-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 59
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    new-instance v3, Lorg/cocos2d/opengl/CCRenderTexture$1;

    invoke-direct {v3, p0, v6}, Lorg/cocos2d/opengl/CCRenderTexture$1;-><init>(Lorg/cocos2d/opengl/CCRenderTexture;I)V

    invoke-virtual {v2, v3}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    .line 69
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->fbo_:[I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    .line 70
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->fbo_:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 73
    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lorg/cocos2d/opengl/CCRenderTexture;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 76
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v8

    .line 77
    .local v8, "status":I
    const v2, 0x8cd5

    if-eq v8, v2, :cond_1

    .line 78
    const-string v1, "Render Texture"

    const-string v2, "Could not attach texture to framebuffer"

    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    return-void

    .line 54
    .end local v6    # "finPow":I
    .end local v8    # "status":I
    :cond_0
    mul-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 81
    .restart local v6    # "finPow":I
    .restart local v8    # "status":I
    :cond_1
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    .line 83
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setScaleY(F)V

    .line 84
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v2}, Lorg/cocos2d/opengl/CCRenderTexture;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 85
    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->oldFBO_:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    goto :goto_1
.end method

.method public static renderTexture(II)Lorg/cocos2d/opengl/CCRenderTexture;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 43
    new-instance v0, Lorg/cocos2d/opengl/CCRenderTexture;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/CCRenderTexture;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public begin()V
    .locals 12

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v11, 0x0

    .line 97
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 98
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v0}, Lorg/cocos2d/config/ccMacros;->CC_DISABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 102
    iget-object v1, p0, Lorg/cocos2d/opengl/CCRenderTexture;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v9

    .line 105
    .local v9, "texSize":Lorg/cocos2d/types/CGSize;
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->displaySize()Lorg/cocos2d/types/CGSize;

    move-result-object v8

    .line 106
    .local v8, "size":Lorg/cocos2d/types/CGSize;
    iget v1, v8, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, v9, Lorg/cocos2d/types/CGSize;->width:F

    div-float v10, v1, v2

    .line 107
    .local v10, "widthRatio":F
    iget v1, v8, Lorg/cocos2d/types/CGSize;->height:F

    iget v2, v9, Lorg/cocos2d/types/CGSize;->height:F

    div-float v7, v1, v2

    .line 110
    .local v7, "heightRatio":F
    div-float v1, v5, v10

    div-float v2, v6, v10

    div-float v3, v5, v7

    div-float v4, v6, v7

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 111
    iget v1, v9, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v1, v1

    iget v2, v9, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v2, v2

    invoke-interface {v0, v11, v11, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 113
    const v1, 0x8ca6

    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->oldFBO_:[I

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    move-object v1, v0

    .line 114
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v2, 0x8d40

    iget-object v3, p0, Lorg/cocos2d/opengl/CCRenderTexture;->fbo_:[I

    aget v3, v3, v11

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 116
    invoke-static {v0}, Lorg/cocos2d/config/ccMacros;->CC_ENABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 117
    return-void
.end method

.method public clear(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCRenderTexture;->begin()V

    .line 236
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 237
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 238
    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 239
    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 240
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCRenderTexture;->end()V

    .line 241
    return-void
.end method

.method public end()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 121
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL10;
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 122
    .local v0, "egl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v3, 0x8d40

    iget-object v4, p0, Lorg/cocos2d/opengl/CCRenderTexture;->oldFBO_:[I

    aget v4, v4, v6

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 124
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 125
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCDirector;->displaySize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    .line 126
    .local v2, "size":Lorg/cocos2d/types/CGSize;
    iget v3, v2, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v3, v3

    iget v4, v2, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v4, v4

    invoke-interface {v1, v6, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 128
    invoke-interface {v1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 129
    return-void
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 91
    .local v0, "egl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/cocos2d/opengl/CCRenderTexture;->fbo_:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    return-void
.end method

.method public getSprite()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2d/opengl/CCRenderTexture;->sprite_:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method
