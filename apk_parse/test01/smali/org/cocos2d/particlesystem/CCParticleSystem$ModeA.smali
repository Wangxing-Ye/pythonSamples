.class Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;
.super Ljava/lang/Object;
.source "CCParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/particlesystem/CCParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeA"
.end annotation


# instance fields
.field gravity:Lorg/cocos2d/types/CGPoint;

.field radialAccel:F

.field radialAccelVar:F

.field speed:F

.field speedVar:F

.field tangentialAccel:F

.field tangentialAccelVar:F

.field final synthetic this$0:Lorg/cocos2d/particlesystem/CCParticleSystem;


# direct methods
.method constructor <init>(Lorg/cocos2d/particlesystem/CCParticleSystem;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->this$0:Lorg/cocos2d/particlesystem/CCParticleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->gravity:Lorg/cocos2d/types/CGPoint;

    return-void
.end method
