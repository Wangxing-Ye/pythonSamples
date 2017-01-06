.class Lorg/cocos2d/opengl/CCTexture2D$3;
.super Ljava/lang/Object;
.source "CCTexture2D.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/opengl/CCTexture2D;->setTexParameters(IIII)V
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
    iput-object p1, p0, Lorg/cocos2d/opengl/CCTexture2D$3;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 680
    iget-object v0, p0, Lorg/cocos2d/opengl/CCTexture2D$3;->this$0:Lorg/cocos2d/opengl/CCTexture2D;

    # invokes: Lorg/cocos2d/opengl/CCTexture2D;->applyTexParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lorg/cocos2d/opengl/CCTexture2D;->access$3(Lorg/cocos2d/opengl/CCTexture2D;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 681
    return-void
.end method
