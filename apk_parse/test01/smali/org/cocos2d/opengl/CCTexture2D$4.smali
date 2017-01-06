.class Lorg/cocos2d/opengl/CCTexture2D$4;
.super Ljava/lang/Object;
.source "CCTexture2D.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/CCTexture2D;->generateMipmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/opengl/CCTexture2D;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTexture2D$4;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v1, 0xde1

    .line 740
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D$4;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    # getter for: Lorg/cocos2d/opengl/CCTexture2D;->_name:I
    invoke-static {v0}, Lorg/cocos2d/opengl/CCTexture2D;->access$1(Lorg/cocos2d/opengl/CCTexture2D;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D$4;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    # getter for: Lorg/cocos2d/opengl/CCTexture2D;->_name:I
    invoke-static {v0}, Lorg/cocos2d/opengl/CCTexture2D;->access$1(Lorg/cocos2d/opengl/CCTexture2D;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 742
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    .line 744
    :cond_0
    return-void
.end method
