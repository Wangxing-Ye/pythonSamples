.class public Lcom/sns/game/database/DBTool;
.super Ljava/lang/Object;
.source "DBTool.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DBTool"

.field private static mDbTool:Lcom/sns/game/database/DBTool;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static PRINTLN(Ljava/lang/String;)V
    .locals 1
    .param p0, "logStr"    # Ljava/lang/String;

    .prologue
    .line 609
    const-string v0, "DataBase"

    invoke-static {v0, p0}, Lcom/sns/game/util/CCGameLog;->CCLOGWARN(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public static getInstance()Lcom/sns/game/database/DBTool;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sns/game/database/DBTool;->mDbTool:Lcom/sns/game/database/DBTool;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/sns/game/database/DBTool;

    invoke-direct {v0}, Lcom/sns/game/database/DBTool;-><init>()V

    sput-object v0, Lcom/sns/game/database/DBTool;->mDbTool:Lcom/sns/game/database/DBTool;

    .line 31
    :cond_0
    sget-object v0, Lcom/sns/game/database/DBTool;->mDbTool:Lcom/sns/game/database/DBTool;

    return-object v0
.end method


# virtual methods
.method public varargs asINSERTSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "INSERT INTO "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VALUES ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, "valueIndex":I
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 248
    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v3    # "valueIndex":I
    :goto_1
    return-object v4

    .line 242
    .restart local v3    # "valueIndex":I
    :cond_0
    :try_start_1
    aget-object v2, p2, v4

    .line 243
    .local v2, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 244
    const-string v6, "NULL"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    .end local v2    # "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 245
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 249
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "valueIndex":I
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 251
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public varargs asSelectFields([I)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # [I

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 565
    .local v4, "index":I
    :try_start_1
    array-length v7, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "index":I
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 565
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "index":I
    :cond_0
    :try_start_2
    aget v3, p1, v6

    .line 566
    .local v3, "field":I
    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    add-int/lit8 v4, v4, 0x1

    .line 565
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 566
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, " ,"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_2

    .line 569
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "field":I
    .end local v4    # "index":I
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 571
    const/4 v5, 0x0

    goto :goto_1

    .line 569
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "index":I
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3
.end method

.method public varargs asSelectFields([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 544
    .local v4, "index":I
    :try_start_1
    array-length v6, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "index":I
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 544
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "index":I
    :cond_0
    :try_start_2
    aget-object v3, p1, v5

    .line 545
    .local v3, "field":Ljava/lang/String;
    if-nez v4, :cond_1

    .end local v3    # "field":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v4, v4, 0x1

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 545
    .restart local v3    # "field":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " ,"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_2

    .line 548
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 550
    const/4 v5, 0x0

    goto :goto_1

    .line 548
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "index":I
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3
.end method

.method public closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 583
    if-eqz p1, :cond_0

    .line 584
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public declared-synchronized closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 597
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 598
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doBatch(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "listSql":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 144
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/DBOperation;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :cond_0
    const/4 v3, 0x1

    .line 153
    :goto_1
    monitor-exit p0

    return v3

    .line 146
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 156
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized doDelete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sns/game/database/DBTool;->doInsert(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized doDelete([Ljava/lang/String;)Z
    .locals 1
    .param p1, "listSql"    # [Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/DBTool;->doBatch(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doInsert(Ljava/lang/String;)Z
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 117
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/DBOperation;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    if-eqz v0, :cond_3

    .line 127
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    if-eqz v0, :cond_1

    .line 127
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 125
    :catchall_1
    move-exception v2

    .line 126
    if-eqz v0, :cond_4

    .line 127
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public varargs declared-synchronized doInsert([Ljava/lang/String;)Z
    .locals 1
    .param p1, "listSqL"    # [Ljava/lang/String;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/DBTool;->doBatch(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doQuery(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/database/DBTool;->doQuery(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doQuery(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 12
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 172
    move-object v3, v9

    check-cast v3, [[Ljava/lang/String;

    .line 173
    .local v3, "data":[[Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 176
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 197
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 195
    :goto_0
    return-object v9

    .line 180
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sns/game/database/DBOperation;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 181
    invoke-virtual {v4, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 183
    .local v8, "row":I
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 184
    .local v1, "col":I
    filled-new-array {v8, v1}, [I

    move-result-object v10

    const-class v11, Ljava/lang/String;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    .line 185
    const/4 v6, 0x0

    .line 186
    .local v6, "i":I
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 197
    invoke-virtual {p0, v2}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    move-object v9, v3

    .line 192
    goto :goto_0

    .line 187
    :cond_2
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v1, :cond_3

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 188
    :cond_3
    :try_start_2
    aget-object v10, v3, v6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "col":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "row":I
    :catch_0
    move-exception v5

    .line 194
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v5}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    invoke-virtual {p0, v2}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 196
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 197
    invoke-virtual {p0, v2}, Lcom/sns/game/database/DBTool;->closeCursor(Landroid/database/Cursor;)V

    .line 199
    throw v9
.end method

.method public doQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/database/DBTool;->doQueryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public doQueryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 213
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v3

    .line 217
    :cond_1
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sns/game/database/DBOperation;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v0

    .line 222
    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public declared-synchronized doUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sns/game/database/DBTool;->doInsert(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized doUpdate([Ljava/lang/String;)Z
    .locals 1
    .param p1, "listSql"    # [Ljava/lang/String;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/DBTool;->doBatch(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCursorBlod(Landroid/database/Cursor;I)[B
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 317
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorBlod(Landroid/database/Cursor;Ljava/lang/String;)[B
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    .line 303
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorDouble(Landroid/database/Cursor;I)D
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 358
    :cond_0
    :goto_0
    return-wide v2

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 339
    :cond_0
    :goto_0
    return-wide v2

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorFloat(Landroid/database/Cursor;I)F
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 397
    :cond_0
    :goto_0
    return v2

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    :cond_0
    :goto_0
    return v2

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorInt(Landroid/database/Cursor;I)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 507
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "_value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 511
    .end local v0    # "_value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 488
    .line 489
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 488
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "_value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 492
    .end local v0    # "_value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorLong(Landroid/database/Cursor;I)J
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 435
    :cond_0
    :goto_0
    return-wide v2

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 416
    :cond_0
    :goto_0
    return-wide v2

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorShort(Landroid/database/Cursor;I)S
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 473
    :cond_0
    :goto_0
    return v2

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorShort(Landroid/database/Cursor;Ljava/lang/String;)S
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "_value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 454
    :cond_0
    :goto_0
    return v2

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method public getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 283
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    .line 286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 266
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;Z)V

    .line 269
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 523
    const/4 v2, 0x0

    .line 525
    .local v2, "nextIndex":I
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 526
    .local v1, "index":I
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v4, v5, :cond_0

    move v2, v3

    :goto_0
    move v3, v2

    .line 530
    .end local v1    # "index":I
    :goto_1
    return v3

    .line 526
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method
