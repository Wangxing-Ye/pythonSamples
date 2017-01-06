.class public Lcom/duoku/platform/single/e/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:Ljava/lang/String; = "dk_order.db"

.field public static final b:Ljava/lang/String; = "dk_user"

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final t:Ljava/lang/String; = "create table if not exists dk_user (_id INTEGER PRIMARY KEY,userid TEXT,username TEXT,sessionid TEXT,phonenumber TEXT,kubi TEXT,registtype INTEGER,logouttime DOUBLE,userstate INTEGER,logintype INTEGER,d1 TEXT,d2 TEXT,d3 TEXT,loginmarktime DOUBLE,nickname TEXT,accounttype INTEGER)"


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dk_order.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "order_info"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->h:Ljava/lang/String;

    const-string v0, "game_online_info"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->i:Ljava/lang/String;

    const-string v0, "pay_number_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->j:Ljava/lang/String;

    const-string v0, "pay_money_sim_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->k:Ljava/lang/String;

    const-string v0, "pay_money_udid_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->l:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS order_info (\'_id\' INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,\'orderid\' VARCHAR(30)  UNIQUE NOT NULL,\'channel\' VARCHAR(10)  ,\'price\' VARCHAR(10)  ,\'itemid\' VARCHAR(50)  NULL,\'itemname\' VARCHAR(255) NULL,\'status\' VARCHAR(20) NOT NULL,\'desc\' TEXT NULL,\'order_time\' VARCHAR(20)  ,\'create_time\' VARCHAR(20)  NULL,\'modify_time\' VARCHAR(20)  NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->m:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS game_online_info (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, \'date\' TEXT NOT NULL, \'duration\' TEXT, \'version\' TEXT,\'upload_status\' TEXT)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->n:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_number_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'pay_channel\' TEXT NOT NULL,\'pay_number\' TEXT NOT NULL,\'billing_item\' TEXT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->o:Ljava/lang/String;

    const-string v0, "ALTER TABLE pay_number_day ADD COLUMN billing_item TEXT NULL"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->p:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_money_sim_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'phone\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'pay_channel\' TEXT NOT NULL,\'pay_money\' TEXT NOT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->q:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_money_udid_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'udid\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'channel\' TEXT NULL,\'pay_money\' TEXT NOT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->r:Ljava/lang/String;

    const-string v0, "ALTER TABLE pay_money_udid_day ADD COLUMN channel TEXT NULL"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "order_info"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->h:Ljava/lang/String;

    const-string v0, "game_online_info"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->i:Ljava/lang/String;

    const-string v0, "pay_number_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->j:Ljava/lang/String;

    const-string v0, "pay_money_sim_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->k:Ljava/lang/String;

    const-string v0, "pay_money_udid_day"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->l:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS order_info (\'_id\' INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,\'orderid\' VARCHAR(30)  UNIQUE NOT NULL,\'channel\' VARCHAR(10)  ,\'price\' VARCHAR(10)  ,\'itemid\' VARCHAR(50)  NULL,\'itemname\' VARCHAR(255) NULL,\'status\' VARCHAR(20) NOT NULL,\'desc\' TEXT NULL,\'order_time\' VARCHAR(20)  ,\'create_time\' VARCHAR(20)  NULL,\'modify_time\' VARCHAR(20)  NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->m:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS game_online_info (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, \'date\' TEXT NOT NULL, \'duration\' TEXT, \'version\' TEXT,\'upload_status\' TEXT)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->n:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_number_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'pay_channel\' TEXT NOT NULL,\'pay_number\' TEXT NOT NULL,\'billing_item\' TEXT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->o:Ljava/lang/String;

    const-string v0, "ALTER TABLE pay_number_day ADD COLUMN billing_item TEXT NULL"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->p:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_money_sim_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'phone\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'pay_channel\' TEXT NOT NULL,\'pay_money\' TEXT NOT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->q:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS pay_money_udid_day (\'_id\' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,\'date\' TEXT NOT NULL,\'udid\' TEXT NOT NULL,\'operator\' TEXT NOT NULL,\'channel\' TEXT NULL,\'pay_money\' TEXT NOT NULL)"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->r:Ljava/lang/String;

    const-string v0, "ALTER TABLE pay_money_udid_day ADD COLUMN channel TEXT NULL"

    iput-object v0, p0, Lcom/duoku/platform/single/e/d;->s:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS game_online_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS order_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->n:Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/duoku/platform/single/e/d;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS pay_number_day"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->o:Ljava/lang/String;

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

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS pay_money_sim_day"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS pay_money_udid_day"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->r:Ljava/lang/String;

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

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists dk_user (_id INTEGER PRIMARY KEY,userid TEXT,username TEXT,sessionid TEXT,phonenumber TEXT,kubi TEXT,registtype INTEGER,logouttime DOUBLE,userstate INTEGER,logintype INTEGER,d1 TEXT,d2 TEXT,d3 TEXT,loginmarktime DOUBLE,nickname TEXT,accounttype INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT * FROM pay_number_day LIMIT 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "billing_item"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/e/d;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
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

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "SELECT * FROM pay_money_udid_day LIMIT 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/e/d;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
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
    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/e/d;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists dk_user (_id INTEGER PRIMARY KEY,userid TEXT,username TEXT,sessionid TEXT,phonenumber TEXT,kubi TEXT,registtype INTEGER,logouttime DOUBLE,userstate INTEGER,logintype INTEGER,d1 TEXT,d2 TEXT,d3 TEXT,loginmarktime DOUBLE,nickname TEXT,accounttype INTEGER)"

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
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/e/d;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
