.class Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;
.super Ljava/lang/Object;
.source "CCParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParticleModeA"
.end annotation


# instance fields
.field dir:Lorg/cocos2d/types/CGPoint;

.field radialAccel:F

.field tangentialAccel:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0}, Lorg/cocos2d/types/CGPoint;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->dir:Lorg/cocos2d/types/CGPoint;

    .line 107
    return-void
.end method
