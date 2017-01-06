.class public Lorg/cocos2d/particlesystem/CCPointParticleSystem;
.super Lorg/cocos2d/particlesystem/CCParticleSystem;
.source "CCPointParticleSystem.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field sizeBuffer:Ljava/nio/FloatBuffer;

.field vertices:Ljava/nio/FloatBuffer;

.field verticesID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfParticles"    # I

    .prologue
    const v5, 0x88e8

    const/4 v2, 0x2

    const/4 v4, 0x0

    const v3, 0x8892

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;-><init>(I)V

    .line 40
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 42
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    mul-int/lit8 v1, p1, 0x6

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    .line 43
    invoke-static {p1}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->sizeBuffer:Ljava/nio/FloatBuffer;

    .line 45
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    .line 46
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    invoke-interface {v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 49
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    aget v1, v1, v4

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 50
    iget v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 52
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 53
    iget v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->sizeBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 55
    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 56
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 10

    .prologue
    const v9, 0x8892

    const v8, 0x8861

    const/16 v7, 0x1406

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    iget v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleIdx:I

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 101
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const v2, 0x8078

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    .line 103
    const/16 v2, 0xde1

    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 105
    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 106
    const v2, 0x8862

    invoke-interface {v0, v8, v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    .line 108
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    aget v2, v2, v5

    invoke-interface {v0, v9, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 110
    const/4 v2, 0x2

    const/16 v3, 0x18

    invoke-interface {v0, v2, v7, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 112
    const/4 v2, 0x4

    const/16 v3, 0x18

    const/16 v4, 0x8

    invoke-interface {v0, v2, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 114
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    aget v2, v2, v6

    invoke-interface {v0, v9, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 115
    const v2, 0x8b9c

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 116
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->sizeBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v7, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "newBlend":Z
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    const/16 v3, 0x303

    if-eq v2, v3, :cond_2

    .line 121
    :cond_1
    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v3, v3, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 125
    :cond_2
    iget v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleIdx:I

    invoke-interface {v0, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 128
    if-eqz v1, :cond_3

    .line 129
    const/16 v2, 0x303

    invoke-interface {v0, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 132
    :cond_3
    invoke-interface {v0, v9, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 134
    const v2, 0x8b9c

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    .line 135
    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 138
    const v2, 0x8078

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    .line 61
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 62
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    return-void
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public postStep()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 83
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 84
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    aget v1, v1, v4

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 85
    iget v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleCount:I

    mul-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 87
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->verticesID:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 88
    iget v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleCount:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->sizeBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 90
    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 91
    return-void
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 189
    return-void
.end method

.method public setEndSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 180
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42800000    # 64.0f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 181
    const-string v1, "PointParticleSystem only supports 0 <= size <= 64"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 182
    :cond_1
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setEndSize(F)V

    .line 183
    return-void
.end method

.method public setEndSpin(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 158
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setStartSpin(F)V

    .line 160
    return-void
.end method

.method public setEndSpinVar(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 164
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setStartSpin(F)V

    .line 166
    return-void
.end method

.method public setStartSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 173
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42800000    # 64.0f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 174
    const-string v1, "PointParticleSystem only supports 0 <= size <= 64"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 175
    :cond_1
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setStartSize(F)V

    .line 176
    return-void
.end method

.method public setStartSpin(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 146
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setStartSpin(F)V

    .line 148
    return-void
.end method

.method public setStartSpinVar(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 152
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PointParticleSystem doesn\'t support spinning"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setStartSpin(F)V

    .line 154
    return-void
.end method

.method public updateQuad(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;Lorg/cocos2d/types/CGPoint;)V
    .locals 4
    .param p1, "p"    # Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    .param p2, "newPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 70
    iget v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleIdx:I

    mul-int/lit8 v0, v1, 0x6

    .line 71
    .local v0, "base":I
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x0

    iget v3, p2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x1

    iget v3, p2, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v3, v3, Lorg/cocos2d/types/ccColor4F;->r:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x3

    iget-object v3, p1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v3, v3, Lorg/cocos2d/types/ccColor4F;->g:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v3, v3, Lorg/cocos2d/types/ccColor4F;->b:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x5

    iget-object v3, p1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v3, v3, Lorg/cocos2d/types/ccColor4F;->a:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->sizeBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/particlesystem/CCPointParticleSystem;->particleIdx:I

    iget v3, p1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 79
    return-void
.end method
