.class public Lorg/cocos2d/particlesystem/CCParticleSmoke;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleSmoke.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleSmoke;-><init>(I)V

    .line 17
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v4, 0x3ca3d70a    # 0.02f

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 23
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->duration:F

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->emitterMode:I

    .line 29
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 32
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setRadialAccel(F)V

    .line 33
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setRadialAccelVar(F)V

    .line 36
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setSpeed(F)V

    .line 37
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setSpeedVar(F)V

    .line 40
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->angle:F

    .line 41
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->angleVar:F

    .line 44
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 45
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 46
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 49
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->life:F

    .line 50
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->lifeVar:F

    .line 53
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startSize:F

    .line 54
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startSizeVar:F

    .line 55
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endSize:F

    .line 58
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->emissionRate:F

    .line 61
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 62
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 63
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v5, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 64
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 65
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 66
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v6, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSmoke;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 78
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->setBlendAdditive(Z)V

    .line 82
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleSmoke;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSmoke;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleSmoke;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 94
    return-void
.end method
