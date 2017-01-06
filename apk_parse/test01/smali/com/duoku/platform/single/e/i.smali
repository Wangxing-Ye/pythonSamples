.class public Lcom/duoku/platform/single/e/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/duoku/platform/single/e/i; = null

.field private static final e:Ljava/lang/String; = "insert into channel_amount (\'channel\',\'amount\',\'operator\',\'isvalid\',\'valid_start\',\'valid_end\',\'create_time\') values (?,?,?,?,?,?,?);"


# instance fields
.field a:Lcom/duoku/platform/single/e/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    const-string v0, "channel_amount"

    iput-object v0, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/single/e/i;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/e/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/e/i;->b:Lcom/duoku/platform/single/e/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/e/i;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/e/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/e/i;->b:Lcom/duoku/platform/single/e/i;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/e/i;->b:Lcom/duoku/platform/single/e/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "cm"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cu"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ct"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const-string v2, "operator=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const-string v2, "operator=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cmt"

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/duoku/platform/single/k/a;)I
    .locals 3

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0, v1, p1}, Lcom/duoku/platform/single/e/i;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/k/a;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/k/a;)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "insert into channel_amount (\'channel\',\'amount\',\'operator\',\'isvalid\',\'valid_start\',\'valid_end\',\'create_time\') values (?,?,?,?,?,?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v0, 0x1

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->e:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p2, Lcom/duoku/platform/single/k/a;->g:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/k/a;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operator"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "amount"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isvalid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "valid_start"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "valid_end"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "head_dest"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isvalid =\'1\' and operator=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v9

    :cond_3
    :try_start_5
    new-instance v1, Lcom/duoku/platform/single/k/a;

    invoke-direct {v1, v2}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;)V

    iget-object v3, v1, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v8, :cond_7

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :cond_9
    move-object v2, v8

    goto :goto_1
.end method

.method public a()V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/e/a;

    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/k/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/duoku/platform/single/e/i;->f()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string v0, "refresh_paychannel_amount"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    if-eqz v6, :cond_6

    const-string v6, ""

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "prefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/single/e/i;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/k/a;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/k/a;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/duoku/platform/single/e/i;->f()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string v0, "refresh_paychannel_amount"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "paychannel_configuration_version"

    invoke-virtual {v2, v0, p2}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    iget-object v5, v0, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    if-eqz v6, :cond_4

    const-string v6, ""

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/Integer;)Z

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/single/e/i;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/k/a;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/k/a;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v0, "cm"

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cu"

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ct"

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const-string v4, "operator=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/a;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "amount"

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "channel"

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "head_dest"

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "isvalid"

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "operator"

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v5, v0, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v6, ""

    iget-object v7, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v0, v0, Lcom/duoku/platform/single/k/a;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/Integer;)Z

    :cond_3
    const-string v0, "refresh_paychannel_amount"

    invoke-static {}, Lcom/duoku/platform/single/util/g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "paychannel_configuration_version"

    invoke-virtual {v2, v0, p2}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operator"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "amount"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isvalid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "valid_start"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "valid_end"

    aput-object v4, v2, v3

    const-string v3, "isvalid =\'1\' and operator in (\'cm\' ,\'cu\',\'ct\')"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, "_id desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "other"

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v9

    :cond_3
    :try_start_5
    new-instance v1, Lcom/duoku/platform/single/k/a;

    invoke-direct {v1, v2}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;)V

    iget-object v3, v1, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/duoku/platform/single/k/a;->c:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, v1, Lcom/duoku/platform/single/k/a;->c:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v8, :cond_7

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :cond_9
    move-object v2, v8

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->close()V

    return-void
.end method

.method public declared-synchronized c()Lcom/duoku/platform/single/k/a;
    .locals 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "amount"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isvalid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "valid_start"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "valid_end"

    aput-object v4, v2, v3

    const-string v3, ""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "isvalid =\'1\'"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "operator="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/duoku/platform/single/util/a;->e:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v8

    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_6
    new-instance v8, Lcom/duoku/platform/single/k/a;

    invoke-direct {v8, v2}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_3

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v8, :cond_5

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :cond_7
    move-object v1, v8

    goto :goto_1

    :cond_8
    move-object v2, v8

    move-object v1, v8

    goto :goto_1
.end method

.method public declared-synchronized d()Lcom/duoku/platform/single/k/a;
    .locals 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operator"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "amount"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isvalid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "valid_start"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "valid_end"

    aput-object v4, v2, v3

    const-string v3, "channel=\'yeepay\'"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v8

    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_6
    new-instance v8, Lcom/duoku/platform/single/k/a;

    invoke-direct {v8, v2}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_3

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v8, :cond_5

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v8, v0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :cond_7
    move-object v1, v8

    goto :goto_1

    :cond_8
    move-object v2, v8

    move-object v1, v8

    goto :goto_1
.end method

.method public declared-synchronized e()Lcom/duoku/platform/single/k/a;
    .locals 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/i;->a:Lcom/duoku/platform/single/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/single/e/i;->d:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operator"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "amount"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isvalid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "valid_start"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "valid_end"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isvalid =\'1\' and operator=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->PHONE_MNC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v8

    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_6
    new-instance v8, Lcom/duoku/platform/single/k/a;

    invoke-direct {v8, v2}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v1, v8, Lcom/duoku/platform/single/k/a;->c:Ljava/lang/String;

    const-string v3, "cm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/duoku/platform/single/k/a;->a:Ljava/lang/String;

    const-string v3, "hfb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v8

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_4

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v8, :cond_6

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/i;->b()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v9, v0

    move-object v0, v8

    move-object v8, v9

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v8, v0

    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v1, v8

    goto :goto_1

    :cond_9
    move-object v2, v8

    move-object v1, v8

    goto :goto_1
.end method
