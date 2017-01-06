.class public Lcom/duoku/platform/single/e/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/duoku/platform/single/e/f; = null

.field private static final e:Ljava/lang/String; = "insert into game_props (\'propsid\',\'price\',\'operator\',\'channel\',\'code\', \'dest\') values (?, ?, ?, ?, ?, ?);"


# instance fields
.field private a:Lcom/duoku/platform/single/e/e;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/e/f;->c:Landroid/content/Context;

    const-string v0, "game_props"

    iput-object v0, p0, Lcom/duoku/platform/single/e/f;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoku/platform/single/e/f;->c:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/item/h;)J
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "insert into game_props (\'propsid\',\'price\',\'operator\',\'channel\',\'code\', \'dest\') values (?, ?, ?, ?, ?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/h;->e()Ljava/lang/String;

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

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/single/e/f;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/e/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/e/f;->b:Lcom/duoku/platform/single/e/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/e/f;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/e/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/e/f;->b:Lcom/duoku/platform/single/e/f;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/e/f;->b:Lcom/duoku/platform/single/e/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/single/item/h;
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/f;->a:Lcom/duoku/platform/single/e/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_2
    const-string v0, "select propsid, price, channel, code, dest from game_props where propsid = ? and price = ? and operator = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const/4 v4, 0x2

    aput-object p3, v1, v4

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Lcom/duoku/platform/single/item/h;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/h;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v4, p1}, Lcom/duoku/platform/single/item/h;->a(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/duoku/platform/single/item/h;->b(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Lcom/duoku/platform/single/item/h;->f(Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/duoku/platform/single/item/h;->c(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/duoku/platform/single/item/h;->d(Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/duoku/platform/single/item/h;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v0, v2

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_2

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_4

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_0

    :cond_7
    move-object v1, v2

    move-object v0, v2

    goto :goto_0
.end method

.method public a()V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/e/e;

    iget-object v1, p0, Lcom/duoku/platform/single/e/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/e/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/e/f;->a:Lcom/duoku/platform/single/e/e;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/h;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/f;->a:Lcom/duoku/platform/single/e/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/duoku/platform/single/e/f;->d:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/h;

    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/single/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/duoku/platform/single/item/h;)J
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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/f;->b()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/e/f;->a:Lcom/duoku/platform/single/e/e;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/e;->close()V

    return-void
.end method
