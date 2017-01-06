.class public Lorg/cocos2d/grid/CCGrabber;
.super Ljava/lang/Object;
.source "CCGrabber.java"


# instance fields
.field fbo:[I

.field oldFBO:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/cocos2d/grid/CCGrabber;->fbo:[I

    .line 12
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/cocos2d/grid/CCGrabber;->oldFBO:[I

    .line 16
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v1, v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v1, :cond_0

    .line 17
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 19
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->fbo:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :cond_0
    :goto_0
    return-void

    .line 20
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public afterRender(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 4
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 80
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v1, v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 85
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v1, 0x8d40

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->oldFBO:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public beforeRender(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 7
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/4 v4, 0x0

    .line 56
    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v2, v2, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 60
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v2, 0x8ca6

    iget-object v3, p0, Lorg/cocos2d/grid/CCGrabber;->oldFBO:[I

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    .line 62
    const v2, 0x8d40

    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/grid/CCGrabber;->fbo:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 65
    move-object v0, v1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 71
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .end local v1    # "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/16 v2, 0x4100

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v1, v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v1, :cond_0

    .line 96
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 97
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const-string v1, "cocos2d: deallocing %@"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOGINFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->fbo:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 105
    return-void

    .line 100
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public grab(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 7
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/4 v3, 0x0

    .line 27
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v1, v1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 31
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const v1, 0x8ca6

    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->oldFBO:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    .line 35
    const v1, 0x8d40

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->fbo:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 38
    const v1, 0x8d40

    .line 39
    const v2, 0x8ce0

    .line 40
    const/16 v3, 0xde1

    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v4

    const/4 v5, 0x0

    .line 38
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 43
    const v1, 0x8d40

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v6

    .line 44
    .local v6, "status":I
    const v1, 0x8cd5

    if-ne v6, v1, :cond_0

    .line 49
    const v1, 0x8d40

    iget-object v2, p0, Lorg/cocos2d/grid/CCGrabber;->oldFBO:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v6    # "status":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
