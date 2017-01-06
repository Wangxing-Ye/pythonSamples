.class public Lcom/duoku/platform/single/e/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "dk_props.db"

.field private static final b:Ljava/lang/String; = "game_props"

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dk_props.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CREATE TABLE IF NOT EXISTS game_props (\'_id\' INTEGER  PRIMARY KEY AUTOINCREMENT NOT NULL,\'propsid\' TEXT  NOT NULL,\'price\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'channel\' TEXT NOT NULL,\'code\' TEXT NOT NULL,\'dest\' TEXT NOT NULL);"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->e:Ljava/lang/String;

    const-string v0, "ALTER TABLE game_props ADD COLUMN channel TEXT DEFAULT \'mdo_cp\'"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->f:Ljava/lang/String;

    const-string v0, "ALTER TABLE game_props ADD COLUMN operator TEXT DEFAULT \'cm\'"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "CREATE TABLE IF NOT EXISTS game_props (\'_id\' INTEGER  PRIMARY KEY AUTOINCREMENT NOT NULL,\'propsid\' TEXT  NOT NULL,\'price\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'channel\' TEXT NOT NULL,\'code\' TEXT NOT NULL,\'dest\' TEXT NOT NULL);"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->e:Ljava/lang/String;

    const-string v0, "ALTER TABLE game_props ADD COLUMN channel TEXT DEFAULT \'mdo_cp\'"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->f:Ljava/lang/String;

    const-string v0, "ALTER TABLE game_props ADD COLUMN operator TEXT DEFAULT \'cm\'"

    iput-object v0, p0, Lcom/duoku/platform/single/e/e;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS game_props"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Error creating tables"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "SELECT * FROM game_props LIMIT 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "channel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/e/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v1, "operator"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/e/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Error upgrade tables"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Error creating tables"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-le p2, p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-le v0, p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/e/e;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
