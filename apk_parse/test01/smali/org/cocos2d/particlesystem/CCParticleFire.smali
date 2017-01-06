.class public Lorg/cocos2d/particlesystem/CCParticleFire;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleFire.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleFire;-><init>(I)V

    .line 17
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 24
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->duration:F

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->emitterMode:I

    .line 30
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 33
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleFire;->setRadialAccel(F)V

    .line 34
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleFire;->setRadialAccelVar(F)V

    .line 37
    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setSpeed(F)V

    .line 38
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setSpeedVar(F)V

    .line 41
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->angle:F

    .line 42
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->angleVar:F

    .line 45
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 46
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 47
    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 50
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->life:F

    .line 51
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->lifeVar:F

    .line 55
    const/high16 v1, 0x42580000    # 54.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startSize:F

    .line 56
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startSizeVar:F

    .line 57
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endSize:F

    .line 60
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->emissionRate:F

    .line 63
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3f428f5c    # 0.76f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 64
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 65
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3df5c28f    # 0.12f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 66
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFire;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 80
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFire;->setBlendAdditive(Z)V

    .line 84
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleFire;->node()Lorg/cocos2d/particlesystem/CCParticleFire;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleFire;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleFire;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleFire;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 96
    return-void
.end method
