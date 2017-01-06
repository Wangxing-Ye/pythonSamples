.class public Lorg/cocos2d/opengl/GLResourceHelper;
.super Ljava/lang/Object;
.source "GLResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;,
        Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;,
        Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    }
.end annotation


# static fields
.field private static _sharedResourceHelper:Lorg/cocos2d/opengl/GLResourceHelper;


# instance fields
.field private volatile glThreadID:J

.field private volatile inUpdate:Z

.field private reloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/cocos2d/opengl/GLResourceHelper$Resource;",
            "Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile reloadTaskIsInQueue:Z

.field private taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/cocos2d/opengl/GLResourceHelper;

    invoke-direct {v0}, Lorg/cocos2d/opengl/GLResourceHelper;-><init>()V

    sput-object v0, Lorg/cocos2d/opengl/GLResourceHelper;->_sharedResourceHelper:Lorg/cocos2d/opengl/GLResourceHelper;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->inUpdate:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/opengl/GLResourceHelper;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2d/opengl/GLResourceHelper;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadTaskIsInQueue:Z

    return-void
.end method

.method public static sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/cocos2d/opengl/GLResourceHelper;->_sharedResourceHelper:Lorg/cocos2d/opengl/GLResourceHelper;

    return-object v0
.end method


# virtual methods
.method public addLoader(Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Z)V
    .locals 2
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    .param p2, "loader"    # Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;
    .param p3, "addTask"    # Z

    .prologue
    .line 67
    if-eqz p3, :cond_0

    .line 68
    new-instance v0, Lorg/cocos2d/opengl/GLResourceHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/cocos2d/opengl/GLResourceHelper$1;-><init>(Lorg/cocos2d/opengl/GLResourceHelper;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V

    .line 75
    .local v0, "task":Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;
    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 79
    .end local v0    # "task":Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V
    .locals 4
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->inUpdate:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/cocos2d/opengl/GLResourceHelper;->glThreadID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;->perform(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reloadResources()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadTaskIsInQueue:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->reloadTaskIsInQueue:Z

    .line 90
    iget-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lorg/cocos2d/opengl/GLResourceHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/GLResourceHelper$2;-><init>(Lorg/cocos2d/opengl/GLResourceHelper;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setGlThreadID(J)V
    .locals 0
    .param p1, "glThreadID"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->glThreadID:J

    .line 59
    return-void
.end method

.method public setInUpdate(Z)V
    .locals 0
    .param p1, "inUpd"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->inUpdate:Z

    .line 137
    return-void
.end method

.method public update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 126
    iget-object v1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    :goto_0
    iget-object v1, p0, Lorg/cocos2d/opengl/GLResourceHelper;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;

    .local v0, "res":Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;
    if-nez v0, :cond_1

    .line 133
    .end local v0    # "res":Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;
    :cond_0
    return-void

    .line 130
    .restart local v0    # "res":Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;
    :cond_1
    invoke-interface {v0, p1}, Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;->perform(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method
