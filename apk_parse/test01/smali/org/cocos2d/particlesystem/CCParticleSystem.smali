.class public abstract Lorg/cocos2d/particlesystem/CCParticleSystem;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCParticleSystem.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCTextureProtocol;
.implements Lorg/cocos2d/actions/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;,
        Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;,
        Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final kCCParticleDurationInfinity:I = -0x1

.field public static final kCCParticleModeGravity:I = 0x0

.field public static final kCCParticleModeRadius:I = 0x1

.field public static final kCCParticleStartRadiusEqualToEndRadius:I = -0x1

.field public static final kCCParticleStartSizeEqualToEndSize:I = -0x1

.field public static final kCCPositionTypeFree:I = 0x0

.field public static final kCCPositionTypeGrouped:I = 0x2

.field public static final kCCPositionTypeRelative:I = 0x1

.field public static final kParticleDurationInfinity:I = -0x1

.field public static final kParticleStartSizeEqualToEndSize:I = -0x1


# instance fields
.field protected active:Z

.field protected angle:F

.field protected angleVar:F

.field protected autoRemoveOnFinish_:Z

.field blendFunc:Lorg/cocos2d/types/ccBlendFunc;

.field protected centerOfGravity:Lorg/cocos2d/types/CGPoint;

.field protected colorModulate:Z

.field protected colorsID:I

.field protected duration:F

.field protected elapsed:F

.field protected emissionRate:F

.field protected emitCounter:F

.field emitterMode:I

.field protected endColor:Lorg/cocos2d/types/ccColor4F;

.field protected endColorVar:Lorg/cocos2d/types/ccColor4F;

.field endSize:F

.field endSizeVar:F

.field endSpin:F

.field endSpinVar:F

.field protected id:I

.field protected life:F

.field protected lifeVar:F

.field modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

.field modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

.field protected particleCount:I

.field protected particleIdx:I

.field protected particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

.field protected posVar:Lorg/cocos2d/types/CGPoint;

.field private positionType_:I

.field protected size:F

.field protected sizeVar:F

.field protected source:Lorg/cocos2d/types/CGPoint;

.field protected startColor:Lorg/cocos2d/types/ccColor4F;

.field protected startColorVar:Lorg/cocos2d/types/ccColor4F;

.field startSize:F

.field startSizeVar:F

.field startSpin:F

.field startSpinVar:F

.field protected texture:Lorg/cocos2d/opengl/CCTexture2D;

.field protected totalParticles:I

