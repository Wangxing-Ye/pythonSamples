.class public Lcom/sns/game/database/bean/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# instance fields
.field private cost_game_time:J

.field private cost_total_gold:I

.field private exit_time:Ljava/lang/String;

.field private finish_achievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private get_total_card:I

.field private get_total_gold:I

.field private gold:I

.field private hold_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hold_weapons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kill_total_zombie:I

.field private login_time:Ljava/lang/String;

.field private use_total_weapon_cgp:I

.field private use_total_weapon_dmg:I

.field private use_total_weapon_jgp:I

.field private use_total_weapon_wdss:I

.field private use_total_weapon_xgts:I

.field private use_total_weapon_xrzc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCost_game_time()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/sns/game/database/bean/UserData;->cost_game_time:J

    return-wide v0
.end method

.method public getCost_game_time_Atlas(Ljava/util/Date;)Lorg/cocos2d/nodes/CCLabel;
    .locals 4
    .param p1, "nowDate"    # Ljava/util/Date;

    .prologue
    .line 259
    const-string v1, " "

    const-string v2, ""

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v2, v3}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 260
    .local v0, "label":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {p0, p1}, Lcom/sns/game/database/bean/UserData;->getTotalCostGameTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/database/bean/UserData;->getTimeDifference(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabel;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 262
    return-object v0
.end method

.method public getCost_total_gold()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->cost_total_gold:I

    return v0
.end method

.method public getCost_total_gold_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 199
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 200
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 199
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 202
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_total_gold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 203
    return-object v0
.end method

.method public getCurrentCostGameTime()J
    .locals 7

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getLogin_time()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 308
    .local v2, "loginDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getExit_time()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 309
    .local v1, "exitDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 312
    .end local v1    # "exitDate":Ljava/util/Date;
    .end local v2    # "loginDate":Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 312
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getCurrentCostGameTime(Ljava/util/Date;)J
    .locals 6
    .param p1, "nowDate"    # Ljava/util/Date;

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getLogin_time()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sns/game/util/CCUtil;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 318
    .local v1, "loginDate":Ljava/util/Date;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 321
    .end local v1    # "loginDate":Ljava/util/Date;
    :goto_0
    return-wide v2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 321
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getExit_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->exit_time:Ljava/lang/String;

    return-object v0
.end method

.method public getFinish_achievements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    return-object v0
.end method

.method public getFinish_achievements_data()Ljava/lang/String;
    .locals 5

    .prologue
    .line 158
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    :cond_0
    const-string v2, ""

    .line 166
    :goto_0
    return-object v2

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "finishInfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getGet_total_card()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_card:I

    return v0
.end method

.method public getGet_total_card_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 232
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 231
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 234
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGet_total_card()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 235
    return-object v0
.end method

.method public getGet_total_gold()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_gold:I

    return v0
.end method

.method public getGet_total_gold_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 184
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 183
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 186
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGet_total_gold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 187
    return-object v0
.end method

.method public getGold()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    return v0
.end method

.method public getHold_items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    return-object v0
.end method

.method public getHold_items_data()Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    const-string v2, ""

    .line 138
    :goto_0
    return-object v2

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "itemInfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getHold_weapons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    return-object v0
.end method

.method public getHold_weapons_data()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    const-string v2, ""

    .line 110
    :goto_0
    return-object v2

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "weaponInfo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getKill_total_zombie()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->kill_total_zombie:I

    return v0
.end method

.method public getKill_total_zombie_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 215
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 216
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 215
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 218
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 219
    return-object v0
.end method

.method public getLogin_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->login_time:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyCost_game_time(J)J
    .locals 2
    .param p1, "byAddTime"    # J

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getTimeDifference(J)Ljava/lang/String;
    .locals 15
    .param p1, "costMsec"    # J

    .prologue
    .line 275
    const-wide/32 v9, 0x5265c00

    :try_start_0
    div-long v0, p1, v9

    .line 276
    .local v0, "day":J
    const-wide/32 v9, 0x36ee80

    div-long v9, p1, v9

    const-wide/16 v11, 0x18

    mul-long/2addr v11, v0

    sub-long v3, v9, v11

    .line 277
    .local v3, "hour":J
    const-wide/32 v9, 0xea60

    div-long v9, p1, v9

    const-wide/16 v11, 0x18

    mul-long/2addr v11, v0

    const-wide/16 v13, 0x3c

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v3

    sub-long v5, v9, v11

    .line 278
    .local v5, "min":J
    const-wide/16 v9, 0x3e8

    div-long v9, p1, v9

    const-wide/16 v11, 0x18

    mul-long/2addr v11, v0

    const-wide/16 v13, 0x3c

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x3c

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v3

    const-wide/16 v13, 0x3c

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v5

    sub-long v7, v9, v11

    .line 279
    .local v7, "sec":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-wide/16 v11, 0x0

    cmp-long v9, v0, v11

    if-lez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5929"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 281
    const-wide/16 v11, 0x0

    cmp-long v9, v3, v11

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5c0f\u65f6"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 282
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-lez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5206\u949f"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-lez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u79d2"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    .end local v0    # "day":J
    .end local v3    # "hour":J
    .end local v5    # "min":J
    .end local v7    # "sec":J
    :goto_4
    return-object v9

    .line 280
    .restart local v0    # "day":J
    .restart local v3    # "hour":J
    .restart local v5    # "min":J
    .restart local v7    # "sec":J
    :cond_0
    const-string v9, ""

    goto :goto_0

    .line 281
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 282
    :cond_2
    const-string v9, ""

    goto :goto_2

    .line 283
    :cond_3
    const-string v9, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 284
    .end local v0    # "day":J
    .end local v3    # "hour":J
    .end local v5    # "min":J
    .end local v7    # "sec":J
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 286
    const-string v9, ""

    goto :goto_4
.end method

.method public getTotalCostGameTime()J
    .locals 5

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCurrentCostGameTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    add-long/2addr v1, v3

    .line 294
    :goto_0
    return-wide v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 294
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getTotalCostGameTime(Ljava/util/Date;)J
    .locals 5
    .param p1, "nowDate"    # Ljava/util/Date;

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/sns/game/database/bean/UserData;->getCurrentCostGameTime(Ljava/util/Date;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    add-long/2addr v1, v3

    .line 302
    :goto_0
    return-wide v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 302
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getUse_total_weapon_cgp()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_cgp:I

    return v0
.end method

.method public getUse_total_weapon_cgp_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 406
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 407
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 406
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 409
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_cgp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 410
    return-object v0
.end method

.method public getUse_total_weapon_dmg()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_dmg:I

    return v0
.end method

.method public getUse_total_weapon_dmg_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 374
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 375
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 374
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 377
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_dmg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 378
    return-object v0
.end method

.method public getUse_total_weapon_jgp()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_jgp:I

    return v0
.end method

.method public getUse_total_weapon_jgp_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 342
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 343
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 342
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 345
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_jgp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 346
    return-object v0
.end method

.method public getUse_total_weapon_wdss()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_wdss:I

    return v0
.end method

.method public getUse_total_weapon_wdss_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 326
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 327
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 326
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 329
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_wdss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 330
    return-object v0
.end method

.method public getUse_total_weapon_xgts()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xgts:I

    return v0
.end method

.method public getUse_total_weapon_xgts_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 390
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 391
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 390
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 393
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xgts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 394
    return-object v0
.end method

.method public getUse_total_weapon_xrzc()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xrzc:I

    return v0
.end method

.method public getUse_total_weapon_xrzc_Atlas()Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 5

    .prologue
    .line 358
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 359
    const-string v2, "UI/New_Num_x_16x22.png"

    const/16 v3, 0x10

    const/16 v4, 0x16

    .line 358
    invoke-virtual {v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 361
    .local v0, "labelAtlas":Lorg/cocos2d/nodes/CCLabelAtlas;
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xrzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 362
    return-object v0
.end method

.method public getUserActionData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 446
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGet_total_gold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_total_gold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sns/game/database/bean/UserData;->getTotalCostGameTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sns/game/database/bean/UserData;->getTimeDifference(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    return-object v0
.end method

.method public modifyCost_total_gold(I)V
    .locals 1
    .param p1, "gold"    # I

    .prologue
    .line 212
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->cost_total_gold:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->cost_total_gold:I

    .line 213
    return-void
.end method

.method public modifyGet_total_card(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_card:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_card:I

    .line 245
    return-void
.end method

.method public modifyGet_total_gold(I)V
    .locals 1
    .param p1, "gold"    # I

    .prologue
    .line 196
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_gold:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->get_total_gold:I

    .line 197
    return-void
.end method

.method public modifyGold(I)V
    .locals 1
    .param p1, "gold"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    .line 94
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    if-gtz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    .line 97
    :cond_0
    return-void
.end method

.method public modifyKill_total_zombie(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 228
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->kill_total_zombie:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->kill_total_zombie:I

    .line 229
    return-void
.end method

.method public modifyUse_total_weapon_cgp(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 419
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_cgp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_cgp:I

    .line 420
    return-void
.end method

.method public modifyUse_total_weapon_dmg(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 387
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_dmg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_dmg:I

    .line 388
    return-void
.end method

.method public modifyUse_total_weapon_jgp(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 355
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_jgp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_jgp:I

    .line 356
    return-void
.end method

.method public modifyUse_total_weapon_wdss(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 339
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_wdss:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_wdss:I

    .line 340
    return-void
.end method

.method public modifyUse_total_weapon_xgts(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 403
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xgts:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xgts:I

    .line 404
    return-void
.end method

.method public modifyUse_total_weapon_xrzc(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 371
    iget v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xrzc:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xrzc:I

    .line 372
    return-void
.end method

.method public removeSelf()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    :cond_2
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    .line 462
    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    .line 463
    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    .line 464
    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    .line 465
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->get_total_gold:I

    .line 466
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->cost_total_gold:I

    .line 467
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->kill_total_zombie:I

    .line 468
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->get_total_card:I

    .line 469
    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->login_time:Ljava/lang/String;

    .line 470
    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->exit_time:Ljava/lang/String;

    .line 471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sns/game/database/bean/UserData;->cost_game_time:J

    .line 472
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_wdss:I

    .line 473
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_jgp:I

    .line 474
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xrzc:I

    .line 475
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_dmg:I

    .line 476
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xgts:I

    .line 477
    iput v2, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_cgp:I

    .line 478
    return-void
.end method

.method public setCost_game_time(J)V
    .locals 0
    .param p1, "cost_game_time"    # J

    .prologue
    .line 271
    iput-wide p1, p0, Lcom/sns/game/database/bean/UserData;->cost_game_time:J

    .line 272
    return-void
.end method

.method public setCost_total_gold(I)V
    .locals 0
    .param p1, "cost_total_gold"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->cost_total_gold:I

    .line 210
    return-void
.end method

.method public setExit_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "exit_time"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sns/game/database/bean/UserData;->exit_time:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setFinish_achievements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "finish_achievements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setFinish_achievements_data(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->finish_achievements:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGet_total_card(I)V
    .locals 0
    .param p1, "get_total_card"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->get_total_card:I

    .line 242
    return-void
.end method

.method public setGet_total_gold(I)V
    .locals 0
    .param p1, "get_total_gold"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->get_total_gold:I

    .line 194
    return-void
.end method

.method public setGold(I)V
    .locals 0
    .param p1, "gold"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->gold:I

    .line 91
    return-void
.end method

.method public setHold_items(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "hold_items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;

    .line 142
    return-void
.end method

.method public setHold_items_data(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->hold_items:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setHold_weapons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "hold_weapons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;

    .line 114
    return-void
.end method

.method public setHold_weapons_data(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/database/bean/UserData;->hold_weapons:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setKill_total_zombie(I)V
    .locals 0
    .param p1, "kill_total_zombie"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->kill_total_zombie:I

    .line 226
    return-void
.end method

.method public setLogin_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "login_time"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sns/game/database/bean/UserData;->login_time:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setUse_total_weapon_cgp(I)V
    .locals 0
    .param p1, "use_total_weapon_cgp"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_cgp:I

    .line 417
    return-void
.end method

.method public setUse_total_weapon_dmg(I)V
    .locals 0
    .param p1, "use_total_weapon_dmg"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_dmg:I

    .line 385
    return-void
.end method

.method public setUse_total_weapon_jgp(I)V
    .locals 0
    .param p1, "use_total_weapon_jgp"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_jgp:I

    .line 353
    return-void
.end method

.method public setUse_total_weapon_wdss(I)V
    .locals 0
    .param p1, "use_total_weapon_wdss"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_wdss:I

    .line 337
    return-void
.end method

.method public setUse_total_weapon_xgts(I)V
    .locals 0
    .param p1, "use_total_weapon_xgts"    # I

    .prologue
    .line 400
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xgts:I

    .line 401
    return-void
.end method

.method public setUse_total_weapon_xrzc(I)V
    .locals 0
    .param p1, "use_total_weapon_xrzc"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/sns/game/database/bean/UserData;->use_total_weapon_xrzc:I

    .line 369
    return-void
.end method

.method public toSqlValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "sqlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getHold_weapons_data()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getHold_items_data()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getFinish_achievements_data()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGet_total_gold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_total_gold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getGet_total_card()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getLogin_time()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getExit_time()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_wdss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_jgp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xrzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_dmg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xgts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p0}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_cgp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
