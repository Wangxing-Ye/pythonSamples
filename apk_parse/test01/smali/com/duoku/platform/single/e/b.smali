.class public Lcom/duoku/platform/single/e/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "versioncode"

.field public static final b:Ljava/lang/String; = "id"

.field public static final c:Ljava/lang/String; = "cardname"

.field public static final d:Ljava/lang/String; = "price"

.field public static final e:Ljava/lang/String; = "time_stamp"

.field private static h:Lcom/duoku/platform/single/e/b;


# instance fields
.field f:Lcom/duoku/platform/single/e/c;

.field public g:I

.field private i:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/e/b;->i:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/e/b;->g:I

    iput-object p1, p0, Lcom/duoku/platform/single/e/b;->i:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/single/e/b;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/e/b;->h:Lcom/duoku/platform/single/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/e/b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/e/b;->h:Lcom/duoku/platform/single/e/b;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/e/b;->h:Lcom/duoku/platform/single/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/b;->f:Lcom/duoku/platform/single/e/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

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
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "insert into gamecard_list (\'versioncode\',\'id\',\'cardname\',\'price\',\'time_stamp\') values (?,?,?,?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v0, 0x1

    int-to-long v3, p2

    invoke-static {v2, v0, v3, v4}, Lcom/duoku/platform/single/util/b;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

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

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/b;->f:Lcom/duoku/platform/single/e/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string v1, "gamecard_list"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "versioncode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cardname"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "price =\'all\' or price =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

    :goto_2
    return-object v9

    :cond_3
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "versioncode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/duoku/platform/single/e/b;->g:I

    const-string v3, "id"

    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cardname"

    const-string v4, "cardname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->b()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

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

    :cond_8
    move-object v2, v8

    goto :goto_1
.end method

.method public a()V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/e/c;

    iget-object v1, p0, Lcom/duoku/platform/single/e/b;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/e/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/e/b;->f:Lcom/duoku/platform/single/e/c;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/a/c;)V
    .locals 12

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/e/b;->d()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/e/b;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/b;->f:Lcom/duoku/platform/single/e/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v9, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v8, v7

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v8, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/h/a/c;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/duoku/platform/single/h/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v6, v7

    :goto_2
    array-length v0, v11

    if-lt v6, v0, :cond_1

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/c;->b()I

    move-result v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v5, v11, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/b;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/c;->b()I

    move-result v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/e/b;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/e/b;->f:Lcom/duoku/platform/single/e/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/c;->close()V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/e/b;->g:I

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/e/b;->a(Ljava/lang/String;)Ljava/util/List;

    :cond_0
    iget v0, p0, Lcom/duoku/platform/single/e/b;->g:I

    return v0
.end method