.field vertices:[Lorg/cocos2d/types/ccPointSprite;

.field protected verticesID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/cocos2d/particlesystem/CCParticleSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(I)V
    .locals 6
    .param p1, "numberOfParticles"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 685
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 242
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    .line 253
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->source:Lorg/cocos2d/types/CGPoint;

    .line 256
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 305
    new-instance v1, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v1}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    .line 314
    new-instance v1, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v1}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 323
    new-instance v1, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v1}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    .line 329
    new-instance v1, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v1}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 335
    new-instance v1, Lorg/cocos2d/types/ccBlendFunc;

    const/16 v2, 0x303

    invoke-direct {v1, v4, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    .line 373
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    .line 402
    iput v5, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->verticesID:I

    .line 686
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    .line 688
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    new-array v1, v1, [Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    if-lt v0, v1, :cond_0

    .line 695
    iput-boolean v4, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->active:Z

    .line 698
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    .line 701
    invoke-virtual {p0, v3}, Lorg/cocos2d/particlesystem/CCParticleSystem;->setEmitterMode(I)V

    .line 707
    iput-boolean v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->autoRemoveOnFinish_:Z

    .line 725
    invoke-virtual {p0, v4}, Lorg/cocos2d/particlesystem/CCParticleSystem;->scheduleUpdate(I)V

    .line 726
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    new-instance v2, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    invoke-direct {v2}, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;-><init>()V

    aput-object v2, v1, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "plistFile"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 877
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 242
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    .line 253
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->source:Lorg/cocos2d/types/CGPoint;

    .line 256
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 305
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    .line 314
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 323
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    .line 329
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 335
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    .line 373
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    .line 402
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->verticesID:I

    .line 884
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, "dictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v3, -0x1

    .line 890
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 242
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    .line 253
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->source:Lorg/cocos2d/types/CGPoint;

    .line 256
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 305
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    .line 314
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 323
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    .line 329
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0}, Lorg/cocos2d/types/ccColor4F;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 335
    new-instance v0, Lorg/cocos2d/types/ccBlendFunc;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/ccBlendFunc;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    .line 373
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    .line 402
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->verticesID:I

    .line 1027
    return-void
.end method

.method private initParticle(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;)V
    .locals 27
    .param p1, "particle"    # Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    .prologue
    .line 731
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->life:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->lifeVar:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    .line 734
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    .line 734
    invoke-virtual/range {v21 .. v23}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 739
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 740
    .local v20, "start_r":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 741
    .local v19, "start_g":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 742
    .local v18, "start_b":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 745
    .local v17, "start_a":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->r:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 746
    .local v12, "end_r":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->g:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 747
    .local v11, "end_g":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->b:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 748
    .local v10, "end_b":F
    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/cocos2d/types/ccColor4F;->a:F

    move/from16 v24, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 750
    .local v9, "end_a":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2d/types/util/ccColor4FUtil;->set(Lorg/cocos2d/types/ccColor4F;FFFF)V

    .line 752
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    move-object/from16 v21, v0

    .line 753
    sub-float v22, v12, v20

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v23, v0

    div-float v22, v22, v23

    .line 754
    sub-float v23, v11, v19

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v24, v0

    div-float v23, v23, v24

    .line 755
    sub-float v24, v10, v18

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v25, v0

    div-float v24, v24, v25

    .line 756
    sub-float v25, v9, v17

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v26, v0

    div-float v25, v25, v26

    .line 752
    invoke-static/range {v21 .. v25}, Lorg/cocos2d/types/util/ccColor4FUtil;->set(Lorg/cocos2d/types/ccColor4F;FFFF)V

    .line 759
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSize:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSizeVar:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 761
    .local v16, "startS":F
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSize:F

    move/from16 v21, v0

    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_2

    .line 763
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaSize:F

    .line 771
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSpin:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSpinVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v14, v21, v22

    .line 772
    .local v14, "startA":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSpin:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSpinVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v6, v21, v22

    .line 773
    .local v6, "endA":F
    move-object/from16 v0, p1

    iput v14, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->rotation:F

    .line 774
    sub-float v21, v6, v14

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaRotation:F

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 778
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->startPos:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/particlesystem/CCParticleSystem;->convertToWorldSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 784
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->angle:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->angleVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v5

    .line 787
    .local v5, "a":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speed:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speedVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v13, v21, v22

    .line 790
    .local v13, "s":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 791
    new-instance v21, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    invoke-direct/range {v21 .. v21}, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    .line 795
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->dir:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v21, v0

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 796
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->dir:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;F)V

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccel:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccelVar:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->radialAccel:F

    .line 802
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccel:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccelVar:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->tangentialAccel:F

    .line 825
    .end local v13    # "s":F
    :goto_2
    return-void

    .line 765
    .end local v5    # "a":F
    .end local v6    # "endA":F
    .end local v14    # "startA":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSize:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSizeVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v8, v21, v22

    .line 766
    .local v8, "endS":F
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 767
    sub-float v21, v8, v16

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaSize:F

    goto/16 :goto_0

    .line 779
    .end local v8    # "endS":F
    .restart local v6    # "endA":F
    .restart local v14    # "startA":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 780
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->startPos:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->position_:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    goto/16 :goto_1

    .line 808
    .restart local v5    # "a":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadius:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadiusVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v15, v21, v22

    .line 809
    .local v15, "startRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadius:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadiusVar:F

    move/from16 v22, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v23

    mul-float v22, v22, v23

    add-float v7, v21, v22

    .line 811
    .local v7, "endRadius":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    .line 812
    new-instance v21, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    invoke-direct/range {v21 .. v21}, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    .line 815
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v15, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->radius:F

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadius:F

    move/from16 v21, v0

    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_6

    .line 818
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->deltaRadius:F

    .line 822
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v5, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->angle:F

    .line 823
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecond:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecondVar:F

    move/from16 v23, v0

    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CCRANDOM_MINUS1_1()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lorg/cocos2d/config/ccMacros;->CC_DEGREES_TO_RADIANS(F)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->degreesPerSecond:F

    goto/16 :goto_2

    .line 820
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    move-object/from16 v21, v0

    sub-float v22, v7, v15

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->deltaRadius:F

    goto :goto_3
