.class public Lcom/sns/game/database/bean/UserWeaponBean;
.super Ljava/lang/Object;
.source "UserWeaponBean.java"


# instance fields
.field private hold_count:I

.field private id_key:I

.field private now_use:I

.field private quote_id:I

.field private use_count:I

.field private weaponBean:Lcom/sns/game/database/bean/WeaponBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHold_count()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 49
    :try_start_0
    iget v2, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    iget-object v3, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v3

    div-int/2addr v2, v3

    .line 50
    iget v3, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    iget-object v4, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v4

    rem-int/2addr v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    add-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getId_key()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->id_key:I

    return v0
.end method

.method public getNow_use()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->now_use:I

    return v0
.end method

.method public getQuote_id()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->quote_id:I

    return v0
.end method

.method public getUse_count()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    return v0
.end method

.method public getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    return-object v0
.end method

.method public modifyHold_count()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 61
    return-void
.end method

.method public modifyUse_count(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 69
    iget v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    .line 70
    return-void
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->removeSelf()V

    .line 106
    :cond_0
    iput v1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->id_key:I

    .line 107
    iput v1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->quote_id:I

    .line 108
    iput v1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->hold_count:I

    .line 109
    iput v1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    .line 110
    iput v1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->now_use:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    .line 112
    return-void
.end method

.method public setHold_count(I)V
    .locals 0
    .param p1, "hold_count"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->hold_count:I

    .line 58
    return-void
.end method

.method public setId_key(I)V
    .locals 0
    .param p1, "id_key"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->id_key:I

    .line 40
    return-void
.end method

.method public setNow_use(I)V
    .locals 0
    .param p1, "now_use"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->now_use:I

    .line 76
    return-void
.end method

.method public setQuote_id(I)V
    .locals 0
    .param p1, "quote_id"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->quote_id:I

    .line 46
    return-void
.end method

.method public setUse_count(I)V
    .locals 0
    .param p1, "use_count"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->use_count:I

    .line 67
    return-void
.end method

.method public setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V
    .locals 0
    .param p1, "weaponBean"    # Lcom/sns/game/database/bean/WeaponBean;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sns/game/database/bean/UserWeaponBean;->weaponBean:Lcom/sns/game/database/bean/WeaponBean;

    .line 82
    return-void
.end method

.method public toSqlValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "sqlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "NULL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public toUpdateValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "sqlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
