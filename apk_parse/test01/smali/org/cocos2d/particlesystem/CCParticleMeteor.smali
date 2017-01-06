.class public Lorg/cocos2d/particlesystem/CCParticleMeteor;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleMeteor.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleMeteor;-><init>(I)V

    .line 17
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 24
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->duration:F

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->emitterMode:I

    .line 30
    const/high16 v1, -0x3cb80000    # -200.0f

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 33
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setSpeed(F)V

    .line 34
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setSpeedVar(F)V

    .line 37
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setRadialAccel(F)V

    .line 38
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setRadialAccelVar(F)V

    .line 41
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setTangentialAccel(F)V

    .line 42
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setTangentialAccelVar(F)V

    .line 45
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->angle:F

    .line 46
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->angleVar:F

    .line 49
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 50
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v5

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 51
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 54
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->life:F

    .line 55
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->lifeVar:F

    .line 58
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startSize:F

    .line 59
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startSizeVar:F

    .line 60
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endSize:F

    .line 63
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->emissionRate:F

    .line 66
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v7, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v7, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3dcccccd    # 0.1f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 79
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 80
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 81
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleMeteor;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 83
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->setBlendAdditive(Z)V

    .line 87
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleMeteor;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleMeteor;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleMeteor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 99
    return-void
.end method
