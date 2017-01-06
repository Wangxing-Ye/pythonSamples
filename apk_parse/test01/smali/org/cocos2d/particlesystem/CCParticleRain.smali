.class public Lorg/cocos2d/particlesystem/CCParticleRain;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleRain.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;-><init>(I)V

    .line 16
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 7
    .param p1, "p"    # I

    .prologue
    const v6, 0x3f333333    # 0.7f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 22
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->duration:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->emitterMode:I

    .line 27
    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 30
    invoke-virtual {p0, v2}, Lorg/cocos2d/particlesystem/CCParticleRain;->setRadialAccel(F)V

    .line 31
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleRain;->setRadialAccelVar(F)V

    .line 34
    invoke-virtual {p0, v2}, Lorg/cocos2d/particlesystem/CCParticleRain;->setTangentialAccel(F)V

    .line 35
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleRain;->setTangentialAccelVar(F)V

    .line 38
    const/high16 v0, 0x43020000    # 130.0f

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setSpeed(F)V

    .line 39
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setSpeedVar(F)V

    .line 42
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->angle:F

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->angleVar:F

    .line 46
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v0, v4

    .line 47
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    .line 46
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 48
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->posVar:Lorg/cocos2d/types/CGPoint;

    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 49
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->posVar:Lorg/cocos2d/types/CGPoint;

    iput v2, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 52
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->life:F

    .line 53
    iput v2, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->lifeVar:F

    .line 56
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->size:F

    .line 57
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->sizeVar:F

    .line 60
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startSize:F

    .line 61
    iput v4, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startSizeVar:F

    .line 62
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endSize:F

    .line 65
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->emissionRate:F

    .line 68
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 69
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColor:Lorg/cocos2d/types/ccColor4F;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 70
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 71
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 72
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 73
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 74
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 75
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 76
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 77
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColor:Lorg/cocos2d/types/ccColor4F;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 78
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 79
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColor:Lorg/cocos2d/types/ccColor4F;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 80
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 81
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 82
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 83
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleRain;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v2, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 85
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleRain;->setBlendAdditive(Z)V

    .line 89
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleRain;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleRain;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleRain;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 101
    return-void
.end method
