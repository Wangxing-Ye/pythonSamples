.class public Lorg/cocos2d/particlesystem/CCParticleFireworks;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleFireworks.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleFireworks;-><init>(I)V

    .line 18
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 7
    .param p1, "p"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const v3, 0x3dcccccd    # 0.1f

    .line 21
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 23
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->duration:F

    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setEmitterMode(I)V

    .line 29
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v2, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 32
    invoke-virtual {p0, v2}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setRadialAccel(F)V

    .line 33
    invoke-virtual {p0, v2}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setRadialAccelVar(F)V

    .line 36
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setSpeed(F)V

    .line 37
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setSpeedVar(F)V

    .line 40
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 41
    .local v0, "winSize":Lorg/cocos2d/types/CGSize;
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    div-float/2addr v1, v5

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 44
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->angle:F

    .line 45
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->angleVar:F

    .line 48
    const/high16 v1, 0x40600000    # 3.5f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->life:F

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->lifeVar:F

    .line 52
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->totalParticles:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->life:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->emissionRate:F

    .line 55
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 56
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 57
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 58
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColor:Lorg/cocos2d/types/ccColor4F;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 59
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 60
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 61
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 62
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 63
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 64
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 65
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 66
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColor:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 73
    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startSize:F

    .line 74
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->startSizeVar:F

    .line 75
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleFireworks;->endSize:F

    .line 77
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "blocks.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->setBlendAdditive(Z)V

    .line 81
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleFireworks;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleFireworks;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleFireworks;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 93
    return-void
.end method
