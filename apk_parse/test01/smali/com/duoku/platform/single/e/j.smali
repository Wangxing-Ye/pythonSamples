.class public Lcom/duoku/platform/single/e/j;
.super Ljava/lang/Object;


# static fields
.field public static b:Ljava/lang/String;

.field private static c:Lcom/duoku/platform/single/e/j;


# instance fields
.field a:Lcom/duoku/platform/single/e/g;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/e/j;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/duoku/platform/single/e/j;->d:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "insert into thirdpay_support (\'versioncode\',\'yeepaylist\',\'channelname\',\'issupport\',\'time_stamp\') values (?,?,?,?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v2, v0, p2}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v2, v0, p3}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v2, v0, p4}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v2, v0, p5}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/e/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/e/j;->c:Lcom/duoku/platform/single/e/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/e/j;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/e/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/e/j;->c:Lcom/duoku/platform/single/e/j;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/e/j;->c:Lcom/duoku/platform/single/e/j;
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
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "thirdpay_support"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/e/g;

    iget-object v1, p0, Lcom/duoku/platform/single/e/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/duoku/platform/single/e/j;->f()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    sget-object p3, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    move-object v2, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "yeepay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v5, "1"

    :goto_3
    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/e/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_6
    const-string v5, "0"

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v5, "1"

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/e/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    :try_start_8
    const-string v5, "0"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :cond_c
    move-object v2, p3

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/g;->close()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->e()Lcom/duoku/platform/single/k/a;

    sget-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/e/k;->a:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_2
    const-string v1, "thirdpay_support"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "channelname"

    aput-object v4, v2, v3

    const-string v3, "issupport=\'0\'"

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

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v9

    :cond_3
    :try_start_5
    aget-object v3, v1, v0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_6

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v8, :cond_8

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_4

    :cond_a
    move-object v2, v8

    goto :goto_2
.end method

.method public declared-synchronized e()Lcom/duoku/platform/single/k/a;
    .locals 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/e/j;->a:Lcom/duoku/platform/single/e/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_2
    const-string v1, "thirdpay_support"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "yeepaylist"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "versioncode"

    aput-object v4, v2, v3

    const-string v3, "channelname=\'yeepay\'"

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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v1, 0x1

    :try_start_6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/duoku/platform/single/e/j;->b:Ljava/lang/String;

    new-instance v8, Lcom/duoku/platform/single/k/a;

    const/4 v1, 0x1

    invoke-direct {v8, v2, v1}, Lcom/duoku/platform/single/k/a;-><init>(Landroid/database/Cursor;Z)V
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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V
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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/j;->b()V

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
