.class Lorg/cocos2d/opengl/GLResourceHelper$2;
.super Ljava/lang/Object;
.source "GLResourceHelper.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/GLResourceHelper;->reloadResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/opengl/GLResourceHelper;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/GLResourceHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/opengl/GLResourceHelper$2;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 93
    iget-object v2, p0, Lorg/cocos2d/opengl/GLResourceHelper$2;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    # getter for: Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/cocos2d/opengl/GLResourceHelper;->access$0(Lorg/cocos2d/opengl/GLResourceHelper;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 94
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/opengl/GLResourceHelper$2;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    # getter for: Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/cocos2d/opengl/GLResourceHelper;->access$0(Lorg/cocos2d/opengl/GLResourceHelper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v2, p0, Lorg/cocos2d/opengl/GLResourceHelper$2;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/opengl/GLResourceHelper;->access$1(Lorg/cocos2d/opengl/GLResourceHelper;Z)V

    .line 101
    return-void

    .line 94
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .line 96
    .local v1, "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

    invoke-interface {v2, v1}, Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;->load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V

    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;>;"
    .end local v1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
