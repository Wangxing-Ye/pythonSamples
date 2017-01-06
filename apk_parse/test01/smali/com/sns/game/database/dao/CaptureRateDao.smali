.class public Lcom/sns/game/database/dao/CaptureRateDao;
.super Ljava/lang/Object;
.source "CaptureRateDao.java"


# static fields
.field private static dao:Lcom/sns/game/database/dao/CaptureRateDao;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/CaptureRateDao;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sns/game/database/dao/CaptureRateDao;->dao:Lcom/sns/game/database/dao/CaptureRateDao;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/sns/game/database/dao/CaptureRateDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/CaptureRateDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/CaptureRateDao;->dao:Lcom/sns/game/database/dao/CaptureRateDao;

    .line 32
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/CaptureRateDao;->dao:Lcom/sns/game/database/dao/CaptureRateDao;

    return-object v0
.end method


# virtual methods
.method public asCaptureRateMapByWeaponId(I)Ljava/util/HashMap;
    .locals 8
    .param p1, "weaponId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/database/bean/CaptureRateBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 69
    .local v1, "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from capture_rate where weapon_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v2, "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 82
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 84
    .end local v2    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :goto_1
    return-object v1

    .line 73
    .end local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sns/game/database/dao/CaptureRateDao;->createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v0

    .line 74
    .local v0, "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/sns/game/database/bean/CaptureRateBean;->getZombie_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 78
    .end local v0    # "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 79
    .end local v2    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 80
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 81
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 82
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 83
    throw v5

    .line 81
    .end local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "cacheMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/CaptureRateBean;>;"
    goto :goto_3

    .line 78
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 171
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 172
    .local v3, "tool":Lcom/sns/game/database/DBTool;
    const/4 v0, 0x0

    .line 174
    .local v0, "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    :try_start_0
    new-instance v1, Lcom/sns/game/database/bean/CaptureRateBean;

    invoke-direct {v1}, Lcom/sns/game/database/bean/CaptureRateBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    .local v1, "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    :try_start_1
    const-string v4, "recordNo_key"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setRecordNo_key(I)V

    .line 176
    const-string v4, "weapon_id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setWeapon_id(I)V

    .line 177
    const-string v4, "zombie_id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setZombie_id(I)V

    .line 178
    const-string v4, "expect"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setExpect(F)V

    .line 179
    const-string v4, "weight"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setWeight(F)V

    .line 180
    const-string v4, "cluster"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/CaptureRateBean;->setCluster(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 185
    .end local v1    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    .restart local v0    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    .line 183
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 181
    .end local v0    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    .restart local v0    # "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    goto :goto_1
.end method

.method public findCaptureRateBean(II)Lcom/sns/game/database/bean/CaptureRateBean;
    .locals 6
    .param p1, "weaponId"    # I
    .param p2, "zombieId"    # I

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 151
    .local v0, "captureRateBean":Lcom/sns/game/database/bean/CaptureRateBean;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select * from capture_rate where weapon_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    const-string v5, " and zombie_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Lcom/sns/game/database/dao/CaptureRateDao;->createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 162
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 160
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 161
    throw v3
.end method

.method public findCaptureRateList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/CaptureRateBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 43
    .local v1, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    const-string v6, "select * from capture_rate"

    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v2, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 54
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 57
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :goto_1
    return-object v1

    .line 46
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sns/game/database/dao/CaptureRateDao;->createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v0

    .line 47
    .local v0, "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 50
    .end local v0    # "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 51
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 53
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 54
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 55
    throw v5

    .line 53
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    goto :goto_3

    .line 50
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public findCaptureRateListByWeaponId(I)Ljava/util/List;
    .locals 8
    .param p1, "weaponId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/CaptureRateBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 96
    .local v1, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from capture_rate where weapon_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v2, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 111
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :goto_1
    return-object v1

    .line 100
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sns/game/database/dao/CaptureRateDao;->createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v0

    .line 101
    .local v0, "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 105
    .end local v0    # "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 106
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 108
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 109
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 110
    throw v5

    .line 108
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    goto :goto_3

    .line 105
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public findCaptureRateListByZombieId(I)Ljava/util/List;
    .locals 8
    .param p1, "zombieId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/CaptureRateBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 123
    .local v1, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from capture_rate where zombie_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v2, "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 136
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v1, v2

    .line 138
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :goto_1
    return-object v1

    .line 127
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sns/game/database/dao/CaptureRateDao;->createCaptureRateBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/CaptureRateBean;

    move-result-object v0

    .line 128
    .local v0, "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 132
    .end local v0    # "bean":Lcom/sns/game/database/bean/CaptureRateBean;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 133
    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 134
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 136
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 137
    throw v5

    .line 135
    .end local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    .restart local v1    # "captureRateBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/CaptureRateBean;>;"
    goto :goto_3

    .line 132
    :catch_1
    move-exception v4

    goto :goto_2
.end method
