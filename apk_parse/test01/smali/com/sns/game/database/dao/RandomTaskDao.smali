.class public Lcom/sns/game/database/dao/RandomTaskDao;
.super Ljava/lang/Object;
.source "RandomTaskDao.java"


# static fields
.field private static dao:Lcom/sns/game/database/dao/RandomTaskDao;


# instance fields
.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/RandomTaskBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/sns/game/database/dao/RandomTaskDao;->setTaskList()V

    .line 25
    return-void
.end method

.method private createRandomTaskBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/RandomTaskBean;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 138
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v3

    .line 139
    .local v3, "tool":Lcom/sns/game/database/DBTool;
    const/4 v0, 0x0

    .line 141
    .local v0, "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :try_start_0
    new-instance v1, Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-direct {v1}, Lcom/sns/game/database/bean/RandomTaskBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    .local v1, "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :try_start_1
    const-string v4, "recordNo_key"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setRecordNo_key(I)V

    .line 143
    const-string v4, "difficulty"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setDifficulty(I)V

    .line 144
    const-string v4, "task_desc"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setTask_desc(Ljava/lang/String;)V

    .line 145
    const-string v4, "zombie_id"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setZombie_id(I)V

    .line 146
    const-string v4, "kill_count"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setKill_count(I)V

    .line 147
    const-string v4, "task_time"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setTask_time(I)V

    .line 148
    const-string v4, "reward"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setReward(I)V

    .line 149
    const-string v4, "icon_head"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setIcon_head(Ljava/lang/String;)V

    .line 150
    const-string v4, "desc_icon"

    invoke-virtual {v3, p1, v4}, Lcom/sns/game/database/DBTool;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sns/game/database/bean/RandomTaskBean;->setDesc_icon(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 155
    .end local v1    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    .restart local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    .line 153
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 151
    .end local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    .restart local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    goto :goto_1
.end method

.method private setTaskList()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sns/game/database/dao/RandomTaskDao;->findRandomTaskList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static sharedDao()Lcom/sns/game/database/dao/RandomTaskDao;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sns/game/database/dao/RandomTaskDao;->dao:Lcom/sns/game/database/dao/RandomTaskDao;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sns/game/database/dao/RandomTaskDao;

    invoke-direct {v0}, Lcom/sns/game/database/dao/RandomTaskDao;-><init>()V

    sput-object v0, Lcom/sns/game/database/dao/RandomTaskDao;->dao:Lcom/sns/game/database/dao/RandomTaskDao;

    .line 35
    :cond_0
    sget-object v0, Lcom/sns/game/database/dao/RandomTaskDao;->dao:Lcom/sns/game/database/dao/RandomTaskDao;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    .line 51
    :cond_0
    return-void
.end method

.method public findRandomTask(I)Lcom/sns/game/database/bean/RandomTaskBean;
    .locals 5
    .param p1, "tag"    # I

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "target":Lcom/sns/game/database/bean/RandomTaskBean;
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    .end local v2    # "target":Lcom/sns/game/database/bean/RandomTaskBean;
    :goto_0
    return-object v2

    .line 73
    .restart local v2    # "target":Lcom/sns/game/database/bean/RandomTaskBean;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/RandomTaskBean;

    .line 75
    .local v0, "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getRecordNo_key()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p1, :cond_0

    .line 77
    move-object v2, v0

    .line 78
    goto :goto_0

    .line 84
    .end local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findRandomTaskList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/RandomTaskBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 118
    .local v3, "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .local v4, "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    const-string v6, "SELECT * FROM random_tasks;"

    invoke-virtual {v5, v6}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 132
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 134
    .end local v4    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .restart local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :goto_1
    return-object v3

    .line 122
    .end local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .restart local v4    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sns/game/database/dao/RandomTaskDao;->createRandomTaskBean(Landroid/database/Cursor;)Lcom/sns/game/database/bean/RandomTaskBean;

    move-result-object v0

    .line 123
    .local v0, "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 128
    .end local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 129
    .end local v4    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 130
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 132
    :goto_3
    invoke-static {}, Lcom/sns/game/database/DBTool;->getInstance()Lcom/sns/game/database/DBTool;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 133
    throw v5

    .line 131
    .end local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .restart local v4    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    .restart local v3    # "randomTaskBeans":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/database/bean/RandomTaskBean;>;"
    goto :goto_3

    .line 128
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/database/bean/RandomTaskBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Lcom/sns/game/database/bean/RandomTaskBean;)I
    .locals 6
    .param p1, "target"    # Lcom/sns/game/database/bean/RandomTaskBean;

    .prologue
    .line 94
    const/4 v2, -0x1

    .line 95
    .local v2, "index":I
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    .end local v2    # "index":I
    :goto_0
    return v2

    .line 95
    .restart local v2    # "index":I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/RandomTaskBean;

    .line 96
    .local v0, "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    invoke-virtual {v0}, Lcom/sns/game/database/bean/RandomTaskBean;->getRecordNo_key()I

    move-result v4

    invoke-virtual {p1}, Lcom/sns/game/database/bean/RandomTaskBean;->getRecordNo_key()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 98
    iget-object v3, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    goto :goto_0

    .line 104
    .end local v0    # "bean":Lcom/sns/game/database/bean/RandomTaskBean;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 106
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public randomTask()Lcom/sns/game/database/bean/RandomTaskBean;
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sns/game/database/dao/RandomTaskDao;->randomTask(I)Lcom/sns/game/database/bean/RandomTaskBean;

    move-result-object v0

    return-object v0
.end method

.method public randomTask(I)Lcom/sns/game/database/bean/RandomTaskBean;
    .locals 3
    .param p1, "exitIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 61
    iget-object v1, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 62
    .local v0, "index":I
    :goto_0
    if-eq v0, p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/database/bean/RandomTaskBean;

    return-object v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sns/game/database/dao/RandomTaskDao;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    goto :goto_0
.end method