.end method

.method public static particleWithFile(Ljava/lang/String;)Lorg/cocos2d/particlesystem/CCParticleSystem;
    .locals 1
    .param p0, "plistFile"    # Ljava/lang/String;

    .prologue
    .line 868
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addParticle()Z
    .locals 3

    .prologue
    .line 1031
    invoke-virtual {p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    const/4 v1, 0x0

    .line 1036
    :goto_0
    return v1

    .line 1033
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    aget-object v0, v1, v2

    .line 1034
    .local v0, "particle":Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    invoke-direct {p0, v0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->initParticle(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;)V

    .line 1035
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    .line 1036
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public endRadius()F
    .locals 2

    .prologue
    .line 522
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadius:F

    return v0
.end method

.method public endRadiusVar()F
    .locals 2

    .prologue
    .line 532
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadiusVar:F

    return v0
.end method

.method public getActive()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->active:Z

    return v0
.end method

.method public getBlendAdditive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1199
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->src:I

    const/16 v2, 0x302

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v1, v1, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenterOfGravity()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->duration:F

    return v0
.end method

.method public getGravity()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->gravity:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getLife()F
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->life:F

    return v0
.end method

.method public getParticleCount()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    return v0
.end method

.method public getPosVar()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getPositionType()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    return v0
.end method

.method public getRadialAccel()F
    .locals 2

    .prologue
    .line 445
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 446
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccel:F

    return v0
.end method

.method public getRadialAccelVar()F
    .locals 2

    .prologue
    .line 455
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccelVar:F

    return v0
.end method

.method public getSource()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->source:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 482
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speed:F

    return v0
.end method

.method public getSpeedVar()F
    .locals 2

    .prologue
    .line 492
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speedVar:F

    return v0
.end method

.method public getStartColor()Lorg/cocos2d/types/ccColor4F;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    return-object v0
.end method

.method public getStartColorVar()Lorg/cocos2d/types/ccColor4F;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    return-object v0
.end method

.method public getTangentialAccel()F
    .locals 2

    .prologue
    .line 425
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccel:F

    return v0
.end method

.method public getTangentialAccelVar()F
    .locals 2

    .prologue
    .line 435
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccelVar:F

    return v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public getTotalParticles()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    return v0
.end method

.method public gravity()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 472
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->gravity:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postStep()V
    .locals 0

    .prologue
    .line 1181
    return-void
.end method

.method public resetSystem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 836
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->active:Z

    .line 837
    iput v3, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->elapsed:F

    .line 838
    const/4 v1, 0x0

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    :goto_0
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    if-lt v1, v2, :cond_0

    .line 842
    return-void

    .line 839
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    iget v2, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    aget-object v0, v1, v2

    .line 840
    .local v0, "p":Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    iput v3, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    .line 838
    iget v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    goto :goto_0
.end method

.method public rotatePerSecond()F
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecond:F

    return v0
.end method

.method public rotatePerSecondVar()F
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecondVar:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 264
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->angle:F

    .line 265
    return-void
.end method

.method public setAngleVar(F)V
    .locals 0
    .param p1, "av"    # F

    .prologue
    .line 270
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->angleVar:F

    .line 271
    return-void
.end method

.method public setAutoRemoveOnFinish(Z)V
    .locals 0
    .param p1, "ar"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->autoRemoveOnFinish_:Z

    .line 412
    return-void
.end method

.method public setBlendAdditive(Z)V
    .locals 4
    .param p1, "additive"    # Z

    .prologue
    const/16 v3, 0x303

    const/16 v2, 0x302

    const/4 v1, 0x1

    .line 1184
    if-eqz p1, :cond_0

    .line 1185
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v2, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 1186
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 1196
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1189
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v2, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 1190
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v3, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    goto :goto_0

    .line 1192
    :cond_1
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 1193
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v3, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    goto :goto_0
.end method

.method public setCenterOfGravity(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "p"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 244
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->centerOfGravity:Lorg/cocos2d/types/CGPoint;

    .line 245
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 580
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->duration:F

    .line 581
    return-void
.end method

.method public setEmissionRate(F)V
    .locals 0
    .param p1, "er"    # F

    .prologue
    .line 364
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emissionRate:F

    .line 365
    return-void
.end method

.method public setEmitterMode(I)V
    .locals 2
    .param p1, "em"    # I

    .prologue
    const/4 v1, 0x0

    .line 375
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-ne v0, p1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    .line 378
    if-nez p1, :cond_2

    .line 379
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    invoke-direct {v0, p0}, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;-><init>(Lorg/cocos2d/particlesystem/CCParticleSystem;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    .line 380
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    if-eqz v0, :cond_0

    .line 381
    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    goto :goto_0

    .line 383
    :cond_2
    new-instance v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    invoke-direct {v0, p0}, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;-><init>(Lorg/cocos2d/particlesystem/CCParticleSystem;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    .line 384
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    if-eqz v0, :cond_0

    .line 385
    iput-object v1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    goto :goto_0
.end method

.method public setEndColor(Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p1, "ec"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 325
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColor:Lorg/cocos2d/types/ccColor4F;

    .line 326
    return-void
.end method

.method public setEndColorVar(Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p1, "ecv"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 331
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 332
    return-void
.end method

.method public setEndRadius(F)V
    .locals 2
    .param p1, "endRadius"    # F

    .prologue
    .line 517
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadius:F

    .line 519
    return-void
.end method

.method public setEndRadiusVar(F)V
    .locals 2
    .param p1, "endRadiusVar"    # F

    .prologue
    .line 527
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->endRadiusVar:F

    .line 529
    return-void
.end method

.method public setEndSize(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 208
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSize:F

    .line 209
    return-void
.end method

.method public setEndSizeVar(F)V
    .locals 0
    .param p1, "esv"    # F

    .prologue
    .line 214
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSizeVar:F

    .line 215
    return-void
.end method

.method public setEndSpin(F)V
    .locals 0
    .param p1, "es"    # F

    .prologue
    .line 232
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSpin:F

    .line 233
    return-void
.end method

.method public setEndSpinVar(F)V
    .locals 0
    .param p1, "esv"    # F

    .prologue
    .line 238
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->endSpinVar:F

    .line 239
    return-void
.end method

.method public setGravity(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "g"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 460
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget-object v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->gravity:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, p1}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 462
    return-void
.end method

.method public setLife(F)V
    .locals 0
    .param p1, "life"    # F

    .prologue
    .line 609
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->life:F

    .line 610
    return-void
.end method

.method public setLifeVar(F)V
    .locals 0
    .param p1, "lv"    # F

    .prologue
    .line 301
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->lifeVar:F

    .line 302
    return-void
.end method

.method public setPosVar(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "pv"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 258
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->posVar:Lorg/cocos2d/types/CGPoint;

    .line 259
    return-void
.end method

.method public setPositionType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 658
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    .line 659
    return-void
.end method

.method public setRadialAccel(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 440
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccel:F

    .line 442
    return-void
.end method

.method public setRadialAccelVar(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 450
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->radialAccelVar:F

    .line 452
    return-void
.end method

.method public setRotatePerSecond(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 552
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecond:F

    .line 553
    return-void
.end method

.method public setRotatePerSecondVar(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 562
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->rotatePerSecondVar:F

    .line 563
    return-void
.end method

.method public setSource(Lorg/cocos2d/types/CGPoint;)V
    .locals 0
    .param p1, "source"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 591
    iput-object p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->source:Lorg/cocos2d/types/CGPoint;

    .line 592
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 477
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speed:F

    .line 479
    return-void
.end method

.method public setSpeedVar(F)V
    .locals 2
    .param p1, "speedVar"    # F

    .prologue
    .line 487
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->speedVar:F

    .line 489
    return-void
.end method

.method public setStartColor(Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p1, "sc"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 307
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColor:Lorg/cocos2d/types/ccColor4F;

    .line 308
    return-void
.end method

.method public setStartColorVar(Lorg/cocos2d/types/ccColor4F;)V
    .locals 1
    .param p1, "scv"    # Lorg/cocos2d/types/ccColor4F;

    .prologue
    .line 316
    new-instance v0, Lorg/cocos2d/types/ccColor4F;

    invoke-direct {v0, p1}, Lorg/cocos2d/types/ccColor4F;-><init>(Lorg/cocos2d/types/ccColor4F;)V

    iput-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startColorVar:Lorg/cocos2d/types/ccColor4F;

    .line 317
    return-void
.end method

.method public setStartRadius(F)V
    .locals 2
    .param p1, "startRadius"    # F

    .prologue
    .line 497
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadius:F

    .line 499
    return-void
.end method

.method public setStartRadiusVar(F)V
    .locals 2
    .param p1, "startRadiusVar"    # F

    .prologue
    .line 507
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadiusVar:F

    .line 509
    return-void
.end method

.method public setStartSize(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 196
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSize:F

    .line 197
    return-void
.end method

.method public setStartSizeVar(F)V
    .locals 0
    .param p1, "ssv"    # F

    .prologue
    .line 202
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSizeVar:F

    .line 203
    return-void
.end method

.method public setStartSpin(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 220
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSpin:F

    .line 221
    return-void
.end method

.method public setStartSpinVar(F)V
    .locals 0
    .param p1, "ssv"    # F

    .prologue
    .line 226
    iput p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->startSpinVar:F

    .line 227
    return-void
.end method

.method public setTangentialAccel(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 420
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccel:F

    .line 422
    return-void
.end method

.method public setTangentialAccelVar(F)V
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 430
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Gravity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iput p1, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->tangentialAccelVar:F

    .line 432
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/16 v2, 0x303

    .line 673
    iput-object p1, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 676
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->texture:Lorg/cocos2d/opengl/CCTexture2D;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v0, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iget v0, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    if-ne v0, v2, :cond_0

    .line 679
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/types/ccBlendFunc;->src:I

    .line 680
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->blendFunc:Lorg/cocos2d/types/ccBlendFunc;

    iput v2, v0, Lorg/cocos2d/types/ccBlendFunc;->dst:I

    .line 682
    :cond_0
    return-void
.end method

.method public startRadius()F
    .locals 2

    .prologue
    .line 502
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadius:F

    return v0
.end method

.method public startRadiusVar()F
    .locals 2

    .prologue
    .line 512
    sget-boolean v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Particle Mode should be Radius"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;

    iget v0, v0, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeB;->startRadiusVar:F

    return v0
.end method

.method public stopSystem()V
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->active:Z

    .line 830
    iget v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->duration:F

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->elapsed:F

    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    .line 832
    return-void
.end method

.method public update(F)V
    .locals 16
    .param p1, "dt"    # F

    .prologue
    .line 1041
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->active:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emissionRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 1042
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emissionRate:F

    div-float v8, v12, v13

    .line 1043
    .local v8, "rate":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    add-float v12, v12, p1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    .line 1044
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->totalParticles:I

    if-ge v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    cmpl-float v12, v12, v8

    if-gtz v12, :cond_3

    .line 1049
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->elapsed:F

    add-float v12, v12, p1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->elapsed:F

    .line 1050
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->duration:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->duration:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->elapsed:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->stopSystem()V

    .line 1054
    .end local v8    # "rate":F
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    .line 1056
    invoke-static {}, Lorg/cocos2d/types/util/PoolHolder;->getInstance()Lorg/cocos2d/types/util/PoolHolder;

    move-result-object v12

    invoke-virtual {v12}, Lorg/cocos2d/types/util/PoolHolder;->getCGPointPool()Lorg/cocos2d/utils/pool/OneClassPool;

    move-result-object v6

    .line 1057
    .local v6, "pointPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    invoke-virtual {v6}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/types/CGPoint;

    .line 1058
    .local v1, "currentPosition":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v6}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cocos2d/types/CGPoint;

    .line 1059
    .local v10, "tmp":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v6}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2d/types/CGPoint;

    .line 1060
    .local v7, "radial":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {v6}, Lorg/cocos2d/utils/pool/OneClassPool;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/cocos2d/types/CGPoint;

    .line 1062
    .local v9, "tangential":Lorg/cocos2d/types/CGPoint;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    if-nez v12, :cond_4

    .line 1063
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v1}, Lorg/cocos2d/particlesystem/CCParticleSystem;->convertToWorldSpace(FFLorg/cocos2d/types/CGPoint;)V

    .line 1068
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    if-lt v12, v13, :cond_5

    .line 1165
    invoke-virtual {v6, v1}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1166
    invoke-virtual {v6, v10}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1167
    invoke-virtual {v6, v7}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1168
    invoke-virtual {v6, v9}, Lorg/cocos2d/utils/pool/OneClassPool;->free(Ljava/lang/Object;)V

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->postStep()V

    .line 1171
    :goto_2
    return-void

    .line 1045
    .end local v1    # "currentPosition":Lorg/cocos2d/types/CGPoint;
    .end local v6    # "pointPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    .end local v7    # "radial":Lorg/cocos2d/types/CGPoint;
    .end local v9    # "tangential":Lorg/cocos2d/types/CGPoint;
    .end local v10    # "tmp":Lorg/cocos2d/types/CGPoint;
    .restart local v8    # "rate":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->addParticle()Z

    .line 1046
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    sub-float/2addr v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitCounter:F

    goto/16 :goto_0

    .line 1064
    .end local v8    # "rate":F
    .restart local v1    # "currentPosition":Lorg/cocos2d/types/CGPoint;
    .restart local v6    # "pointPool":Lorg/cocos2d/utils/pool/OneClassPool;, "Lorg/cocos2d/utils/pool/OneClassPool<Lorg/cocos2d/types/CGPoint;>;"
    .restart local v7    # "radial":Lorg/cocos2d/types/CGPoint;
    .restart local v9    # "tangential":Lorg/cocos2d/types/CGPoint;
    .restart local v10    # "tmp":Lorg/cocos2d/types/CGPoint;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1065
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->position_:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v1, v12}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_1

    .line 1069
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    aget-object v5, v12, v13

    .line 1071
    .local v5, "p":Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    iget v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    sub-float v12, v12, p1

    iput v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    .line 1072
    iget v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->timeToLive:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 1074
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->emitterMode:I

    if-nez v12, :cond_9

    .line 1077
    invoke-static {v7}, Lorg/cocos2d/types/util/CGPointUtil;->zero(Lorg/cocos2d/types/CGPoint;)V

    .line 1079
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    iget v12, v12, Lorg/cocos2d/types/CGPoint;->x:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    iget v12, v12, Lorg/cocos2d/types/CGPoint;->y:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7

    .line 1080
    :cond_6
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    invoke-static {v12, v7}, Lorg/cocos2d/types/util/CGPointUtil;->normalize(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1081
    :cond_7
    invoke-virtual {v9, v7}, Lorg/cocos2d/types/CGPoint;->set(Lorg/cocos2d/types/CGPoint;)V

    .line 1082
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    iget v12, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->radialAccel:F

    invoke-static {v7, v12}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;F)V

    .line 1085
    iget v4, v9, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1086
    .local v4, "newy":F
    iget v12, v9, Lorg/cocos2d/types/CGPoint;->y:F

    neg-float v12, v12

    iput v12, v9, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1087
    iput v4, v9, Lorg/cocos2d/types/CGPoint;->y:F

    .line 1088
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    iget v12, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->tangentialAccel:F

    invoke-static {v9, v12}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;F)V

    .line 1091
    invoke-static {v7, v9, v10}, Lorg/cocos2d/types/util/CGPointUtil;->add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;

    iget-object v12, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$ModeA;->gravity:Lorg/cocos2d/types/CGPoint;

    invoke-static {v10, v12}, Lorg/cocos2d/types/util/CGPointUtil;->add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1093
    move/from16 v0, p1

    invoke-static {v10, v0}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;F)V

    .line 1094
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    iget-object v12, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->dir:Lorg/cocos2d/types/CGPoint;

    invoke-static {v12, v10}, Lorg/cocos2d/types/util/CGPointUtil;->add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1095
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeA:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;

    iget-object v12, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeA;->dir:Lorg/cocos2d/types/CGPoint;

    move/from16 v0, p1

    invoke-static {v12, v0, v10}, Lorg/cocos2d/types/util/CGPointUtil;->mult(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/CGPoint;)V

    .line 1096
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    invoke-static {v12, v10}, Lorg/cocos2d/types/util/CGPointUtil;->add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1109
    .end local v4    # "newy":F
    :goto_3
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v13, v12, Lorg/cocos2d/types/ccColor4F;->r:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    iget v14, v14, Lorg/cocos2d/types/ccColor4F;->r:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/ccColor4F;->r:F

    .line 1110
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v13, v12, Lorg/cocos2d/types/ccColor4F;->g:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    iget v14, v14, Lorg/cocos2d/types/ccColor4F;->g:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/ccColor4F;->g:F

    .line 1111
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v13, v12, Lorg/cocos2d/types/ccColor4F;->b:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    iget v14, v14, Lorg/cocos2d/types/ccColor4F;->b:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/ccColor4F;->b:F

    .line 1112
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->color:Lorg/cocos2d/types/ccColor4F;

    iget v13, v12, Lorg/cocos2d/types/ccColor4F;->a:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaColor:Lorg/cocos2d/types/ccColor4F;

    iget v14, v14, Lorg/cocos2d/types/ccColor4F;->a:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/ccColor4F;->a:F

    .line 1115
    iget v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    iget v13, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaSize:F

    mul-float v13, v13, p1

    add-float/2addr v12, v13

    iput v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    .line 1116
    const/4 v12, 0x0

    iget v13, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iput v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->size:F

    .line 1119
    iget v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->rotation:F

    iget v13, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->deltaRotation:F

    mul-float v13, v13, p1

    add-float/2addr v12, v13

    iput v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->rotation:F

    .line 1122
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->positionType_:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 1123
    :cond_8
    move-object v2, v10

    .line 1124
    .local v2, "diff":Lorg/cocos2d/types/CGPoint;
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->startPos:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1, v12, v2}, Lorg/cocos2d/types/util/CGPointUtil;->sub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1125
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    invoke-static {v12, v2, v2}, Lorg/cocos2d/types/util/CGPointUtil;->sub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 1126
    move-object v3, v2

    .line 1131
    .end local v2    # "diff":Lorg/cocos2d/types/CGPoint;
    .local v3, "newPos":Lorg/cocos2d/types/CGPoint;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lorg/cocos2d/particlesystem/CCParticleSystem;->updateQuad(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;Lorg/cocos2d/types/CGPoint;)V

    .line 1146
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    goto/16 :goto_1

    .line 1101
    .end local v3    # "newPos":Lorg/cocos2d/types/CGPoint;
    :cond_9
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v13, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->angle:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v14, v14, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->degreesPerSecond:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->angle:F

    .line 1102
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v13, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->radius:F

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v14, v14, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->deltaRadius:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->radius:F

    .line 1104
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    iget-object v13, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v13, v13, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->angle:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    neg-float v13, v13

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v14, v14, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->radius:F

    mul-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/CGPoint;->x:F

    .line 1105
    iget-object v12, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    iget-object v13, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v13, v13, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->angle:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    neg-float v13, v13

    iget-object v14, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->modeB:Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;

    iget v14, v14, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle$ParticleModeB;->radius:F

    mul-float/2addr v13, v14

    iput v13, v12, Lorg/cocos2d/types/CGPoint;->y:F

    goto/16 :goto_3

    .line 1128
    :cond_a
    iget-object v3, v5, Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;->pos:Lorg/cocos2d/types/CGPoint;

    .restart local v3    # "newPos":Lorg/cocos2d/types/CGPoint;
    goto :goto_4

    .line 1150
    .end local v3    # "newPos":Lorg/cocos2d/types/CGPoint;
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    add-int/lit8 v13, v13, -0x1

    if-eq v12, v13, :cond_c

    .line 1151
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    aget-object v11, v12, v13

    .line 1152
    .local v11, "tmpPart":Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleIdx:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particles:[Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    add-int/lit8 v13, v13, -0x1

    aput-object v11, v12, v13

    .line 1155
    .end local v11    # "tmpPart":Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    .line 1157
    move-object/from16 v0, p0

    iget v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->particleCount:I

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/cocos2d/particlesystem/CCParticleSystem;->autoRemoveOnFinish_:Z

    if-eqz v12, :cond_2

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->unscheduleUpdate()V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/particlesystem/CCParticleSystem;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lorg/cocos2d/nodes/CCNode;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    goto/16 :goto_2
.end method

.method public updateQuad(Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;Lorg/cocos2d/types/CGPoint;)V
    .locals 0
    .param p1, "particle"    # Lorg/cocos2d/particlesystem/CCParticleSystem$CCParticle;
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 1177
    return-void
.end method
