.class public Lcom/sns/game/database/bean/UserLevelBean;
.super Ljava/lang/Object;
.source "UserLevelBean.java"


# instance fields
.field private coefficient:F

.field private level:I

.field private max_exp:I

.field private reward_gold:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoefficient()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->coefficient:F

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->level:I

    return v0
.end method

.method public getMax_exp()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->max_exp:I

    return v0
.end method

.method public getReward_gold()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->reward_gold:I

    return v0
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->level:I

    .line 49
    iput v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->max_exp:I

    .line 50
    iput v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->reward_gold:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sns/game/database/bean/UserLevelBean;->coefficient:F

    .line 52
    return-void
.end method

.method public setCoefficient(F)V
    .locals 0
    .param p1, "coefficient"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/sns/game/database/bean/UserLevelBean;->coefficient:F

    .line 45
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/sns/game/database/bean/UserLevelBean;->level:I

    .line 27
    return-void
.end method

.method public setMax_exp(I)V
    .locals 0
    .param p1, "max_exp"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/sns/game/database/bean/UserLevelBean;->max_exp:I

    .line 33
    return-void
.end method

.method public setReward_gold(I)V
    .locals 0
    .param p1, "reward_gold"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sns/game/database/bean/UserLevelBean;->reward_gold:I

    .line 39
    return-void
.end method
