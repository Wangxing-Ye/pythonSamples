.class public Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "RopeJointDef.java"


# instance fields
.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public maxLength:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 16
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 22
    iput v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->maxLength:F

    .line 12
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 13
    return-void
.end method
