.class Lorg/cocos2d/opengl/CCTexture2D$1;
.super Ljava/lang/Object;
.source "CCTexture2D.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/CCTexture2D;->finalize()V
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
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTexture2D$1;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v1, p0, Lorg/cocos2d/opengl/CCTexture2D$1;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    # getter for: Lorg/cocos2d/opengl/CCTexture2D;->mCreator:Ljavax/microedition/khronos/opengles/GL;
    invoke-static {v1}, Lorg/cocos2d/opengl/CCTexture2D;->access$0(Lorg/cocos2d/opengl/CCTexture2D;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 172
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 173
    .local v0, "intBuffer":Ljava/nio/IntBuffer;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cocos2d/opengl/CCTexture2D$1;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    # getter for: Lorg/cocos2d/opengl/CCTexture2D;->_name:I
    invoke-static {v2}, Lorg/cocos2d/opengl/CCTexture2D;->access$1(Lorg/cocos2d/opengl/CCTexture2D;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 174
    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 176
    .end local v0    # "intBuffer":Ljava/nio/IntBuffer;
    :cond_0
    return-void
.end method
