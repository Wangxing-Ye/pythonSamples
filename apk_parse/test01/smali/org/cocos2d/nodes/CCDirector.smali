.class public Lorg/cocos2d/nodes/CCDirector;
.super Ljava/lang/Object;
.source "CCDirector.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLSurfaceView$Renderer;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FAST_FPS_DISPLAY:Z = true

.field private static final LOG_TAG:Ljava/lang/String;

.field private static _sharedDirector:Lorg/cocos2d/nodes/CCDirector; = null

.field public static gl:Ljavax/microedition/khronos/opengles/GL10; = null

.field public static final kCCDepthBuffer16:I = 0x1

.field public static final kCCDepthBuffer24:I = 0x2

.field public static final kCCDepthBufferNone:I = 0x0

.field public static final kCCDeviceOrientationLandscapeLeft:I = 0x2

.field public static final kCCDeviceOrientationPortrait:I = 0x1

.field public static final kCCDirectorProjection2D:I = 0x1

.field public static final kCCDirectorProjection3D:I = 0x2

.field public static final kCCDirectorProjectionCustom:I = 0x3

.field public static final kCCDirectorProjectionDefault:I = 0x2

.field public static final kCCDirectorTypeDefault:I = 0x1

.field public static final kCCDirectorTypeDisplayLink:I = 0x4

.field public static final kCCDirectorTypeMainLoop:I = 0x2

.field public static final kCCDirectorTypeNSTimer:I = 0x1

.field public static final kCCDirectorTypeThreadMainLoop:I = 0x3

.field public static final kCCPixelFormatDefault:I = 0x0

.field public static final kCCPixelFormatRGB565:I = 0x0

.field public static final kCCPixelFormatRGBA8888:I = 0x1

.field private static final kDefaultFPS:D = 60.0

.field public static theApp:Landroid/app/Activity;


# instance fields
.field private CCScenesStack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCScene;",
            ">;"
        }
    .end annotation
.end field

.field FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

.field private accumDtForProfiler_:F

.field private accumDt_:F

.field private animationInterval_:D

.field private contentScaleFactor_:F

.field private depthBufferFormat_:I

.field deviceOrientation_:I

.field private displayFPS:Z

.field private dt:F

.field private fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

.field private frameRate_:F

.field private frames_:I

.field private isContentScaleSupported_:Z

.field private isPaused:Z

.field private lastUpdate_:J

.field private mTranslucentBackground:Z

.field private nextCCScene_:Lorg/cocos2d/layers/CCScene;

.field private nextDeltaTimeZero_:Z

.field private oldAnimationInterval_:D

.field private openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

.field private pixelFormat_:I

.field private projection_:I

.field private runningCCScene_:Lorg/cocos2d/layers/CCScene;

.field private screenSize_:Lorg/cocos2d/types/CGSize;

.field private sendCleanupToCCScene_:Z

.field private sleepInterval:D

