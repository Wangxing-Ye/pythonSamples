.class public abstract Lorg/cocos2d/grid/CCGridBase;
.super Ljava/lang/Object;
.source "CCGridBase.java"


# static fields
.field public static final kTextureSize:I = 0x200


# instance fields
.field protected active_:Z

.field protected gl:Ljavax/microedition/khronos/opengles/GL10;

.field protected grabber_:Lorg/cocos2d/grid/CCGrabber;

.field protected gridSize_:Lorg/cocos2d/types/ccGridSize;

.field protected isTextureFlipped_:Z

.field protected reuseGrid_:I

.field protected step_:Lorg/cocos2d/types/CGPoint;

.field protected texture_:Lorg/cocos2d/opengl/CCTexture2D;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p3, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p4, "flipped"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p2, p3, p4}, Lorg/cocos2d/grid/CCGridBase;->init(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/types/ccGridSize;)V
    .locals 2
    .param p1, "gSize"    # Lorg/cocos2d/types/ccGridSize;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v0}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    .line 117
    .local v0, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    new-instance v1, Lorg/cocos2d/grid/CCGridBase$1;

    invoke-direct {v1, p0, p1}, Lorg/cocos2d/grid/CCGridBase$1;-><init>(Lorg/cocos2d/grid/CCGridBase;Lorg/cocos2d/types/ccGridSize;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    .line 139
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/grid/CCGridBase;Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/grid/CCGridBase;->init(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V

    return-void
.end method

.method private init(Lorg/cocos2d/types/ccGridSize;Lorg/cocos2d/opengl/CCTexture2D;Z)V
    .locals 4
    .param p1, "gridSize"    # Lorg/cocos2d/types/ccGridSize;
    .param p2, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p3, "flipped"    # Z

    .prologue
    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lorg/cocos2d/grid/CCGridBase;->active_:Z

    .line 101
    iput v1, p0, Lorg/cocos2d/grid/CCGridBase;->reuseGrid_:I

    .line 102
    iput-object p1, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    .line 103
    iput-object p2, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 104
    iput-boolean p3, p0, Lorg/cocos2d/grid/CCGridBase;->isTextureFlipped_:Z

    .line 106
    iget-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 107
    .local v0, "texSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v2, v2, Lorg/cocos2d/types/ccGridSize;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->step_:Lorg/cocos2d/types/CGPoint;

    .line 109
    new-instance v1, Lorg/cocos2d/grid/CCGrabber;

    invoke-direct {v1}, Lorg/cocos2d/grid/CCGrabber;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->grabber_:Lorg/cocos2d/grid/CCGrabber;

    .line 110
    iget-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->grabber_:Lorg/cocos2d/grid/CCGrabber;

    iget-object v2, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v1, v2}, Lorg/cocos2d/grid/CCGrabber;->grab(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 111
    invoke-virtual {p0}, Lorg/cocos2d/grid/CCGridBase;->calculateVertexPoints()V

    .line 112
    return-void
.end method


# virtual methods
.method public afterDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "target"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->grabber_:Lorg/cocos2d/grid/CCGrabber;

    iget-object v2, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v1, v2}, Lorg/cocos2d/grid/CCGrabber;->afterRender(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 198
    invoke-virtual {p0, p1}, Lorg/cocos2d/grid/CCGridBase;->set3DProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 199
    invoke-virtual {p0, p1}, Lorg/cocos2d/grid/CCGridBase;->applyLandscape(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 201
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/CCCamera;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCNode;->getAnchorPointInPixels()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 207
    .local v0, "offset":Lorg/cocos2d/types/CGPoint;
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 208
    invoke-virtual {p2}, Lorg/cocos2d/nodes/CCNode;->getCamera()Lorg/cocos2d/opengl/CCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/CCCamera;->locate(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 209
    iget v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    neg-float v1, v1

    iget v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v2, v2

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 212
    .end local v0    # "offset":Lorg/cocos2d/types/CGPoint;
    :cond_0
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 214
    invoke-virtual {p0, p1}, Lorg/cocos2d/grid/CCGridBase;->blit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 215
    return-void
.end method

.method public applyLandscape(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 150
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    .line 151
    .local v0, "director":Lorg/cocos2d/nodes/CCDirector;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getLandscape()Z

    move-result v2

    .line 152
    .local v2, "landscape":Z
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v4

    .line 153
    .local v4, "winSize":Lorg/cocos2d/types/CGSize;
    iget v5, v4, Lorg/cocos2d/types/CGSize;->width:F

    div-float v3, v5, v6

    .line 154
    .local v3, "w":F
    iget v5, v4, Lorg/cocos2d/types/CGSize;->height:F

    div-float v1, v5, v6

    .line 156
    .local v1, "h":F
    if-eqz v2, :cond_0

    .line 157
    invoke-interface {p1, v3, v1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 158
    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {p1, v5, v7, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 159
    neg-float v5, v1

    neg-float v6, v3

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 161
    :cond_0
    return-void
.end method

.method public beforeDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/cocos2d/grid/CCGridBase;->set2DProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 193
    iget-object v0, p0, Lorg/cocos2d/grid/CCGridBase;->grabber_:Lorg/cocos2d/grid/CCGrabber;

    iget-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0, v1}, Lorg/cocos2d/grid/CCGrabber;->beforeRender(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 194
    return-void
.end method

.method public abstract blit(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract calculateVertexPoints()V
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "cocos2d: deallocing %s"

    invoke-virtual {p0}, Lorg/cocos2d/grid/CCGridBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOGINFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/grid/CCGridBase;->setActive(Z)V

    .line 224
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    return-void
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->y:I

    return v0
.end method

.method public getGridWidth()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v0, v0, Lorg/cocos2d/types/ccGridSize;->x:I

    return v0
.end method

.method public getStep()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cocos2d/grid/CCGridBase;->step_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/grid/CCGridBase;->step_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/cocos2d/grid/CCGridBase;->active_:Z

    return v0
.end method

.method public isTextureFlipped()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/cocos2d/grid/CCGridBase;->isTextureFlipped_:Z

    return v0
.end method

.method public abstract reuse(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public reuseGrid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/cocos2d/grid/CCGridBase;->reuseGrid_:I

    return v0
.end method

.method public set2DProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v7

    .line 166
    .local v7, "winSize":Lorg/cocos2d/types/CGSize;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 167
    iget v0, v7, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v0, v0

    iget v2, v7, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v2, v2

    invoke-interface {p1, v3, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 168
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 169
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 170
    iget v2, v7, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, v7, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 171
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 172
    return-void
.end method

.method public set3DProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 176
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->displaySize()Lorg/cocos2d/types/CGSize;

    move-result-object v10

    .line 178
    .local v10, "winSize":Lorg/cocos2d/types/CGSize;
    iget v0, v10, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v0, v0

    iget v1, v10, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v1, v1

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 179
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 180
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 181
    const/high16 v0, 0x42700000    # 60.0f

    iget v1, v10, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, v10, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x44bb8000    # 1500.0f

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 183
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 184
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 185
    iget v0, v10, Lorg/cocos2d/types/CGSize;->width:F

    div-float v1, v0, v5

    iget v0, v10, Lorg/cocos2d/types/CGSize;->height:F

    div-float v2, v0, v5

    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getZEye()F

    move-result v3

    .line 186
    iget v0, v10, Lorg/cocos2d/types/CGSize;->width:F

    div-float v4, v0, v5

    iget v0, v10, Lorg/cocos2d/types/CGSize;->height:F

    div-float v5, v0, v5

    .line 187
    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p1

    move v7, v6

    move v9, v6

    .line 185
    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 189
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/cocos2d/grid/CCGridBase;->active_:Z

    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    .line 81
    .local v0, "director":Lorg/cocos2d/nodes/CCDirector;
    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getProjection()I

    move-result v1

    .line 82
    .local v1, "proj":I
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->setProjection(I)V

    .line 84
    .end local v0    # "director":Lorg/cocos2d/nodes/CCDirector;
    .end local v1    # "proj":I
    :cond_0
    return-void
.end method

.method public setIsTextureFlipped(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "flipped"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/cocos2d/grid/CCGridBase;->isTextureFlipped_:Z

    if-eq v0, p2, :cond_0

    .line 58
    iput-boolean p2, p0, Lorg/cocos2d/grid/CCGridBase;->isTextureFlipped_:Z

    .line 59
    invoke-virtual {p0}, Lorg/cocos2d/grid/CCGridBase;->calculateVertexPoints()V

    .line 61
    :cond_0
    return-void
.end method

.method public setReuseGrid(I)V
    .locals 0
    .param p1, "g"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/cocos2d/grid/CCGridBase;->reuseGrid_:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lorg/cocos2d/utils/CCFormatter;

    invoke-direct {v0}, Lorg/cocos2d/utils/CCFormatter;-><init>()V

    .line 144
    const-string v0, "<%s : Dimensions = %dx%d>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 145
    const-class v3, Lorg/cocos2d/grid/CCGridBase;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/cocos2d/grid/CCGridBase;->gridSize_:Lorg/cocos2d/types/ccGridSize;

    iget v3, v3, Lorg/cocos2d/types/ccGridSize;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    invoke-static {v0, v1}, Lorg/cocos2d/utils/CCFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
