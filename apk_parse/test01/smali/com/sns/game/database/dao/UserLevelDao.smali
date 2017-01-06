.class public Lcom/sns/game/database/dao/UserLevelDao;
.super Ljava/lang/Object;
.source "UserLevelDao.java"


# static fields
.field public static final MAX_LEVEL:I = 0x50

.field private static dao:Lcom/sns/game/database/dao/UserLevelDao;


# instance fields
.field private cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/database/bean/UserLevelBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/sns/game/database/dao/UserLevelDao;->setCacheMap()V

    .line 26
    return-void
.end method

.method private createUserLevel(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserLevelBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 173
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 174
    .local v3, "tool":Lcom/sns/game/database/DBTool;
    const/4 v0, 0x0

    .line 176
    .local v0, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    :try_start_0
    new-instance v1, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-direct {v1}, Lcom/sns/game/database/bean/UserLevelBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    .local v1, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    :try_start_1
    const-string v4, "level"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/UserLevelBean;->setLevel(I)V

    .line 178
    const-string v4, "max_exp"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/UserLevelBean;->setMax_exp(I)V

    .line 179
    const-string v4, "reward_gold"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/UserLevelBean;->setReward_gold(I)V

    .line 180
    const-string v4, "coefficient"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/UserLevelBean;->setCoefficient(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 185
    .end local v1    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    .restart local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
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
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    .restart local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    goto :goto_1
.end method

.method private levelCacheMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/database/bean/UserLevelBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 146
    .local v3, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .local v4, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    .line 148
    const-string v6, "SELECT * FROM userlevel;"

    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 164
    .end local v4    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .restart local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :goto_1
    return-object v3

    .line 151
    .end local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .restart local v4    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sns/game/database/dao/UserLevelDao;->createUserLevel(Landroid/database/Cursor;)Lcom/sns/game/database/bean/UserLevelBean;

    move-result-object v0

    .line 152
    .local v0, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 158
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserLevelBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 159
    .end local v4    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 160
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 161
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 162
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 163
    throw v5

    .line 161
    .end local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .restart local v4    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    .restart local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sns/game/database/bean/UserLevelBean;>;"
    goto :goto_3

    .line 158
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private setCacheMap()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sns/game/database/dao/UserLevelDao;->levelCacheMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/UserLevelDao;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sns/game/database/dao/UserLevelDao;->dao:Lcom/sns/game/database/dao/UserLevelDao;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sns/game/database/dao/UserLevelDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/UserLevelDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/UserLevelDao;->dao:Lcom/sns/game/database/dao/UserLevelDao;

    .line 36
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/UserLevelDao;->dao:Lcom/sns/game/database/dao/UserLevelDao;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    .line 53
    :cond_0
    return-void
.end method

.method public getCoefficient(I)F
    .locals 2
    .param p1, "currentLevel"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getCoefficient()F

    move-result v0

    return v0
.end method

.method public getCurrentFullExp(I)I
    .locals 2
    .param p1, "currentLevel"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getMax_exp()I

    move-result v0

    return v0
.end method

.method public getCurrentLevelCoefficient()F
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v0

    .line 134
    .local v0, "level":I
    iget-object v1, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserLevelBean;->getCoefficient()F

    move-result v1

    return v1
.end method

.method public getLevelBean(I)Lcom/sns/game/database/bean/UserLevelBean;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    return-object v0
.end method

.method public getMaxLevelFullExp()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getMax_exp()I

    move-result v0

    return v0
.end method

.method public getNextFullExp(I)I
    .locals 2
    .param p1, "currentLevel"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getMax_exp()I

    move-result v0

    return v0
.end method

.method public getRewardGold(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getReward_gold()I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getReward_gold()I

    move-result v0

    goto :goto_0
.end method

.method public maxLevelBean()Lcom/sns/game/database/bean/UserLevelBean;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    return-object v0
.end method

.method public nextLevelBean(I)Lcom/sns/game/database/bean/UserLevelBean;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sns/game/database/dao/UserLevelDao;->cacheMap:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    return-object v0
.end method
