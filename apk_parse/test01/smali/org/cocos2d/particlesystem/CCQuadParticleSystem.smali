.class public Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.super Lorg/cocos2d/particlesystem/CCParticleSystem;
.source "CCQuadParticleSystem.java"

# interfaces
.implements Lorg/cocos2d/opengl/GLResourceHelper$Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final QuadSize:I = 0x3

.field private static tmpArray:[F


# instance fields
.field colors:Ljava/nio/FloatBuffer;

.field indices:Ljava/nio/ShortBuffer;

.field quadsIDs:[I

.field texCoords:Ljava/nio/FloatBuffer;

.field vertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->$assertionsDisabled:Z

    .line 247
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "numberOfParticles"    # I

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;-><init>(I)V

    .line 97
    iget v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    .line 98
    iget v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    .line 99
    iget v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    .line 101
    iget v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    mul-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/cocos2d/utils/BufferProvider;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    .line 103
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    const-string v1, "cocos2d"

    const-string v2, "Particle system: not enough memory"

    invoke-static {v1, v2}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0, v2, v2, v3, v3}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->initTexCoordsWithRect(FFFF)V

    .line 110
    invoke-virtual {p0}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->initIndices()V

    .line 112
    new-instance v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;

    invoke-direct {v0, p0}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$QuadParticleLoader;-><init>(Lorg/cocos2d/particlesystem/CCQuadParticleSystem;)V

    .line 114
    .local v0, "mLoader":Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lorg/cocos2d/opengl/GLResourceHelper;->addLoader(Lorg/cocos2d/opengl/GLResourceHelper$Resource;Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;Z)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gle"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0x1406

    const/4 v4, 0x2

    const/4 v8, 0x1

    const v7, 0x8892

    const/4 v6, 0x0

    .line 372
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    if-nez v2, :cond_0

    .line 422
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 378
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 380
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v2, 0xde1

    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v3}, Lorg/cocos2d/opengl/CCTexture2D;->name()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 382
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    aget v2, v2, v6

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 383
    invoke-interface {v0, v4, v5, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 387
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    aget v2, v2, v8

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 388
    invoke-interface {v0, v4, v5, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 392
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    aget v2, v2, v4

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 393
    const/4 v2, 0x4

    invoke-interface {v0, v2, v5, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "newBlend":Z
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    const/16 v3, 0x303

    if-eq v2, v3, :cond_2

    .line 398
    :cond_1
    const/4 v1, 0x1

    .line 399
    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v2, v2, Lorg/cocos2d/types/ccBlendFunc;->src:I

    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v3, v3, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 411
    :cond_2
    const/4 v2, 0x4

    iget v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->particleIdx:I

    mul-int/lit8 v3, v3, 0x6

    const/16 v4, 0x1403

    iget-object v5, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 414
    if-eqz v1, :cond_3

    .line 415
    const/16 v2, 0x303

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 418
    :cond_3
    invoke-interface {v0, v7, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lorg/cocos2d/opengl/GLResourceHelper;->sharedHelper()Lorg/cocos2d/opengl/GLResourceHelper;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$1;

    invoke-direct {v1, p0}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem$1;-><init>(Lorg/cocos2d/particlesystem/CCQuadParticleSystem;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/GLResourceHelper;->perform(Lorg/cocos2d/opengl/GLResourceHelper$GLResorceTask;)V

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void
.end method

.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public initIndices()V
    .locals 6

    .prologue
    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    if-lt v2, v3, :cond_0

    .line 245
    return-void

    .line 235
    :cond_0
    mul-int/lit8 v3, v2, 0x4

    int-to-short v0, v3

    .line 236
    .local v0, "base4":S
    mul-int/lit8 v1, v2, 0x6

    .line 237
    .local v1, "base6":I
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x0

    add-int/lit8 v5, v0, 0x0

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 238
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 239
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 241
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v0, 0x1

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 242
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x4

    add-int/lit8 v5, v0, 0x2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 243
    iget-object v3, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v5, v0, 0x3

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initTexCoordsWithRect(FFFF)V
    .locals 15
    .param p1, "rectX"    # F
    .param p2, "rectY"    # F
    .param p3, "rectW"    # F
    .param p4, "rectH"    # F

    .prologue
    .line 142
    move/from16 v1, p1

    .line 143
    .local v1, "bottomLeftX":F
    move/from16 v2, p2

    .line 145
    .local v2, "bottomLeftY":F
    add-float v3, v1, p3

    .line 146
    .local v3, "bottomRightX":F
    move v4, v2

    .line 148
    .local v4, "bottomRightY":F
    move v7, v1

    .line 149
    .local v7, "topLeftX":F
    add-float v8, v2, p4

    .line 151
    .local v8, "topLeftY":F
    move v9, v3

    .line 152
    .local v9, "topRightX":F
    move v10, v8

    .line 155
    .local v10, "topRightY":F
    move v6, v10

    .line 156
    .local v6, "tmp":F
    move v10, v4

    .line 157
    move v4, v6

    .line 159
    move v6, v8

    .line 160
    move v8, v2

    .line 161
    move v2, v6

    .line 163
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v11, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->totalParticles:I

    if-lt v5, v11, :cond_0

    .line 192
    return-void

    .line 164
    :cond_0
    mul-int/lit8 v0, v5, 0x8

    .line 166
    .local v0, "base":I
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x0

    aput v1, v11, v12

    .line 167
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x1

    aput v2, v11, v12

    .line 172
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x2

    aput v3, v11, v12

    .line 173
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x3

    aput v4, v11, v12

    .line 178
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x4

    aput v7, v11, v12

    .line 179
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x5

    aput v8, v11, v12

    .line 184
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x6

    aput v9, v11, v12

    .line 185
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x7

    aput v10, v11, v12

    .line 189
    iget-object v11, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    sget-object v11, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    const/16 v14, 0x8

    invoke-static {v11, v12, v13, v14}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public initTexCoordsWithRect(Lorg/cocos2d/types/CGRect;)V
    .locals 4
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 138
    iget-object v0, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p1, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    iget-object v2, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    iget-object v3, p1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v3, v3, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->initTexCoordsWithRect(FFFF)V

    .line 139
    return-void
.end method

.method public postStep()V
    .locals 5

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    if-nez v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 347
    :cond_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 350
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    aget v1, v1, v3

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 351
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texCoords:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 355
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 356
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 357
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 360
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->quadsIDs:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 361
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 365
    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 428
    return-void
.end method

.method public setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 2
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 225
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOffsetRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->getZero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "QuadParticle only supports SpriteFrames with no offsets"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    if-eq v0, v1, :cond_1

    .line 229
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 230
    :cond_1
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v2, v0, v1}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V

    .line 217
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V
    .locals 7
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 200
    iget-object v6, p0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    if-eq p1, v6, :cond_0

    .line 201
    invoke-super {p0, p1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsWide()I

    move-result v6

    int-to-float v5, v6

    .line 205
    .local v5, "wide":F
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->pixelsHigh()I

    move-result v6

    int-to-float v0, v6

    .line 207
    .local v0, "high":F
    iget-object v6, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->x:F

    div-float v3, v6, v5

    .line 208
    .local v3, "rectX":F
    iget-object v6, p2, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    iget v6, v6, Lorg/cocos2d/types/CGPoint;->y:F

    div-float v4, v6, v0

    .line 209
    .local v4, "rectY":F
    iget-object v6, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->width:F

    div-float v2, v6, v5

    .line 210
    .local v2, "rectW":F
    iget-object v6, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v6, v6, Lorg/cocos2d/types/CGSize;->height:F

    div-float v1, v6, v0

    .line 211
    .local v1, "rectH":F
    invoke-virtual {p0, v3, v4, v2, v1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->initTexCoordsWithRect(FFFF)V

    .line 212
    return-void
.end method

.method public updateQuad(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;Lorg/cocos2d/types/CGPoint;)V
    .locals 26
    .param p1, "p"    # Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    .param p2, "newPos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 252
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v12, v0, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->particleIdx:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x10

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->colors:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    invoke-static/range {v22 .. v25}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 264
    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v14, v22, v23

    .line 265
    .local v14, "size_2":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->rotation:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_1

    .line 266
    neg-float v0, v14

    move/from16 v17, v0

    .line 267
    .local v17, "x1":F
    neg-float v0, v14

    move/from16 v20, v0

    .line 269
    .local v20, "y1":F
    move/from16 v18, v14

    .line 270
    .local v18, "x2":F
    move/from16 v21, v14

    .line 271
    .local v21, "y2":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v16, v0

    .line 272
    .local v16, "x":F
    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v19, v0

    .line 274
    .local v19, "y":F
    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->rotation:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v22

    move/from16 v0, v22

    neg-float v13, v0

    .line 275
    .local v13, "r":F
    float-to-double v0, v13

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v7, v0

    .line 276
    .local v7, "cr":F
    float-to-double v0, v13

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v15, v0

    .line 277
    .local v15, "sr":F
    mul-float v22, v17, v7

    mul-float v23, v20, v15

    sub-float v22, v22, v23

    add-float v2, v22, v16

    .line 278
    .local v2, "ax":F
    mul-float v22, v17, v15

    mul-float v23, v20, v7

    add-float v22, v22, v23

    add-float v3, v22, v19

    .line 279
    .local v3, "ay":F
    mul-float v22, v18, v7

    mul-float v23, v20, v15

    sub-float v22, v22, v23

    add-float v5, v22, v16

    .line 280
    .local v5, "bx":F
    mul-float v22, v18, v15

    mul-float v23, v20, v7

    add-float v22, v22, v23

    add-float v6, v22, v19

    .line 281
    .local v6, "by":F
    mul-float v22, v18, v7

    mul-float v23, v21, v15

    sub-float v22, v22, v23

    add-float v8, v22, v16

    .line 282
    .local v8, "cx":F
    mul-float v22, v18, v15

    mul-float v23, v21, v7

    add-float v22, v22, v23

    add-float v9, v22, v19

    .line 283
    .local v9, "cy":F
    mul-float v22, v17, v7

    mul-float v23, v21, v15

    sub-float v22, v22, v23

    add-float v10, v22, v16

    .line 284
    .local v10, "dx":F
    mul-float v22, v17, v15

    mul-float v23, v21, v7

    add-float v22, v22, v23

    add-float v11, v22, v19

    .line 287
    .local v11, "dy":F
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x0

    aput v2, v22, v23

    .line 288
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x1

    aput v3, v22, v23

    .line 293
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x2

    aput v5, v22, v23

    .line 294
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x3

    aput v6, v22, v23

    .line 299
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x4

    aput v10, v22, v23

    .line 300
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x5

    aput v11, v22, v23

    .line 305
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x6

    aput v8, v22, v23

    .line 306
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x7

    aput v9, v22, v23

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->particleIdx:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-static/range {v22 .. v25}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    .line 340
    .end local v2    # "ax":F
    .end local v3    # "ay":F
    .end local v5    # "bx":F
    .end local v6    # "by":F
    .end local v7    # "cr":F
    .end local v8    # "cx":F
    .end local v9    # "cy":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v13    # "r":F
    .end local v15    # "sr":F
    .end local v16    # "x":F
    .end local v17    # "x1":F
    .end local v18    # "x2":F
    .end local v19    # "y":F
    .end local v20    # "y1":F
    .end local v21    # "y2":F
    :goto_1
    return-void

    .line 253
    .end local v14    # "size_2":F
    :cond_0
    mul-int/lit8 v4, v12, 0x4

    .line 254
    .local v4, "baseIndex":I
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    add-int/lit8 v23, v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    move/from16 v24, v0

    aput v24, v22, v23

    .line 255
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    add-int/lit8 v23, v4, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    move/from16 v24, v0

    aput v24, v22, v23

    .line 256
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    add-int/lit8 v23, v4, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    move/from16 v24, v0

    aput v24, v22, v23

    .line 257
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    add-int/lit8 v23, v4, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    move/from16 v24, v0

    aput v24, v22, v23

    .line 252
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 314
    .end local v4    # "baseIndex":I
    .restart local v14    # "size_2":F
    :cond_1
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v24, v0

    sub-float v24, v24, v14

    aput v24, v22, v23

    .line 315
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v24, v0

    sub-float v24, v24, v14

    aput v24, v22, v23

    .line 320
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v24, v0

    add-float v24, v24, v14

    aput v24, v22, v23

    .line 321
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v24, v0

    sub-float v24, v24, v14

    aput v24, v22, v23

    .line 326
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v24, v0

    sub-float v24, v24, v14

    aput v24, v22, v23

    .line 327
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x5

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v24, v0

    add-float v24, v24, v14

    aput v24, v22, v23

    .line 332
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x6

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v24, v0

    add-float v24, v24, v14

    aput v24, v22, v23

    .line 333
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x7

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v24, v0

    add-float v24, v24, v14

    aput v24, v22, v23

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->particleIdx:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    sget-object v22, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->tmpArray:[F

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;->vertices:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-static/range {v22 .. v25}, Lorg/cocos2d/utils/BufferUtils;->copyFloats([FILjava/nio/FloatBuffer;I)V

    goto/16 :goto_1
.end method
