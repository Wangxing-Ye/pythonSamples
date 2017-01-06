.class Lorg/cocos2d/opengl/CCRenderTexture$1;
.super Ljava/lang/Object;
.source "CCRenderTexture.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/CCRenderTexture;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/opengl/CCRenderTexture;

.field private final synthetic val$finPow:I


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/CCRenderTexture;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/opengl/CCRenderTexture$1;->this$0:Lorg/cocos2d/opengl/CCRenderTexture;

    iput p2, p0, Lorg/cocos2d/opengl/CCRenderTexture$1;->val$finPow:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 4
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    .line 62
    iget v1, p0, Lorg/cocos2d/opengl/CCRenderTexture$1;->val$finPow:I

    iget v2, p0, Lorg/cocos2d/opengl/CCRenderTexture$1;->val$finPow:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bmp":Landroid/graphics/Bitmap;
    check-cast p1, Lorg/cocos2d/opengl/CCTexture2D;

    .end local p1    # "res":Lorg/cocos2d/opengl/GLResourceHelper$Resource;
    invoke-virtual {p1, v0}, Lorg/cocos2d/opengl/CCTexture2D;->initWithImage(Landroid/graphics/Bitmap;)V

    .line 64
    return-void
.end method
