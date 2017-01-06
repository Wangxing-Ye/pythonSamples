.class public Lorg/cocos2d/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/GLSurfaceView$BaseConfigChooser;,
        Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;,
        Lorg/cocos2d/opengl/GLSurfaceView$DefaultContextFactory;,
        Lorg/cocos2d/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;,
        Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;,
        Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;,
        Lorg/cocos2d/opengl/GLSurfaceView$GLThread;,
        Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;,
        Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;,
        Lorg/cocos2d/opengl/GLSurfaceView$LogWriter;,
        Lorg/cocos2d/opengl/GLSurfaceView$Renderer;,
        Lorg/cocos2d/opengl/GLSurfaceView$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field public static noPause:Z

.field private static final sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1596
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;-><init>(Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;)V

    sput-object v0, Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 184
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->init()V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 193
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->init()V

    .line 194
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/opengl/GLSurfaceView;)I
    .locals 1

    .prologue
    .line 1605
    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$1(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLConfigChooser:Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLWrapper:Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cocos2d/opengl/GLSurfaceView;)I
    .locals 1

    .prologue
    .line 1604
    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 1596
    sget-object v0, Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$7(Lorg/cocos2d/opengl/GLSurfaceView;)Z
    .locals 1

    .prologue
    .line 1597
    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$8(Lorg/cocos2d/opengl/GLSurfaceView;Z)V
    .locals 0

    .prologue
    .line 1597
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mSizeChanged:Z

    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1515
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1516
    const-string v1, "setRenderer has already been called for this instance."

    .line 1515
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 200
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 201
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 203
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 519
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 520
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 475
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 486
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 508
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 509
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 499
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 437
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 232
    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mDebugFlags:I

    .line 233
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 362
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 363
    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;IIIIII)V

    .line 362
    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLSurfaceView;->setEGLConfigChooser(Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 364
    return-void
.end method

.method public setEGLConfigChooser(Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 325
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 326
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLConfigChooser:Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

    .line 327
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 344
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLSurfaceView;->setEGLConfigChooser(Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 345
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 393
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 394
    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 395
    return-void
.end method

.method public setEGLContextFactory(Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 296
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

    .line 297
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 309
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 310
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 311
    return-void
.end method

.method public setGLWrapper(Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLWrapper:Lorg/cocos2d/opengl/GLSurfaceView$GLWrapper;

    .line 220
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 415
    return-void
.end method

.method public setRenderer(Lorg/cocos2d/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 271
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLConfigChooser:Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLConfigChooser:Lorg/cocos2d/opengl/GLSurfaceView$EGLConfigChooser;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lorg/cocos2d/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Lorg/cocos2d/opengl/GLSurfaceView$DefaultContextFactory;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLContextFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLContextFactory;

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 278
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lorg/cocos2d/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lorg/cocos2d/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/cocos2d/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 280
    :cond_2
    new-instance v0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Lorg/cocos2d/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .line 281
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->start()V

    .line 282
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .param p1, "safeMode"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 490
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 465
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 445
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 446
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 455
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->mGLThread:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 456
    return-void
.end method
