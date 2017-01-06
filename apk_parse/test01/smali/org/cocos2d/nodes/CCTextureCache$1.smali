.class Lorg/cocos2d/nodes/CCTextureCache$1;
.super Ljava/lang/Object;
.source "CCTextureCache.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/nodes/CCTextureCache;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/nodes/CCTextureCache;

.field private final synthetic val$copy:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/cocos2d/nodes/CCTextureCache;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/nodes/CCTextureCache$1;->this$0:Lorg/cocos2d/nodes/CCTextureCache;

    iput-object p2, p0, Lorg/cocos2d/nodes/CCTextureCache$1;->val$copy:Landroid/graphics/Bitmap;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 4
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    .line 131
    iget-object v1, p0, Lorg/cocos2d/nodes/CCTextureCache$1;->val$copy:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/cocos2d/nodes/CCTextureCache$1;->val$copy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "initImage":Landroid/graphics/Bitmap;
    check-cast p1, Lorg/cocos2d/opengl/CCTexture2D;

    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    invoke-virtual {p1, v0}, Lorg/cocos2d/opengl/CCTexture2D;->initWithImage(Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method
