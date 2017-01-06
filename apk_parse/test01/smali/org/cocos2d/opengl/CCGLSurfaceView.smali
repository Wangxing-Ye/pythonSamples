.class public Lorg/cocos2d/opengl/CCGLSurfaceView;
.super Lorg/cocos2d/opengl/GLSurfaceView;
.source "CCGLSurfaceView.java"


# static fields
.field private static final VIEWID:I = 0x1235


# instance fields
.field public frame:Lorg/cocos2d/types/CGSize;

.field private mDispatcher:Lorg/cocos2d/events/CCTouchDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sput-object p1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    .line 23
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCGLSurfaceView;->mDispatcher:Lorg/cocos2d/events/CCTouchDispatcher;

    .line 25
    invoke-virtual {p0, v1}, Lorg/cocos2d/opengl/CCGLSurfaceView;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0, v1}, Lorg/cocos2d/opengl/CCGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 27
    const/16 v0, 0x1235

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/CCGLSurfaceView;->setId(I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Lorg/cocos2d/opengl/GLSurfaceView;->onLayout(ZIIII)V

    .line 59
    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p5, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCGLSurfaceView;->frame:Lorg/cocos2d/types/CGSize;

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cocos2d/opengl/CCGLSurfaceView;->mDispatcher:Lorg/cocos2d/events/CCTouchDispatcher;

    invoke-virtual {v0, p1}, Lorg/cocos2d/events/CCTouchDispatcher;->queueMotionEvent(Landroid/view/MotionEvent;)V

    .line 82
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 90
    const/4 v0, 0x1

    return v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
