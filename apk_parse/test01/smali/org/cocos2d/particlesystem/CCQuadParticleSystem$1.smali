.class Lorg/cocos2d/particlesystem/CCQuadParticleSystem$1;
.super Ljava/lang/Object;
.source "CCQuadParticleSystem.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/particlesystem/CCQuadParticleSystem;


# direct methods
.method constructor <init>(Lorg/cocos2d/particlesystem/CCQuadParticleSystem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$1;->this$0:Lorg/cocos2d/particlesystem/CCQuadParticleSystem;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 126
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$1;->this$0:Lorg/cocos2d/particlesystem/CCQuadParticleSystem;

    iget-object v2, v2, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 127
    return-void
.end method
