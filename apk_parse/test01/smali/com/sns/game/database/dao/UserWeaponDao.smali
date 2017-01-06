.class public Lcom/sns/game/database/dao/UserWeaponDao;
.super Ljava/lang/Object;
.source "UserWeaponDao.java"


# static fields
.field public static final SET_OF_WEAPON_IDS:[I

.field public static final WEAPON_NOTUSE:I = 0x0

.field public static final WEAPON_NOWUSE:I = 0x1

.field private static dao:Lcom/sns/game/database/dao/UserWeaponDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sns/game/database/dao/UserWeaponDao;->SET_OF_WEAPON_IDS:[I

    .line 13
    return-void

    .line 23
    nop

    :array_0
    .array-data 4
        0x2720
        0x2721
        0x2722
        0x2723
        0x2724
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private createUserWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 390
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 391
    .local v1, "tool":Lcom/sns/game/database/DBTool;
    const/4 v2, 0x0

    .line 393
    .local v2, "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_0
    new-instance v3, Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-direct {v3}, Lcom/sns/game/database/bean/UserWeaponBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v2    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    .local v3, "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_1
    const-string v4, "id_key"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setId_key(I)V

    .line 395
    const-string v4, "quote_id"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setQuote_id(I)V

    .line 396
    const-string v4, "hold_count"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 397
    const-string v4, "use_count"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 398
    const-string v4, "now_use"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setNow_use(I)V

    .line 399
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v4

    .line 400
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sns/game/database/dao/WeaponDao;->findWeapon(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v4

    .line 399
    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/UserWeaponBean;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 405
    .end local v3    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v2    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    :goto_0
    return-object v2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    .line 403
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v3    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v2    # "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    goto :goto_1
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sns/game/database/dao/UserWeaponDao;->dao:Lcom/sns/game/database/dao/UserWeaponDao;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sns/game/database/dao/UserWeaponDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/UserWeaponDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/UserWeaponDao;->dao:Lcom/sns/game/database/dao/UserWeaponDao;

    .line 40
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/UserWeaponDao;->dao:Lcom/sns/game/database/dao/UserWeaponDao;

    return-object v0
.end method


# virtual methods
.method public addUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z
    .locals 5
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 204
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v2

    .line 205
    const-string v3, "userweapons"

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->toSqlValues()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/database/DBTool;->asINSERTSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doInsert(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs addUserWeapons(II[I)Z
    .locals 15
    .param p1, "holdCount"    # I
    .param p2, "bulletCount"    # I
    .param p3, "weaponIds"    # [I

    .prologue
    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 155
    .local v1, "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    .end local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/sns/game/database/DBTool;->asSelectFields([I)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "fileds":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "select userweapons.* from userweapons where userweapons.quote_id in ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ");"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "containSql":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v4, "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 167
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_2

    .line 187
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sns/game/database/DBTool;->doBatch(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 193
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 191
    .end local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v5    # "containSql":Ljava/lang/String;
    .end local v9    # "fileds":Ljava/lang/String;
    .restart local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return v12

    .line 161
    .end local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v5    # "containSql":Ljava/lang/String;
    .restart local v9    # "fileds":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-direct {p0, v6}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v3

    .line 162
    .local v3, "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 189
    .end local v3    # "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v5    # "containSql":Ljava/lang/String;
    .end local v9    # "fileds":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v2

    .line 190
    .end local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {v7}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 191
    const/4 v12, 0x0

    goto :goto_2

    .line 167
    .end local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v5    # "containSql":Ljava/lang/String;
    .restart local v9    # "fileds":Ljava/lang/String;
    :cond_2
    :try_start_4
    aget v10, p3, v12

    .line 168
    .local v10, "id":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 169
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sns/game/database/bean/UserWeaponBean;

    .line 170
    .local v8, "existBean":Lcom/sns/game/database/bean/UserWeaponBean;
    const/4 v14, -0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_5

    .line 171
    invoke-virtual {v8}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v14

    mul-int v14, v14, p1

    invoke-virtual {v8, v14}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V

    .line 175
    :cond_3
    :goto_4
    invoke-virtual {p0, v8}, Lcom/sns/game/database/dao/UserWeaponDao;->asUpdateUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v8    # "existBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_4
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 172
    .restart local v8    # "existBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_5
    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    .line 173
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyUse_count(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 192
    .end local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v5    # "containSql":Ljava/lang/String;
    .end local v8    # "existBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .end local v9    # "fileds":Ljava/lang/String;
    .end local v10    # "id":I
    :catchall_0
    move-exception v12

    move-object v1, v2

    .line 193
    .end local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 194
    throw v12

    .line 177
    .end local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v5    # "containSql":Ljava/lang/String;
    .restart local v9    # "fileds":Ljava/lang/String;
    .restart local v10    # "id":I
    :cond_6
    const/4 v14, -0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    .line 178
    :try_start_5
    move/from16 v0, p1

    invoke-virtual {p0, v10, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(II)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v11

    .line 179
    .local v11, "noHaveBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {p0, v11}, Lcom/sns/game/database/dao/UserWeaponDao;->asInsertUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 180
    .end local v11    # "noHaveBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :cond_7
    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_4

    .line 181
    move/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->createUWpnByBulletCount(II)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v11

    .line 182
    .restart local v11    # "noHaveBean":Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-virtual {p0, v11}, Lcom/sns/game/database/dao/UserWeaponDao;->asInsertUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 192
    .end local v2    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "compareMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .end local v5    # "containSql":Ljava/lang/String;
    .end local v9    # "fileds":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v11    # "noHaveBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v1    # "batchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v12

    goto :goto_6

    .line 189
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public varargs addUserWeapons([I)Z
    .locals 2
    .param p1, "weaponIds"    # [I

    .prologue
    .line 142
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sns/game/database/dao/UserWeaponDao;->addUserWeapons(II[I)Z

    move-result v0

    return v0
.end method

.method public asInsertUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Ljava/lang/String;
    .locals 4
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 221
    const-string v2, "userweapons"

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->toSqlValues()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sns/game/database/DBTool;->asINSERTSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asUpdateUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Ljava/lang/String;
    .locals 3
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE userweapons SET hold_count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string v2, "use_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, "now_use = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string v2, "WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string v2, "id_key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getId_key()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string v2, "AND quote_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 314
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containUserWeapon(I)Z
    .locals 6
    .param p1, "weaponId"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "contain_":Z
    const/4 v1, 0x0

    .line 123
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select userweapons.quote_id from userweapons where userweapons.quote_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 131
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move v3, v0

    .line 133
    :goto_0
    return v3

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 129
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 131
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 132
    throw v3
.end method

.method public createUWpnByBulletCount(II)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 5
    .param p1, "quoteId"    # I
    .param p2, "bulletCount"    # I

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_0
    new-instance v2, Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-direct {v2}, Lcom/sns/game/database/bean/UserWeaponBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .local v2, "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/sns/game/database/bean/UserWeaponBean;->setQuote_id(I)V

    .line 372
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setNow_use(I)V

    .line 374
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v3

    .line 375
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/dao/WeaponDao;->findWeapon(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 376
    invoke-virtual {v2, p2}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 377
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->modifyHold_count()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 381
    .end local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :goto_0
    return-object v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    goto :goto_1
.end method

.method public createUserWeapon(II)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 5
    .param p1, "quoteId"    # I
    .param p2, "payCount"    # I

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_0
    new-instance v2, Lcom/sns/game/database/bean/UserWeaponBean;

    invoke-direct {v2}, Lcom/sns/game/database/bean/UserWeaponBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .local v2, "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/sns/game/database/bean/UserWeaponBean;->setQuote_id(I)V

    .line 348
    invoke-virtual {v2, p2}, Lcom/sns/game/database/bean/UserWeaponBean;->setHold_count(I)V

    .line 349
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V

    .line 350
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setNow_use(I)V

    .line 351
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v3

    .line 352
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/dao/WeaponDao;->findWeapon(I)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setWeaponBean(Lcom/sns/game/database/bean/WeaponBean;)V

    .line 354
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v3

    mul-int/2addr v3, p2

    .line 353
    invoke-virtual {v2, v3}, Lcom/sns/game/database/bean/UserWeaponBean;->setUse_count(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 358
    .end local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :goto_0
    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    .restart local v1    # "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    goto :goto_1
.end method

.method public findUserWeaponBean(I)Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 6
    .param p1, "weaponId"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 74
    .local v2, "userWeaponBean":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select userweapons.* from userweapons where userweapons.quote_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserWeaponBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 84
    :cond_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 86
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 82
    :try_start_1
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 84
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 85
    throw v3
.end method

.method public findUserWeaponList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/UserWeaponBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 97
    .local v3, "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .local v4, "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    const-string v6, "select * from userweapons order by quote_id;"

    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 99
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 111
    .end local v4    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :goto_1
    return-object v3

    .line 100
    .end local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v4    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    .line 101
    .local v0, "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 105
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 106
    .end local v4    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 109
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 110
    throw v5

    .line 108
    .end local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v4    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    .restart local v3    # "userWeaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/UserWeaponBean;>;"
    goto :goto_3

    .line 105
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public findUsingUserWeapon()Lcom/sns/game/database/bean/UserWeaponBean;
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 51
    .local v2, "userWeapon":Lcom/sns/game/database/bean/UserWeaponBean;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 52
    const-string v4, "SELECT * FROM  userweapons WHERE now_use  = 1;"

    .line 51
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->createUserWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserWeaponBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 60
    :cond_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 62
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 58
    :try_start_1
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 60
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 61
    throw v3
.end method

.method public modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z
    .locals 4
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE userweapons SET hold_count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getHold_count()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 280
    const-string v3, "use_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getUse_count()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string v3, "now_use = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getNow_use()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    const-string v3, "WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string v3, "id_key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getId_key()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    const-string v3, "AND quote_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public modifyUserWeaponToNowUse(I)Z
    .locals 4
    .param p1, "weaponId"    # I

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update userweapons set now_use = \'1\' where quote_id = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 263
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z
    .locals 4
    .param p1, "bean"    # Lcom/sns/game/database/bean/UserWeaponBean;

    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM userweapons WHERE  quote_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Lcom/sns/game/database/DBTool;->doDelete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 333
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchUserWeaponToNowUse(II)Z
    .locals 7
    .param p1, "oldUseId"    # I
    .param p2, "nowUseId"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update userweapons set now_use = \'0\' where quote_id = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update userweapons set now_use = \'1\' where quote_id = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 238
    invoke-virtual {v2, v3}, Lcom/sns/game/database/DBTool;->doUpdate([Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
