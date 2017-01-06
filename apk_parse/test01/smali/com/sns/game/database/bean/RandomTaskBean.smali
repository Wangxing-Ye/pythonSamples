.class public Lcom/sns/game/database/bean/RandomTaskBean;
.super Ljava/lang/Object;
.source "RandomTaskBean.java"


# instance fields
.field private desc_icon:Ljava/lang/String;

.field private difficulty:I

.field private icon_head:Ljava/lang/String;

.field private kill_count:I

.field private recordNo_key:I

.field private reward:I

.field private task_desc:Ljava/lang/String;

.field private task_time:I

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
.method public getDesc_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->desc_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getDifficulty()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->difficulty:I

    return v0
.end method

.method public getIcon_head()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->icon_head:Ljava/lang/String;

    return-object v0
.end method

.method public getKill_count()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->kill_count:I

    return v0
.end method

.method public getRecordNo_key()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->recordNo_key:I

    return v0
.end method

.method public getReward()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->reward:I

    return v0
.end method

.method public getTask_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getTask_time()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_time:I

    return v0
.end method

.method public getZombie_id()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->zombie_id:I

    return v0
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->recordNo_key:I

    .line 99
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->difficulty:I

    .line 100
    iput-object v1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_desc:Ljava/lang/String;

    .line 101
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->zombie_id:I

    .line 102
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->kill_count:I

    .line 103
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_time:I

    .line 104
    iput v0, p0, Lcom/sns/game/database/bean/RandomTaskBean;->reward:I

    .line 105
    iput-object v1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->icon_head:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->desc_icon:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setDesc_icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_icon"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->desc_icon:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDifficulty(I)V
    .locals 0
    .param p1, "difficulty"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->difficulty:I

    .line 53
    return-void
.end method

.method public setIcon_head(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon_head"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->icon_head:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setKill_count(I)V
    .locals 0
    .param p1, "kill_count"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->kill_count:I

    .line 71
    return-void
.end method

.method public setRecordNo_key(I)V
    .locals 0
    .param p1, "recordNo_key"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->recordNo_key:I

    .line 47
    return-void
.end method

.method public setReward(I)V
    .locals 0
    .param p1, "reward"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->reward:I

    .line 83
    return-void
.end method

.method public setTask_desc(Ljava/lang/String;)V
    .locals 0
    .param p1, "task_desc"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_desc:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTask_time(I)V
    .locals 0
    .param p1, "task_time"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->task_time:I

    .line 77
    return-void
.end method

.method public setZombie_id(I)V
    .locals 0
    .param p1, "zombie_id"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sns/game/database/bean/RandomTaskBean;->zombie_id:I

    .line 65
    return-void
.end method
