.class public Lcom/sns/game/database/dao/UserDataDao;
.super Ljava/lang/Object;
.source "UserDataDao.java"


# static fields
.field private static dao:Lcom/sns/game/database/dao/UserDataDao;

.field public static userdata:Lcom/sns/game/database/bean/UserData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private debugUserData()Lcom/sns/game/database/bean/UserData;
    .locals 5

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "userData":Lcom/sns/game/database/bean/UserData;
    :try_start_0
    new-instance v2, Lcom/sns/game/database/bean/UserData;

    invoke-direct {v2}, Lcom/sns/game/database/bean/UserData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    .local v2, "userData":Lcom/sns/game/database/bean/UserData;
    const v3, 0x5f5e100

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGold(I)V

    .line 241
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setHold_weapons(Ljava/util/List;)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setHold_items(Ljava/util/List;)V

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setFinish_achievements_data(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGet_total_gold(I)V

    .line 245
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setCost_total_gold(I)V

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setKill_total_zombie(I)V

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGet_total_card(I)V

    .line 248
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setLogin_time(Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setExit_time(Ljava/lang/String;)V

    .line 250
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/database/bean/UserData;->setCost_game_time(J)V

    .line 251
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_wdss(I)V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_jgp(I)V

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xrzc(I)V

    .line 254
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_dmg(I)V

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xgts(I)V

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_cgp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 260
    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    goto :goto_1
.end method

.method private firstLoadUserData()Lcom/sns/game/database/bean/UserData;
    .locals 5

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "userData":Lcom/sns/game/database/bean/UserData;
    :try_start_0
    new-instance v2, Lcom/sns/game/database/bean/UserData;

    invoke-direct {v2}, Lcom/sns/game/database/bean/UserData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    .local v2, "userData":Lcom/sns/game/database/bean/UserData;
    const/16 v3, 0x1f4

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGold(I)V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setHold_weapons(Ljava/util/List;)V

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setHold_items(Ljava/util/List;)V

    .line 275
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setFinish_achievements_data(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGet_total_gold(I)V

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setCost_total_gold(I)V

    .line 278
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setKill_total_zombie(I)V

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setGet_total_card(I)V

    .line 280
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setLogin_time(Ljava/lang/String;)V

    .line 281
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setExit_time(Ljava/lang/String;)V

    .line 282
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/database/bean/UserData;->setCost_game_time(J)V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_wdss(I)V

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_jgp(I)V

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xrzc(I)V

    .line 286
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_dmg(I)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xgts(I)V

    .line 288
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_cgp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 292
    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    :goto_0
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v1    # "userData":Lcom/sns/game/database/bean/UserData;
    goto :goto_1
.end method

.method public static getUserData()Lcom/sns/game/database/bean/UserData;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    return-object v0
.end method

.method public static loadOwnUserData()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/dao/UserDataDao;->ownUserData()Lcom/sns/game/database/bean/UserData;

    move-result-object v0

    sput-object v0, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    .line 42
    :cond_0
    return-void
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/UserDataDao;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->dao:Lcom/sns/game/database/dao/UserDataDao;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sns/game/database/dao/UserDataDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/UserDataDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/UserDataDao;->dao:Lcom/sns/game/database/dao/UserDataDao;

    .line 35
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/UserDataDao;->dao:Lcom/sns/game/database/dao/UserDataDao;

    return-object v0
.end method


# virtual methods
.method public addUserData()Z
    .locals 5

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v2

    .line 105
    const-string v3, "userdata"

    invoke-direct {p0}, Lcom/sns/game/database/dao/UserDataDao;->firstLoadUserData()Lcom/sns/game/database/bean/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserData;->toSqlValues()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/database/DBTool;->asINSERTSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doInsert(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containUserData()Z
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "contain_":Z
    const/4 v1, 0x0

    .line 56
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 57
    const-string v4, "SELECT * FROM userdata;"

    .line 56
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 63
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move v3, v0

    .line 65
    :goto_0
    return v3

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 61
    const/4 v3, 0x0

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 63
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 64
    throw v3
.end method

.method public createUserData(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserData;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "userData":Lcom/sns/game/database/bean/UserData;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 304
    .local v1, "tool":Lcom/sns/game/database/DBTool;
    :try_start_0
    new-instance v3, Lcom/sns/game/database/bean/UserData;

    invoke-direct {v3}, Lcom/sns/game/database/bean/UserData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .local v3, "userData":Lcom/sns/game/database/bean/UserData;
    :try_start_1
    const-string v4, "gold"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setGold(I)V

    .line 306
    const-string v4, "hold_weapons"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setHold_weapons_data(Ljava/lang/String;)V

    .line 307
    const-string v4, "hold_items"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setHold_items_data(Ljava/lang/String;)V

    .line 308
    const-string v4, "finish_achievements"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setFinish_achievements_data(Ljava/lang/String;)V

    .line 309
    const-string v4, "get_total_gold"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setGet_total_gold(I)V

    .line 310
    const-string v4, "cost_total_gold"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setCost_total_gold(I)V

    .line 311
    const-string v4, "kill_total_zombie"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setKill_total_zombie(I)V

    .line 312
    const-string v4, "get_total_card"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setGet_total_card(I)V

    .line 313
    const-string v4, "login_time"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setLogin_time(Ljava/lang/String;)V

    .line 314
    const-string v4, "exit_time"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setExit_time(Ljava/lang/String;)V

    .line 315
    const-string v4, "cost_game_time"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sns/game/database/bean/UserData;->setCost_game_time(J)V

    .line 316
    const-string v4, "use_total_weapon_wdss"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_wdss(I)V

    .line 317
    const-string v4, "use_total_weapon_jgp"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_jgp(I)V

    .line 318
    const-string v4, "use_total_weapon_xrzc"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xrzc(I)V

    .line 319
    const-string v4, "use_total_weapon_dmg"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_dmg(I)V

    .line 320
    const-string v4, "use_total_weapon_xgts"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_xgts(I)V

    .line 321
    const-string v4, "use_total_weapon_cgp"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserData;->setUse_total_weapon_cgp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 326
    .end local v3    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    :goto_0
    return-object v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    .line 324
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v3    # "userData":Lcom/sns/game/database/bean/UserData;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "userData":Lcom/sns/game/database/bean/UserData;
    .restart local v2    # "userData":Lcom/sns/game/database/bean/UserData;
    goto :goto_1
.end method

.method public findUserData()Lcom/sns/game/database/bean/UserData;
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 76
    .local v2, "userData":Lcom/sns/game/database/bean/UserData;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 77
    const-string v4, "SELECT * FROM userdata;"

    .line 76
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/UserDataDao;->createUserData(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserData;

    move-result-object v2

    .line 81
    :cond_0
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    if-nez v3, :cond_1

    .line 82
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserData;->modifyGold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 89
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 87
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 88
    throw v3
.end method

.method public ownUserData()Lcom/sns/game/database/bean/UserData;
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "userData":Lcom/sns/game/database/bean/UserData;
    invoke-virtual {p0}, Lcom/sns/game/database/dao/UserDataDao;->containUserData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insert data to [userdata] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/sns/game/database/dao/UserDataDao;->addUserData()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/sns/game/database/dao/UserDataDao;->findUserData()Lcom/sns/game/database/bean/UserData;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/database/dao/UserDataDao;->findUserData()Lcom/sns/game/database/bean/UserData;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userdata.login_time] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/UserDataDao;->updateUserLoginTime(Lcom/sns/game/database/bean/UserData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAllUserData(Lcom/sns/game/database/bean/UserData;)Z
    .locals 7
    .param p1, "userData"    # Lcom/sns/game/database/bean/UserData;

    .prologue
    .line 185
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sns/game/database/bean/UserData;->setExit_time(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getTotalCostGameTime()J

    move-result-wide v1

    .line 187
    .local v1, "nowCostGameTime":J
    invoke-virtual {p1, v1, v2}, Lcom/sns/game/database/bean/UserData;->setCost_game_time(J)V

    .line 189
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPDATE userdata SET gold = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string v5, "hold_weapons = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getHold_weapons_data()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string v5, "hold_items = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getHold_items_data()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 194
    const-string v5, "finish_achievements = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getFinish_achievements_data()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    const-string v5, "get_total_gold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getGet_total_gold()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    const-string v5, "cost_total_gold = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getCost_total_gold()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    const-string v5, "kill_total_zombie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getKill_total_zombie()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    const-string v5, "get_total_card = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getGet_total_card()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    const-string v5, "login_time = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getLogin_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string v5, "exit_time = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getExit_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    const-string v5, "cost_game_time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 202
    const-string v5, "use_total_weapon_wdss = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_wdss()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    const-string v5, "use_total_weapon_jgp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_jgp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    const-string v5, "use_total_weapon_xrzc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xrzc()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 205
    const-string v5, "use_total_weapon_dmg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_dmg()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    const-string v5, "use_total_weapon_xgts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_xgts()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 207
    const-string v5, "use_total_weapon_cgp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getUse_total_weapon_cgp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 211
    .end local v1    # "nowCostGameTime":J
    :goto_0
    return v3

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 211
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateUserCostGameTime(Lcom/sns/game/database/bean/UserData;)Z
    .locals 7
    .param p1, "userData"    # Lcom/sns/game/database/bean/UserData;

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getTotalCostGameTime()J

    move-result-wide v1

    .line 168
    .local v1, "nowCostGameTime":J
    invoke-virtual {p1, v1, v2}, Lcom/sns/game/database/bean/UserData;->setCost_game_time(J)V

    .line 169
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPDATE userdata SET cost_game_time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getCost_game_time()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 173
    .end local v1    # "nowCostGameTime":J
    :goto_0
    return v3

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 173
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateUserExitTime(Lcom/sns/game/database/bean/UserData;)Z
    .locals 4
    .param p1, "userData"    # Lcom/sns/game/database/bean/UserData;

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sns/game/database/bean/UserData;->setExit_time(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE userdata SET exit_time = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getExit_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUserGold(Lcom/sns/game/database/bean/UserData;)Z
    .locals 4
    .param p1, "userData"    # Lcom/sns/game/database/bean/UserData;

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE userdata SET gold = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUserLoginTime(Lcom/sns/game/database/bean/UserData;)Z
    .locals 4
    .param p1, "userData"    # Lcom/sns/game/database/bean/UserData;

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sns/game/database/bean/UserData;->setLogin_time(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE userdata SET login_time = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserData;->getLogin_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method
