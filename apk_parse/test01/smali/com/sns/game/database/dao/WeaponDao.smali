.class public Lcom/sns/game/database/dao/WeaponDao;
.super Ljava/lang/Object;
.source "WeaponDao.java"


# static fields
.field public static final WEAPON_ANCHORPOINT_SHOTTYPE:I = 0x2

.field public static final WEAPON_CLUSTER_ATTACKTYPE:I = 0x2

.field public static final WEAPON_DEFAULT_SHOTTYPE:I = 0x1

.field public static final WEAPON_ID_CGP:I = 0x2724

.field public static final WEAPON_ID_DMG:I = 0x2722

.field public static final WEAPON_ID_JGP:I = 0x2720

.field public static final WEAPON_ID_WDP:I = 0x271f

.field public static final WEAPON_ID_XGTS:I = 0x2723

.field public static final WEAPON_ID_XRZC:I = 0x2721

.field public static final WEAPON_SINGLE_ATTACKTYPE:I = 0x1

.field private static dao:Lcom/sns/game/database/dao/WeaponDao;


# instance fields
.field private cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/database/bean/WeaponBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/sns/game/database/dao/WeaponDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/WeaponDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/WeaponDao;->dao:Lcom/sns/game/database/dao/WeaponDao;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    .line 45
    invoke-direct {p0}, Lcom/sns/game/database/dao/WeaponDao;->initCacheData()V

    .line 46
    return-void
.end method

.method private createWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/WeaponBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "weapon":Lcom/sns/game/database/bean/WeaponBean;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v1

    .line 145
    .local v1, "tool":Lcom/sns/game/database/DBTool;
    :try_start_0
    new-instance v3, Lcom/sns/game/database/bean/WeaponBean;

    invoke-direct {v3}, Lcom/sns/game/database/bean/WeaponBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    .local v3, "weapon":Lcom/sns/game/database/bean/WeaponBean;
    :try_start_1
    const-string v4, "attackId"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setAttackId(I)V

    .line 147
    const-string v4, "name"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setName(Ljava/lang/String;)V

    .line 148
    const-string v4, "attackType"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setAttackType(I)V

    .line 149
    const-string v4, "uselevel"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setUselevel(I)V

    .line 150
    const-string v4, "shotType"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setShotType(I)V

    .line 151
    const-string v4, "costMoney"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setCostMoney(I)V

    .line 152
    const-string v4, "cofficientA"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setCofficientA(F)V

    .line 153
    const-string v4, "cofficientB"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setCofficientB(F)V

    .line 154
    const-string v4, "energy"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setEnergy(F)V

    .line 155
    const-string v4, "shootInterval"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setShootInterval(F)V

    .line 156
    const-string v4, "shootDistanceMax"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setShootDistanceMax(F)V

    .line 157
    const-string v4, "flyTime"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setFlyTime(F)V

    .line 158
    const-string v4, "bullet_count"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setBullet_count(I)V

    .line 159
    const-string v4, "shotPlist"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setShotPlist(Ljava/lang/String;)V

    .line 160
    const-string v4, "weapon_complex"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setWeapon_complex(Ljava/lang/String;)V

    .line 161
    const-string v4, "bombEffect_plist"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setBombEffect_plist(Ljava/lang/String;)V

    .line 162
    const-string v4, "bullet_complex"

    invoke-virtual {v1, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sns/game/database/bean/WeaponBean;->setBullet_complex(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 167
    .end local v3    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v2    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    .line 165
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v3    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    .restart local v2    # "weapon":Lcom/sns/game/database/bean/WeaponBean;
    goto :goto_1
.end method

.method private initCacheData()V
    .locals 6

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "select * from weapons order by weapons.[attackId];"

    .line 69
    .local v3, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 82
    .end local v3    # "sql":Ljava/lang/String;
    :goto_1
    return-void

    .line 71
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sns/game/database/dao/WeaponDao;->createWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v0

    .line 72
    .local v0, "bean":Lcom/sns/game/database/bean/WeaponBean;
    iget-object v4, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "bean":Lcom/sns/game/database/bean/WeaponBean;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 77
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 80
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 81
    throw v4
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/WeaponDao;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sns/game/database/dao/WeaponDao;->dao:Lcom/sns/game/database/dao/WeaponDao;

    return-object v0
.end method


# virtual methods
.method public cacheGet(I)Lcom/sns/game/database/bean/WeaponBean;
    .locals 2
    .param p1, "weaponId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/WeaponBean;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/dao/WeaponDao;->cacheMap:Ljava/util/HashMap;

    .line 63
    :cond_0
    return-void
.end method

.method public findWeapon(I)Lcom/sns/game/database/bean/WeaponBean;
    .locals 6
    .param p1, "attackId"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 97
    .local v2, "weapon":Lcom/sns/game/database/bean/WeaponBean;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM  weapons WHERE attackId  = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/WeaponDao;->createWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/WeaponBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 105
    :cond_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 107
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 105
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 106
    throw v3
.end method

.method public findWeaponList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/WeaponBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 118
    .local v3, "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 119
    const-string v6, "SELECT * FROM  weapons;"

    .line 118
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .local v4, "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 131
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 133
    .end local v4    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .restart local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :goto_1
    return-object v3

    .line 122
    .end local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .restart local v4    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/WeaponDao;->createWeapon(Landroid/database/Cursor;)Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v2

    .line 123
    .local v2, "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 127
    .end local v2    # "weaponBean":Lcom/sns/game/database/bean/WeaponBean;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 128
    .end local v4    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 129
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 131
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 132
    throw v5

    .line 130
    .end local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .restart local v4    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    .restart local v3    # "weaponBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/WeaponBean;>;"
    goto :goto_3

    .line 127
    :catch_1
    move-exception v1

    goto :goto_2
.end method