.field private surfaceSize_:Lorg/cocos2d/types/CGSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/cocos2d/nodes/CCDirector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    .line 76
    const-class v0, Lorg/cocos2d/nodes/CCDirector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/nodes/CCDirector;->LOG_TAG:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    .line 477
    new-instance v0, Lorg/cocos2d/nodes/CCDirector;

    invoke-direct {v0}, Lorg/cocos2d/nodes/CCDirector;-><init>()V

    sput-object v0, Lorg/cocos2d/nodes/CCDirector;->_sharedDirector:Lorg/cocos2d/nodes/CCDirector;

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->projection_:I

    .line 697
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->sleepInterval:D

    .line 1438
    new-instance v0, Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-direct {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 1500
    iput-boolean v3, p0, Lorg/cocos2d/nodes/CCDirector;->mTranslucentBackground:Z

    .line 551
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cocos2d: cocos2d v0.99.4"

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cocos2d: Using Director Type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iput v3, p0, Lorg/cocos2d/nodes/CCDirector;->pixelFormat_:I

    .line 557
    iput v3, p0, Lorg/cocos2d/nodes/CCDirector;->depthBufferFormat_:I

    .line 562
    iput-object v4, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 563
    iput-object v4, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 565
    const-wide v0, 0x3f91111111111111L    # 0.016666666666666666

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->oldAnimationInterval_:D

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    .line 569
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    .line 572
    iput-boolean v3, p0, Lorg/cocos2d/nodes/CCDirector;->displayFPS:Z

    .line 573
    iput v3, p0, Lorg/cocos2d/nodes/CCDirector;->frames_:I

    .line 576
    iput-boolean v3, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    .line 579
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    .line 581
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    .line 582
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    .line 583
    iput-boolean v3, p0, Lorg/cocos2d/nodes/CCDirector;->isContentScaleSupported_:Z

    .line 585
    return-void
.end method

.method private applyOrientation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 300
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    .line 301
    .local v1, "s":Lorg/cocos2d/types/CGSize;
    iget v3, v1, Lorg/cocos2d/types/CGSize;->height:F

    div-float v0, v3, v4

    .line 302
    .local v0, "h":F
    iget v3, v1, Lorg/cocos2d/types/CGSize;->width:F

    div-float v2, v3, v4

    .line 306
    .local v2, "w":F
    iget v3, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    packed-switch v3, :pswitch_data_0

    .line 316
    :pswitch_0
    return-void

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateDeltaTime()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 773
    .local v0, "now":J
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCDirector;->nextDeltaTimeZero_:Z

    if-eqz v2, :cond_0

    .line 774
    iput v4, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    .line 775
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/cocos2d/nodes/CCDirector;->nextDeltaTimeZero_:Z

    .line 781
    :goto_0
    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->lastUpdate_:J

    .line 782
    return-void

    .line 777
    :cond_0
    iget-wide v2, p0, Lorg/cocos2d/nodes/CCDirector;->lastUpdate_:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    .line 778
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    goto :goto_0
.end method

.method private detach()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 829
    sget-boolean v1, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->isOpenGLAttached()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    .line 830
    const-string v2, "FATAL: Director: Can\'t detach the OpenGL View, because it is not attached. Attach it first."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 833
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 834
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 836
    sget-boolean v1, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->isOpenGLAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    .line 837
    const-string v2, "FATAL: Director: Can\'t detach the OpenGL View, it is still attached to the superview."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 840
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private drawCCSceneByLowCpu(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x50

    add-long v0, v2, v4

    .line 715
    .local v0, "tick":J
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->drawCCScene(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 716
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 720
    return-void

    .line 718
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method private getAppFrameRect(F)Lorg/cocos2d/types/CGRect;
    .locals 10
    .param p1, "targetRatio"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 922
    sget-object v6, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 923
    .local v5, "w":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v4

    .line 925
    .local v4, "size":Lorg/cocos2d/types/CGSize;
    iget v6, v4, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v4, Lorg/cocos2d/types/CGSize;->height:F

    div-float v0, v6, v7

    .line 926
    .local v0, "currentRation":F
    iget v6, v4, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v4, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 927
    .local v1, "newSize":Lorg/cocos2d/types/CGSize;
    invoke-static {v8, v8}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 929
    .local v2, "offset":Lorg/cocos2d/types/CGPoint;
    cmpl-float v6, v0, p1

    if-lez v6, :cond_1

    .line 931
    iget v6, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v6, p1

    iput v6, v1, Lorg/cocos2d/types/CGSize;->width:F

    .line 932
    iget v6, v4, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v1, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    iput v6, v2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 940
    :cond_0
    :goto_0
    invoke-static {v2, v1}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v3

    .line 942
    .local v3, "rect":Lorg/cocos2d/types/CGRect;
    return-object v3

    .line 934
    .end local v3    # "rect":Lorg/cocos2d/types/CGRect;
    :cond_1
    cmpg-float v6, v0, p1

    if-gez v6, :cond_0

    .line 936
    iget v6, v4, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v6, p1

    iput v6, v1, Lorg/cocos2d/types/CGSize;->height:F

    .line 937
    iget v6, v4, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v1, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    iput v6, v2, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0
.end method

.method private initOpenGLViewWithView(Landroid/view/View;Lorg/cocos2d/types/CGRect;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    const/4 v2, 0x1

    .line 950
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget-object v1, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGSize;->set(Lorg/cocos2d/types/CGSize;)V

    .line 951
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1}, Lorg/cocos2d/types/CGSize;->set(Lorg/cocos2d/types/CGSize;)V

    .line 954
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    if-eq v0, p1, :cond_0

    .line 955
    check-cast p1, Lorg/cocos2d/opengl/GLSurfaceView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    .line 956
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/GLSurfaceView;->setRenderer(Lorg/cocos2d/opengl/GLSurfaceView$Renderer;)V

    .line 1004
    :cond_0
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cocos2d/events/CCTouchDispatcher;->setDispatchEvents(Z)V

    .line 1041
    return v2
.end method

.method public static sharedDirector()Lorg/cocos2d/nodes/CCDirector;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->_sharedDirector:Lorg/cocos2d/nodes/CCDirector;

    return-object v0
.end method

.method private showFPS(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1446
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->frames_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->frames_:I

    .line 1447
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->accumDt_:F

    iget v3, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    add-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->accumDt_:F

    .line 1449
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->accumDt_:F

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1450
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->frames_:I

    int-to-float v2, v2

    iget v3, p0, Lorg/cocos2d/nodes/CCDirector;->accumDt_:F

    div-float/2addr v2, v3

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->frameRate_:F

    .line 1451
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->frames_:I

    .line 1452
    const/4 v2, 0x0

    iput v2, p0, Lorg/cocos2d/nodes/CCDirector;->accumDt_:F

    .line 1454
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->frameRate_:F

    float-to-int v1, v2

    .line 1455
    .local v1, "fpsInt":I
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->frameRate_:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1457
    .local v0, "fpsFract":I
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v2}, Lorg/cocos2d/utils/javolution/TextBuilder;->reset()V

    .line 1458
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v2, v1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 1459
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(C)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 1460
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v2, v0}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(I)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 1462
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    iget-object v3, p0, Lorg/cocos2d/nodes/CCDirector;->fpsBuilder:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 1465
    .end local v0    # "fpsFract":I
    .end local v1    # "fpsInt":I
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v2, p1}, Lorg/cocos2d/nodes/CCLabelAtlas;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1498
    return-void
.end method

.method private waitForFPS()V
    .locals 4

    .prologue
    .line 700
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 701
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/nodes/CCDirector;->sleepInterval:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->sleepInterval:D

    .line 702
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->sleepInterval:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->sleepInterval:D

    goto :goto_0
.end method


# virtual methods
.method public attachInView(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 868
    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 869
    .local v1, "w":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4, v4, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    .line 872
    .local v0, "rect":Lorg/cocos2d/types/CGRect;
    invoke-direct {p0, p1, v0}, Lorg/cocos2d/nodes/CCDirector;->initOpenGLViewWithView(Landroid/view/View;Lorg/cocos2d/types/CGRect;)Z

    move-result v2

    return v2
.end method

.method public attachInView(Landroid/view/View;F)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ration"    # F

    .prologue
    .line 917
    invoke-direct {p0, p2}, Lorg/cocos2d/nodes/CCDirector;->getAppFrameRect(F)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/nodes/CCDirector;->initOpenGLViewWithView(Landroid/view/View;Lorg/cocos2d/types/CGRect;)Z

    move-result v0

    return v0
.end method

.method public attachInView(Landroid/view/View;Lorg/cocos2d/types/CGRect;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Lorg/cocos2d/nodes/CCDirector;->initOpenGLViewWithView(Landroid/view/View;Lorg/cocos2d/types/CGRect;)Z

    move-result v0

    return v0
.end method

.method public attachInWindow(Landroid/view/View;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->attachInView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public convertToGL(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 7
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1056
    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v5, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v5, v5, Lorg/cocos2d/types/CGSize;->width:F

    mul-float v0, v4, v5

    .line 1057
    .local v0, "newX":F
    iget-object v4, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    iget v5, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v6, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 1059
    .local v1, "newY":F
    const/4 v2, 0x0

    .line 1060
    .local v2, "ret":Lorg/cocos2d/types/CGPoint;
    iget v4, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    packed-switch v4, :pswitch_data_0

    move-object v3, v2

    .line 1077
    .end local v2    # "ret":Lorg/cocos2d/types/CGPoint;
    .local v3, "ret":Lorg/cocos2d/types/CGPoint;
    :goto_0
    return-object v3

    .line 1062
    .end local v3    # "ret":Lorg/cocos2d/types/CGPoint;
    .restart local v2    # "ret":Lorg/cocos2d/types/CGPoint;
    :pswitch_0
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 1075
    :goto_1
    iget v4, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/cocos2d/nodes/CCDirector;->isContentScaleSupported_:Z

    if-eqz v4, :cond_0

    .line 1076
    iget v4, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    invoke-static {v2, v4}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    :cond_0
    move-object v3, v2

    .line 1077
    .end local v2    # "ret":Lorg/cocos2d/types/CGPoint;
    .restart local v3    # "ret":Lorg/cocos2d/types/CGPoint;
    goto :goto_0

    .line 1068
    .end local v3    # "ret":Lorg/cocos2d/types/CGPoint;
    .restart local v2    # "ret":Lorg/cocos2d/types/CGPoint;
    :pswitch_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 1069
    goto :goto_1

    .line 1060
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public convertToGL(FFLorg/cocos2d/types/CGPoint;)V
    .locals 5
    .param p1, "uiX"    # F
    .param p2, "uiY"    # F
    .param p3, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1096
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    div-float v2, p1, v2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float v0, v2, v3

    .line 1097
    .local v0, "newX":F
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget-object v3, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    div-float v3, p2, v3

    iget-object v4, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v4, v4, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 1099
    .local v1, "newY":F
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    packed-switch v2, :pswitch_data_0

    .line 1111
    :goto_0
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCDirector;->isContentScaleSupported_:Z

    if-eqz v2, :cond_0

    .line 1112
    iget v2, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    invoke-static {p3, v2}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;F)V

    .line 1113
    :cond_0
    return-void

    .line 1101
    :pswitch_0
    invoke-virtual {p3, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto :goto_0

    .line 1107
    :pswitch_1
    invoke-virtual {p3, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public convertToGL(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1086
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lorg/cocos2d/nodes/CCDirector;->convertToGL(FFLorg/cocos2d/types/CGPoint;)V

    .line 1087
    return-void
.end method

.method public convertToUI(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p1, "glPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1119
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    .line 1120
    .local v2, "winSize":Lorg/cocos2d/types/CGSize;
    iget v3, v2, Lorg/cocos2d/types/CGSize;->height:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 1122
    .local v0, "oppositeY":I
    const/4 v1, 0x0

    .line 1123
    .local v1, "uiPoint":Lorg/cocos2d/types/CGPoint;
    iget v3, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    packed-switch v3, :pswitch_data_0

    .line 1134
    const/4 v3, 0x0

    .line 1138
    :goto_0
    return-object v3

    .line 1125
    :pswitch_0
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    int-to-float v4, v0

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1137
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/types/CGPoint;->ccpMult(Lorg/cocos2d/types/CGPoint;F)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    move-object v3, v1

    .line 1138
    goto :goto_0

    .line 1131
    :pswitch_1
    iget v3, p1, Lorg/cocos2d/types/CGPoint;->x:F

    int-to-float v4, v0

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 1132
    goto :goto_1

    .line 1123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public displaySize()Lorg/cocos2d/types/CGSize;
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    return-object v0
.end method

.method public drawCCScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 728
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCDirector;->calculateDeltaTime()V

    .line 731
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    if-nez v0, :cond_0

    .line 732
    invoke-static {}, Lorg/cocos2d/actions/CCScheduler;->sharedScheduler()Lorg/cocos2d/actions/CCScheduler;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    invoke-virtual {v0, v1}, Lorg/cocos2d/actions/CCScheduler;->tick(F)V

    .line 735
    :cond_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 737
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/GLResourceHelper;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 741
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->setNextScene()V

    .line 744
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 746
    invoke-direct {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->applyOrientation(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 749
    invoke-static {p1}, Lorg/cocos2d/config/ccMacros;->CC_ENABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 752
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/layers/CCScene;->visit(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 754
    :cond_2
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->displayFPS:Z

    if-eqz v0, :cond_3

    .line 755
    invoke-direct {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->showFPS(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 761
    :cond_3
    invoke-static {p1}, Lorg/cocos2d/config/ccMacros;->CC_DISABLE_DEFAULT_GL_STATES(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 763
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 767
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1222
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->onExit()V

    .line 1224
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v0}, Lorg/cocos2d/layers/CCScene;->cleanup()V

    .line 1225
    iput-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1227
    :cond_0
    iput-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1231
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1235
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchDispatcher;->removeAllDelegates()V

    .line 1244
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->purgeSharedSpriteFrameCache()V

    .line 1247
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->purgeSharedTextureCache()V

    .line 1255
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimationInterval()D
    .locals 2

    .prologue
    .line 455
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    return-wide v0
.end method

.method public getConfigSpec()[I
    .locals 3

    .prologue
    .line 1416
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCDirector;->mTranslucentBackground:Z

    if-eqz v2, :cond_0

    .line 1418
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "configSpec":[I
    move-object v1, v0

    .line 1434
    .end local v0    # "configSpec":[I
    .local v1, "configSpec":[I
    :goto_0
    return-object v1

    .line 1430
    .end local v1    # "configSpec":[I
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .restart local v0    # "configSpec":[I
    move-object v1, v0

    .line 1434
    .end local v0    # "configSpec":[I
    .restart local v1    # "configSpec":[I
    goto :goto_0

    .line 1418
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    .line 1430
    :array_1
    .array-data 4
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method public getContentScaleFactor()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    return v0
.end method

.method public getIsPaused()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    return v0
.end method

.method public getLandscape()Z
    .locals 2

    .prologue
    .line 807
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextDeltaTimeZero()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->nextDeltaTimeZero_:Z

    return v0
.end method

.method public getOpenGLView()Lorg/cocos2d/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->pixelFormat_:I

    return v0
.end method

.method public getProjection()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->projection_:I

    return v0
.end method

.method public getRunningScene()Lorg/cocos2d/layers/CCScene;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    return-object v0
.end method

.method public getSendCleanupToScene()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->sendCleanupToCCScene_:Z

    return v0
.end method

.method public getZEye()F
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    const v1, 0x3f940b78    # 1.1566f

    div-float/2addr v0, v1

    return v0
.end method

.method public isEnableKeyEvent()Z
    .locals 1

    .prologue
    .line 1525
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyDispatcher;->getDispatchEvents()Z

    move-result v0

    return v0
.end method

.method public isOpenGLAttached()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 679
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->setInUpdate(Z)V

    .line 681
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCTouchDispatcher;->update()V

    .line 683
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyDispatcher;->update()V

    .line 684
    sget-boolean v0, Lcom/sns/game/util/DeviceManager;->isLowCpu:Z

    if-eqz v0, :cond_0

    .line 686
    invoke-direct {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->drawCCSceneByLowCpu(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 691
    :goto_0
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->setInUpdate(Z)V

    .line 693
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCDirector;->waitForFPS()V

    .line 695
    return-void

    .line 688
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->drawCCScene(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1503
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyDispatcher;->getDispatchEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    const/4 v0, 0x0

    .line 1506
    :goto_0
    return v0

    .line 1505
    :cond_0
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCKeyDispatcher;->queueMotionEvent(Landroid/view/KeyEvent;)V

    .line 1506
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1511
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/events/CCKeyDispatcher;->getDispatchEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    const/4 v0, 0x0

    .line 1515
    :goto_0
    return v0

    .line 1514
    :cond_0
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCKeyDispatcher;->queueMotionEvent(Landroid/view/KeyEvent;)V

    .line 1515
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->onPause()V

    .line 1285
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->pause()V

    .line 1286
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->onResume()V

    .line 1293
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->resume()V

    .line 1294
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 636
    sput-object p1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 637
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGSize;->set(FF)V

    .line 638
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 639
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->projection_:I

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCDirector;->setProjection(I)V

    .line 640
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 644
    sput-object p1, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 651
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 657
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 659
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->setGLDefaultValues(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 662
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/GLResourceHelper;->setGlThreadID(J)V

    .line 665
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLResourceHelper;->reloadResources()V

    .line 666
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1301
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    if-eqz v0, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->oldAnimationInterval_:D

    .line 1307
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCDirector;->setAnimationInterval(D)V

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    goto :goto_0
.end method

.method public popScene()V
    .locals 3

    .prologue
    .line 1189
    sget-boolean v1, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "A running CCScene is needed"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1191
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1192
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1194
    .local v0, "c":I
    if-nez v0, :cond_1

    .line 1195
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->end()V

    .line 1199
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/layers/CCScene;

    iput-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    goto :goto_0
.end method

.method public purgeCachedData()V
    .locals 0

    .prologue
    .line 1208
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->purgeSharedSpriteFrameCache()V

    .line 1209
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->purgeSharedTextureCache()V

    .line 1211
    return-void
.end method

.method public pushScene(Lorg/cocos2d/layers/CCScene;)V
    .locals 2
    .param p1, "CCScene"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 1174
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->sendCleanupToCCScene_:Z

    .line 1178
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    iput-object p1, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1180
    return-void
.end method

.method public reSetDisplayFPS(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 611
    if-eqz p1, :cond_0

    .line 612
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->displayFPS:Z

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCLabelAtlas;->removeSelf()V

    .line 614
    const-string v0, "00.0"

    const-string v1, "fps_images.png"

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x2e

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 615
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 618
    :cond_0
    return-void
.end method

.method public replaceScene(Lorg/cocos2d/layers/CCScene;)V
    .locals 3
    .param p1, "CCScene"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 1159
    sget-boolean v1, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Argument must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1161
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1163
    .local v0, "index":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/nodes/CCDirector;->sendCleanupToCCScene_:Z

    .line 1164
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->CCScenesStack_:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iput-object p1, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1166
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1316
    iget-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    if-nez v0, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1319
    :cond_0
    iget-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->oldAnimationInterval_:D

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/nodes/CCDirector;->setAnimationInterval(D)V

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2d/nodes/CCDirector;->lastUpdate_:J

    .line 1323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/nodes/CCDirector;->isPaused:Z

    .line 1324
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    goto :goto_0
.end method

.method public runWithScene(Lorg/cocos2d/layers/CCScene;)V
    .locals 2
    .param p1, "CCScene"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 1148
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1149
    :cond_0
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "You can\'t run a CCScene if another CCScene is running. Use replaceCCScene or pushCCScene instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1151
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCDirector;->pushScene(Lorg/cocos2d/layers/CCScene;)V

    .line 1153
    return-void
.end method

.method public setAlphaBlending(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "on"    # Z

    .prologue
    const/16 v0, 0xbe2

    .line 1359
    if-eqz p2, :cond_0

    .line 1360
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1361
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1365
    :goto_0
    return-void

    .line 1363
    :cond_0
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public setAnimationInterval(D)V
    .locals 0
    .param p1, "interval"    # D

    .prologue
    .line 459
    iput-wide p1, p0, Lorg/cocos2d/nodes/CCDirector;->animationInterval_:D

    .line 465
    return-void
.end method

.method public setCCTexture2D(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "on"    # Z

    .prologue
    const/16 v0, 0xde1

    .line 1380
    if-eqz p2, :cond_0

    .line 1381
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1384
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public setContentScaleFactor(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scaleFactor"    # F

    .prologue
    .line 417
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 418
    iput p2, p0, Lorg/cocos2d/nodes/CCDirector;->contentScaleFactor_:F

    .line 419
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v0, p2

    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v1, p2

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->surfaceSize_:Lorg/cocos2d/types/CGSize;

    .line 421
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->updateContentScaleFactor()V

    .line 425
    :cond_0
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->projection_:I

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCDirector;->setProjection(I)V

    .line 427
    :cond_1
    return-void
.end method

.method public setDepthBufferFormat(I)V
    .locals 2
    .param p1, "db"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->isOpenGLAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t change the depth buffer format after the director was initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 246
    :cond_0
    iput p1, p0, Lorg/cocos2d/nodes/CCDirector;->depthBufferFormat_:I

    .line 247
    return-void
.end method

.method public setDepthTest(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "on"    # Z

    .prologue
    const/16 v1, 0xb71

    .line 1369
    if-eqz p2, :cond_0

    .line 1370
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 1371
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1372
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 1373
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1377
    :goto_0
    return-void

    .line 1375
    :cond_0
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 282
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    if-eq v0, p1, :cond_0

    .line 283
    iput p1, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    .line 284
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->deviceOrientation_:I

    packed-switch v0, :pswitch_data_0

    .line 292
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Director: Unknown device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisplayFPS(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCDirector;->displayFPS:Z

    .line 475
    return-void
.end method

.method public setGLDefaultValues(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    .line 590
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->openGLView_:Lorg/cocos2d/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "openGLView_ must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 592
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCDirector;->setAlphaBlending(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/nodes/CCDirector;->setDepthTest(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 597
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 600
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    if-nez v0, :cond_1

    .line 603
    const-string v0, "00.0"

    const-string v1, "fps_images.png"

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x2e

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 605
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->FPSLabel_:Lorg/cocos2d/nodes/CCLabelAtlas;

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 608
    :cond_1
    return-void
.end method

.method public setIsEnableKeyEvent(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1520
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCKeyDispatcher;->setDispatchEvents(Z)V

    .line 1521
    return-void
.end method

.method public setLandscape(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 811
    if-eqz p1, :cond_0

    .line 812
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCDirector;->setDeviceOrientation(I)V

    .line 815
    :goto_0
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCDirector;->setDeviceOrientation(I)V

    goto :goto_0
.end method

.method public setNextDeltaTimeZero(Z)V
    .locals 0
    .param p1, "dtz"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lorg/cocos2d/nodes/CCDirector;->nextDeltaTimeZero_:Z

    .line 367
    return-void
.end method

.method public setNextScene()V
    .locals 3

    .prologue
    .line 1258
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    instance-of v1, v2, Lorg/cocos2d/transitions/CCTransitionScene;

    .line 1259
    .local v1, "runningIsTransition":Z
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    instance-of v0, v2, Lorg/cocos2d/transitions/CCTransitionScene;

    .line 1262
    .local v0, "newIsTransition":Z
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 1263
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2}, Lorg/cocos2d/layers/CCScene;->onExit()V

    .line 1267
    iget-boolean v2, p0, Lorg/cocos2d/nodes/CCDirector;->sendCleanupToCCScene_:Z

    if-eqz v2, :cond_0

    .line 1268
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2}, Lorg/cocos2d/layers/CCScene;->cleanup()V

    .line 1271
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    iput-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1272
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->nextCCScene_:Lorg/cocos2d/layers/CCScene;

    .line 1274
    if-nez v1, :cond_1

    .line 1275
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2}, Lorg/cocos2d/layers/CCScene;->onEnter()V

    .line 1276
    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->runningCCScene_:Lorg/cocos2d/layers/CCScene;

    invoke-virtual {v2}, Lorg/cocos2d/layers/CCScene;->onEnterTransitionDidFinish()V

    .line 1278
    :cond_1
    return-void
.end method

.method public setPixelFormat(I)V
    .locals 2
    .param p1, "p"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    sget-boolean v0, Lorg/cocos2d/nodes/CCDirector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->isOpenGLAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t change the pixel format after the director was initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 270
    :cond_0
    iput p1, p0, Lorg/cocos2d/nodes/CCDirector;->pixelFormat_:I

    .line 271
    return-void
.end method

.method public setProjection(I)V
    .locals 13
    .param p1, "p"    # I

    .prologue
    const/16 v2, 0x1701

    const/16 v8, 0x1700

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 124
    iget-object v12, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    .line 125
    .local v12, "size":Lorg/cocos2d/types/CGSize;
    packed-switch p1, :pswitch_data_0

    .line 152
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cocos2d: Director: unrecognized projecgtion"

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    :pswitch_0
    iput p1, p0, Lorg/cocos2d/nodes/CCDirector;->projection_:I

    .line 156
    return-void

    .line 127
    :pswitch_1
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 128
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 129
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, v12, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, v12, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v5, -0x3b860000    # -1000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 130
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 131
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    goto :goto_0

    .line 136
    :pswitch_2
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 137
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 138
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v2, 0x42700000    # 60.0f

    iget v3, v12, Lorg/cocos2d/types/CGSize;->width:F

    iget v4, v12, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x44bb8000    # 1500.0f

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 140
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 141
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 142
    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v0, v12, Lorg/cocos2d/types/CGSize;->width:F

    div-float v3, v0, v7

    iget v0, v12, Lorg/cocos2d/types/CGSize;->height:F

    div-float v4, v0, v7

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCDirector;->getZEye()F

    move-result v5

    .line 143
    iget v0, v12, Lorg/cocos2d/types/CGSize;->width:F

    div-float v6, v0, v7

    iget v0, v12, Lorg/cocos2d/types/CGSize;->height:F

    div-float v7, v0, v7

    .line 144
    const/high16 v10, 0x3f800000    # 1.0f

    move v8, v1

    move v9, v1

    move v11, v1

    .line 142
    invoke-static/range {v2 .. v11}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setScreenSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 946
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/types/CGSize;->set(FF)V

    .line 947
    return-void
.end method

.method public showProfilers()V
    .locals 2

    .prologue
    .line 1045
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->accumDtForProfiler_:F

    iget v1, p0, Lorg/cocos2d/nodes/CCDirector;->dt:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->accumDtForProfiler_:F

    .line 1046
    iget v0, p0, Lorg/cocos2d/nodes/CCDirector;->accumDtForProfiler_:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/nodes/CCDirector;->accumDtForProfiler_:F

    .line 1050
    :cond_0
    return-void
.end method

.method public updateContentScaleFactor()V
    .locals 0

    .prologue
    .line 1413
    return-void
.end method

.method public winSize()Lorg/cocos2d/types/CGSize;
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v2, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 794
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    return-object v0
.end method

.method public winSizeRef()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lorg/cocos2d/nodes/CCDirector;->screenSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method
