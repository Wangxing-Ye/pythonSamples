.class Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
.super Ljava/lang/Object;
.source "CCParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/particlesystem/CCParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCParticle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;,
        Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;
    }
.end annotation


# instance fields
.field color:Lorg/cocos2d/types/ccColor4F;

.field deltaColor:Lorg/cocos2d/types/ccColor4F;

.field deltaRotation:F

.field deltaSize:F

.field modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

.field modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

.field pos:Lorg/cocos2d/types/CGPoint;

.field rotation:F

.field size:F

.field startPos:Lorg/cocos2d/types/CGPoint;

.field timeToLive:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0}, Lorg/cocos2d/types/CGPoint;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    .line 122
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0}, Lorg/cocos2d/types/CGPoint;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->startPos:Lorg/cocos2d/types/CGPoint;

    .line 124
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    .line 125
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    .line 106
    return-void
.end method
