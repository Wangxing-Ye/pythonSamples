.class public Lorg/cocos2d/particlesystem/CCParticleFlower;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleFlower.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleFlower;-><init>(I)V

    .line 21
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 27
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->duration:F

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->emitterMode:I

    .line 33
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 36
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setSpeed(F)V

    .line 37
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setSpeedVar(F)V

    .line 40
    const/high16 v1, -0x3d900000    # -60.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setRadialAccel(F)V

    .line 41
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setRadialAccelVar(F)V

    .line 44
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setTangentialAccel(F)V

    .line 45
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setTangentialAccelVar(F)V

    .line 48
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->angle:F

    .line 49
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->angleVar:F

    .line 52
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 53
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v7

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v7

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 54
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 57
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->life:F

    .line 58
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->lifeVar:F

    .line 61
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startSize:F

    .line 62
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startSizeVar:F

    .line 63
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endSize:F

    .line 66
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->emissionRate:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 79
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 80
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 81
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 82
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 83
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 84
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFlower;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 86
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFlower;->setBlendAdditive(Z)V

    .line 90
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleFlower;->node()Lorg/cocos2d/particlesystem/CCParticleFlower;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleFlower;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleFlower;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleFlower;-><init>()V

    return-object v0
.end method

.method public static node(I)Lorg/cocos2d/particlesystem/CCParticleFlower;
    .locals 1
    .param p0, "p"    # I

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleFlower;

    invoke-direct {v0, p0}, Lorg/cocos2d/particlesystem/CCParticleFlower;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 102
    return-void
.end method
