.class public Lcom/sns/game/database/bean/AchBean;
.super Ljava/lang/Object;
.source "AchBean.java"


# instance fields
.field private ach_desc:Ljava/lang/String;

.field private ach_icon:Ljava/lang/String;

.field private ach_title:Ljava/lang/String;

.field private condition:Ljava/lang/String;

.field private id_key:I

.field private name:Ljava/lang/String;

.field private point_count:I

.field private reward:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAch_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getAch_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getAch_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_title:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sns/game/database/bean/AchBean;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getId_key()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sns/game/database/bean/AchBean;->id_key:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sns/game/database/bean/AchBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint_count()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sns/game/database/bean/AchBean;->point_count:I

    return v0
.end method

.method public getReward()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sns/game/database/bean/AchBean;->reward:I

    return v0
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    iput v1, p0, Lcom/sns/game/database/bean/AchBean;->id_key:I

    .line 89
    iput-object v0, p0, Lcom/sns/game/database/bean/AchBean;->name:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/sns/game/database/bean/AchBean;->condition:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/sns/game/database/bean/AchBean;->point_count:I

    .line 92
    iput v1, p0, Lcom/sns/game/database/bean/AchBean;->reward:I

    .line 93
    iput-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_icon:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_desc:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/sns/game/database/bean/AchBean;->ach_title:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setAch_desc(Ljava/lang/String;)V
    .locals 0
    .param p1, "ach_desc"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sns/game/database/bean/AchBean;->ach_desc:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setAch_icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "ach_icon"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sns/game/database/bean/AchBean;->ach_icon:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setAch_title(Ljava/lang/String;)V
    .locals 0
    .param p1, "ach_title"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sns/game/database/bean/AchBean;->ach_title:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sns/game/database/bean/AchBean;->condition:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setId_key(I)V
    .locals 0
    .param p1, "id_key"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/sns/game/database/bean/AchBean;->id_key:I

    .line 43
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sns/game/database/bean/AchBean;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPoint_count(I)V
    .locals 0
    .param p1, "point_count"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sns/game/database/bean/AchBean;->point_count:I

    .line 61
    return-void
.end method

.method public setReward(I)V
    .locals 0
    .param p1, "reward"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sns/game/database/bean/AchBean;->reward:I

    .line 67
    return-void
.end method
