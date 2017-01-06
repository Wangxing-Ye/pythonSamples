.class Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;
.super Ljava/lang/Object;
.source "CCQuadParticleSystem.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuadParticleLoader"
.end annotation


# instance fields
.field private weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2d/particlesystem/CCQuadParticleSystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2d/particlesystem/CCQuadParticleSystem;)V
    .locals 1
    .param p1, "holder"    # Lorg/cocos2d/particlesystem/CCQuadParticleSystem;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;->weakRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method


# virtual methods
.method public load(Lorg/cocos2d/opengl/GLResourceHelper$Resource;)V
    .locals 7
    .param p1, "res"    # Lorg/cocos2d/opengl/GLResourceHelper$Resource;

    .prologue
    const/4 v3, 0x3

    const v6, 0x88e8

    const/4 v5, 0x0

    const v4, 0x8892

    .line 60
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;

    .line 61
    .local v1, "thisp":Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 66
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    new-array v2, v3, [I

    iput-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    .line 67
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 71
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    aget v2, v2, v5

    invoke-interface {v0, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 72
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 76
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 77
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 81
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v0, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 82
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-object v2, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 86
    invoke-interface {v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method
