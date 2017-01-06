.class public Lorg/cocos2d/particlesystem/CCParticleSnow;
.super Lorg/cocos2d/particlesystem/CCQuadParticleSystem;
.source "CCParticleSnow.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleSnow;-><init>(I)V

    .line 17
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 8
    .param p1, "p"    # I

    .prologue
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lorg/cocos2d/particlesystem/CCQuadParticleSystem;-><init>(I)V

    .line 24
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->duration:F

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->emitterMode:I

    .line 30
    invoke-static {v3, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setGravity(Lorg/cocos2d/types/CGPoint;)V

    .line 33
    invoke-virtual {p0, v6}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setSpeed(F)V

    .line 34
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setSpeedVar(F)V

    .line 37
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setRadialAccel(F)V

    .line 38
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setRadialAccelVar(F)V

    .line 41
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setTangentialAccel(F)V

    .line 42
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setTangentialAccelVar(F)V

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

    iget v2, v0, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v2, v7

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 48
    iget v1, v0, Lorg/cocos2d/types/CGSize;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 51
    const/high16 v1, -0x3d4c0000    # -90.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->angle:F

    .line 52
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->angleVar:F

    .line 55
    const/high16 v1, 0x42340000    # 45.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->life:F

    .line 56
    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->lifeVar:F

    .line 59
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startSize:F

    .line 60
    iput v6, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startSizeVar:F

    .line 61
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endSize:F

    .line 64
    iput v7, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->emissionRate:F

    .line 67
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 68
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 69
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 70
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 71
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 72
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 73
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 74
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 75
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 76
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 77
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v4, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 78
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColor:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 79
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 80
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 81
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 82
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSnow;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    iput v3, v1, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 84
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v1

    const-string v2, "fire.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/particlesystem/CCParticleSnow;->setBlendAdditive(Z)V

    .line 88
    return-void
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/particlesystem/CCParticleSnow;->node()Lorg/cocos2d/particlesystem/CCParticleSystem;

    move-result-object v0

    return-object v0
.end method

.method public static node()Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSnow;

    invoke-direct {v0}, Lorg/cocos2d/particlesystem/CCParticleSnow;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBlendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 0
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 100
    return-void
.end method
