.class public Lorg/cocos2d/particlesystem/CCParticleSun;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleSun.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x15e

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleSun;-><init>(I)V

    .line 21
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 7
    .param p1, "p"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setBlendAdditive(Z)V

    .line 29
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->duration:F

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->emitterMode:I

    .line 35
    invoke-static {v3, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 38
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSun;->setRadialAccel(F)V

    .line 39
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSun;->setRadialAccelVar(F)V

    .line 42
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setSpeed(F)V

    .line 43
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setSpeedVar(F)V

    .line 46
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->angle:F

    .line 47
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->angleVar:F

    .line 50
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 51
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v6

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v6

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 52
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 55
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->life:F

    .line 56
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->lifeVar:F

    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startSize:F

    .line 60
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startSizeVar:F

    .line 61
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endSize:F

    .line 64
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->emissionRate:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3f428f5c    # 0.76f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColor:Lorg/cocos2d/types/ccColor4F;

    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3df5c28f    # 0.12f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 79
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 80
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 81
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 82
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSun;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 84
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSun;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 85
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleSun;->node()Lorg/cocos2d/particlesystem/CCParticleSun;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSun;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSun;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleSun;-><init>()V

    return-object v0
.end method

.method public static node(I)Lorg/cocos2d/particlesystem/CCParticleSun;
    .locals 1
    .param p0, "p"    # I

    .prologue
    .line 16
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSun;

    invoke-direct {v0, p0}, Lorg/cocos2d/particlesystem/CCParticleSun;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 97
    return-void
.end method
