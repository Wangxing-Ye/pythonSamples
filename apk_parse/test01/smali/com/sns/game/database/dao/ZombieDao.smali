.class public Lcom/sns/game/database/dao/ZombieDao;
.super Ljava/lang/Object;
.source "ZombieDao.java"


# static fields
.field public static final APPEAR_LEVEL_MAX:I = 0x3

.field public static final RES_HANDSEL_ROOTPATH:Ljava/lang/String; = "zombie/handsel_mode/"

.field public static final RES_ROOTPATH:Ljava/lang/String; = "zombie/"

.field public static final ZOMBIE_ID_BLJS:I = 0x271c

.field public static final ZOMBIE_ID_CJDB:I = 0x271d

.field public static final ZOMBIE_ID_LWJS:I = 0x271e

.field public static final ZOMBIE_ID_QGJS:I = 0x2711

.field public static final ZOMBIE_MOVE_TYPE_BOTHSIDE:I = 0x2

.field public static final ZOMBIE_MOVE_TYPE_DRILLOUT:I = 0x1

.field public static final ZOMBIE_TYPE_BOSS:I = 0x2

.field public static final ZOMBIE_TYPE_COMMON:I = 0x1

.field public static final ZOMBIE_TYPE_HANDSEL:I = 0x4

.field public static final ZOMBIE_TYPE_HIDEEN:I = 0x3

.field public static dao:Lcom/sns/game/database/dao/ZombieDao;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private createZombieDataBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/ZombieDataBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 150
    .local v3, "tool":Lcom/sns/game/database/DBTool;
    const/4 v0, 0x0

    .line 152
    .local v0, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :try_start_0
    new-instance v1, Lcom/sns/game/database/bean/ZombieDataBean;

    invoke-direct {v1}, Lcom/sns/game/database/bean/ZombieDataBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    .local v1, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :try_start_1
    const-string v4, "zombie_id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_id(I)V

    .line 154
    const-string v4, "zombie_name"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_name(Ljava/lang/String;)V

    .line 155
    const-string v4, "zombie_score"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_score(I)V

    .line 156
    const-string v4, "intrinsicValue"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setIntrinsicValue(F)V

    .line 157
    const-string v4, "zombie_type"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_type(I)V

    .line 158
    const-string v4, "move_type"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setMove_type(I)V

    .line 159
    const-string v4, "variation_zombie_id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setVariation_zombie_id(I)V

    .line 160
    const-string v4, "appear_grade"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setAppear_grade(I)V

    .line 161
    const-string v4, "zombie_appear"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_appear(F)V

    .line 162
    const-string v4, "zombie_card_drop"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setZombie_card_drop(F)V

    .line 163
    const-string v4, "weapon_card_drop"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setWeapon_card_drop(F)V

    .line 164
    const-string v4, "gift_appear"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setGift_appear(F)V

    .line 165
    const-string v4, "speed_time"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setSpeed_time(F)V

    .line 166
    const-string v4, "display_res"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setDisplay_res(Ljava/lang/String;)V

    .line 167
    const-string v4, "move_res"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setMove_res(Ljava/lang/String;)V

    .line 168
    const-string v4, "dead_res"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setDead_res(Ljava/lang/String;)V

    .line 169
    const-string v4, "shadow_pos"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/ZombieDataBean;->setShadow_pos(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 174
    .end local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    .restart local v0    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    .line 172
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 170
    .end local v0    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    .restart local v0    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    goto :goto_1
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/ZombieDao;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sns/game/database/dao/ZombieDao;->dao:Lcom/sns/game/database/dao/ZombieDao;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/sns/game/database/dao/ZombieDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/ZombieDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/ZombieDao;->dao:Lcom/sns/game/database/dao/ZombieDao;

    .line 60
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/ZombieDao;->dao:Lcom/sns/game/database/dao/ZombieDao;

    return-object v0
.end method

.method private varargs toArgs([I)Ljava/lang/String;
    .locals 5
    .param p1, "args"    # [I

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v2, p1

    .line 180
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 181
    :cond_0
    if-nez v1, :cond_1

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public findAllGameZombies()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/ZombieDataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 96
    .local v3, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from zombie where zombie_type in ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct {p0, v7}, Lcom/sns/game/database/dao/ZombieDao;->toArgs([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 99
    const-string v7, "order by zombie_id;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v4, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 111
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 113
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_1
    return-object v3

    .line 102
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/ZombieDao;->createZombieDataBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v1

    .line 103
    .local v1, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 107
    .end local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 108
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 111
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 112
    throw v5

    .line 110
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    goto :goto_3

    .line 107
    :catch_1
    move-exception v2

    goto :goto_2

    .line 98
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public findAllZombies()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/ZombieDataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 71
    .local v3, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    const-string v6, "select * from zombie;"

    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v4, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 83
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 85
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_1
    return-object v3

    .line 74
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/ZombieDao;->createZombieDataBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v1

    .line 75
    .local v1, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 79
    .end local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 80
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 81
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 83
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 84
    throw v5

    .line 82
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    goto :goto_3

    .line 79
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public findZombiesByType(I)Ljava/util/List;
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/ZombieDataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 125
    .local v3, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from zombie where zombie_type = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v4, "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 138
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 140
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_1
    return-object v3

    .line 129
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sns/game/database/dao/ZombieDao;->createZombieDataBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/ZombieDataBean;

    move-result-object v1

    .line 130
    .local v1, "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 134
    .end local v1    # "dataBean":Lcom/sns/game/database/bean/ZombieDataBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 135
    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 136
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 138
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 139
    throw v5

    .line 137
    .end local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    .restart local v3    # "zombieDataBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/ZombieDataBean;>;"
    goto :goto_3

    .line 134
    :catch_1
    move-exception v2

    goto :goto_2
.end method
