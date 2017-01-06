.class public Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "WheelJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 17
    return-void
.end method

.method private isMotorEnabled()Z
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetMaxMotorTorque(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetMotorTorque(JF)F
.end method

.method private native jniGetSpringDampingRatio(J)F
.end method

.method private native jniGetSpringFrequencyHz(J)F
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetMaxMotorTorque(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method

.method private native jniSetSpringDampingRatio(JF)V
.end method

.method private native jniSetSpringFrequencyHz(JF)V
.end method


# virtual methods
.method public enableMotor(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniEnableMotor(JZ)V

    .line 52
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getMaxMotorTorque()F
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMaxMotorTorque(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getMotorTorque(F)F
    .locals 2
    .param p1, "invDt"    # F

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetMotorTorque(JF)F

    move-result v0

    return v0
.end method

.method public getSpringDampingRatio()F
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetSpringDampingRatio(J)F

    move-result v0

    return v0
.end method

.method public getSpringFrequencyHz()F
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniGetSpringFrequencyHz(J)F

    move-result v0

    return v0
.end method

.method public setMaxMotorTorque(F)V
    .locals 2
    .param p1, "torque"    # F

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetMaxMotorTorque(JF)V

    .line 82
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetMotorSpeed(JF)V

    .line 62
    return-void
.end method

.method public setSpringDampingRatio(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetSpringDampingRatio(JF)V

    .line 130
    return-void
.end method

.method public setSpringFrequencyHz(F)V
    .locals 2
    .param p1, "hz"    # F

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;->jniSetSpringFrequencyHz(JF)V

    .line 111
    return-void
.end method
