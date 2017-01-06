.class Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

.field private mGLContextCount:I

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;)V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1576
    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1577
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1578
    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1579
    iput-boolean v2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1581
    :cond_0
    iput-boolean v2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1584
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_1

    .line 1565
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1566
    iget v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x20000

    if-ge v1, v2, :cond_0

    .line 1567
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1568
    .local v0, "renderer":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1569
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1571
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    :cond_1
    monitor-exit p0

    return-void

    .line 1564
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglSurfaceLocked(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1557
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .line 1560
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1561
    return-void
.end method

.method public declared-synchronized threadExiting(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1526
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->access$0(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;Z)V

    .line 1527
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1528
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .line 1530
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    monitor-exit p0

    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1541
    iget-object v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1542
    :cond_0
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lorg/cocos2d/opengl/GLSurfaceView$GLThread;

    .line 1543
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1550
    :cond_1
    :goto_0
    return v0

    .line 1546
    :cond_2
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1547
    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1550
    const/4 v0, 0x0

    goto :goto_0
.end method
