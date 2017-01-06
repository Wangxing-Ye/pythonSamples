.class public Lorg/cocos2d/particlesystem/CCParticleSpiral;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleSpiral.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleSpiral;-><init>(I)V

    .line 17
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 23
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->duration:F

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->emitterMode:I

    .line 29
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 32
    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setSpeed(F)V

    .line 33
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setSpeedVar(F)V

    .line 36
    const/high16 v1, -0x3c420000    # -380.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setRadialAccel(F)V

    .line 37
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setRadialAccelVar(F)V

    .line 40
    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setTangentialAccel(F)V

    .line 41
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setTangentialAccelVar(F)V

    .line 44
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->angle:F

    .line 45
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->angleVar:F

    .line 48
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 49
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v7

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v7

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 50
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 53
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->life:F

    .line 54
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->lifeVar:F

    .line 57
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startSize:F

    .line 58
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startSizeVar:F

    .line 59
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endSize:F

    .line 62
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->emissionRate:F

    .line 65
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 66
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 79
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 80
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSpiral;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 82
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->setBlendAdditive(Z)V

    .line 86
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleSpiral;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSpiral;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleSpiral;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 98
    return-void
.end method
