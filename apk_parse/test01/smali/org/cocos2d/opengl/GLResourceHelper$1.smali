.class Lorg/cocos2d/opengl/GLResourceHelper$1;
.super Ljava/lang/Object;
.source "GLResourceHelper.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/GLResourceHelper;->addLoader(Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/opengl/GLResourceHelper;

.field private final synthetic val$loader:Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

.field private final synthetic val$res:Lorg/cocos2d/opengl/GLResourceHelper$Resource;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/GLResourceHelper;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    iput-object p2, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$loader:Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

    iput-object p3, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$res:Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$loader:Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

    iget-object v1, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$res:Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    invoke-interface {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;->load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V

    .line 72
    iget-object v0, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->this$0:Lorg/cocos2d/opengl/GLResourceHelper;

    # getter for: Lorg/cocos2d/opengl/GLResourceHelper;->reloadMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/cocos2d/opengl/GLResourceHelper;->access$0(Lorg/cocos2d/opengl/GLResourceHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$res:Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    iget-object v2, p0, Lorg/cocos2d/opengl/GLResourceHelper$1;->val$loader:Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
