.class public Lcom/sns/game/database/bean/CaptureRateBean;
.super Ljava/lang/Object;
.source "CaptureRateBean.java"


# instance fields
.field private cluster:F

.field private expect:F

.field private recordNo_key:I

.field private weapon_id:I

.field private weight:F

.field private zombie_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCluster()F
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->cluster:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->cluster:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpect()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->expect:F

    return v0
.end method

.method public getRecordNo_key()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->recordNo_key:I

    return v0
.end method

.method public getWeapon_id()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weapon_id:I

    return v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weight:F

    return v0
.end method

.method public getZombie_id()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->zombie_id:I

    return v0
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    iput v1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->recordNo_key:I

    .line 69
    iput v1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weapon_id:I

    .line 70
    iput v1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->zombie_id:I

    .line 71
    iput v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->expect:F

    .line 72
    iput v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weight:F

    .line 73
    iput v0, p0, Lcom/sns/game/database/bean/CaptureRateBean;->cluster:F

    .line 74
    return-void
.end method

.method public setCluster(F)V
    .locals 0
    .param p1, "cluster"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->cluster:F

    .line 65
    return-void
.end method

.method public setExpect(F)V
    .locals 0
    .param p1, "expect"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->expect:F

    .line 53
    return-void
.end method

.method public setRecordNo_key(I)V
    .locals 0
    .param p1, "recordNo_key"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->recordNo_key:I

    .line 35
    return-void
.end method

.method public setWeapon_id(I)V
    .locals 0
    .param p1, "weapon_id"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weapon_id:I

    .line 41
    return-void
.end method

.method public setWeight(F)V
    .locals 0
    .param p1, "weight"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->weight:F

    .line 59
    return-void
.end method

.method public setZombie_id(I)V
    .locals 0
    .param p1, "zombie_id"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sns/game/database/bean/CaptureRateBean;->zombie_id:I

    .line 47
    return-void
.end method
