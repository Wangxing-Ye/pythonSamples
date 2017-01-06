.class public Lcom/cynosure/paymentsdk/helper/SQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLHelper.java"


# static fields
.field private static final dbName:Ljava/lang/String; = "sdk.db"

.field private static final dbVersion:I = 0x1

.field private static volatile instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;->instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "sdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/cynosure/paymentsdk/helper/SQLHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v1, Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;->instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    if-nez v0, :cond_1

    .line 27
    const-class v2, Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    sget-object v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;->instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-direct {v0, p0}, Lcom/cynosure/paymentsdk/helper/SQLHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;->instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    .line 27
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_1
    :try_start_2
    sget-object v0, Lcom/cynosure/paymentsdk/helper/SQLHelper;->instance:Lcom/cynosure/paymentsdk/helper/SQLHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string v2, "CREATE TABLE IF NOT EXISTS DeviceInfoKeyValue(DeviceInfo_ID integer PRIMARY KEY AUTOINCREMENT,DeviceInfoKey varchar(100) NOT NULL DEFAULT \'\',DeviceInfoValue varchar(100) NOT NULL DEFAULT \'\',InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 47
    .local v2, "createTableSQL_DeviceInfo":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v3, "CREATE TABLE IF NOT EXISTS Log(Log_ID integer PRIMARY KEY AUTOINCREMENT,LogType varchar(50) NOT NULL DEFAULT \'\',LogContent varchar(1000) NOT NULL DEFAULT \'\',InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 58
    .local v3, "createTableSQL_Log":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v5, "CREATE TABLE IF NOT EXISTS Task(Task_ID integer PRIMARY KEY AUTOINCREMENT,TaskType integer NOT NULL DEFAULT 0,Column_ID integer NOT NULL DEFAULT 0,Exdata varchar(50) NOT NULL DEFAULT \'\',GetRecount integer NOT NULL DEFAULT 0,GetTimeout timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')),DoRecount integer NOT NULL DEFAULT 0,DoTimeout timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')),ChargeMode integer NOT NULL DEFAULT 0,ChargePointSMS_ID integer NOT NULL DEFAULT 0,Docount integer NOT NULL DEFAULT 0,Script varchar(5000) NOT NULL DEFAULT \'\',OnceCode varchar(50) NOT NULL DEFAULT \'\',Step integer NOT NULL DEFAULT 0,IsFinish integer NOT NULL DEFAULT 0,InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 80
    .local v5, "createTableSQL_Task":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v1, "CREATE TABLE IF NOT EXISTS Block(Block_ID integer PRIMARY KEY AUTOINCREMENT,BlockNumber varchar(500) NOT NULL DEFAULT \'\',BlockContent varchar(500) NOT NULL DEFAULT \'\',BlockTimeout timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')),IsNeedReply integer NOT NULL DEFAULT 0,ReplyInfo varchar(500) NOT NULL DEFAULT \'\',ReplyTimeout timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')),InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 94
    .local v1, "createTableSQL_Block":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "CREATE TABLE IF NOT EXISTS BillingResult(BillingResult_ID integer PRIMARY KEY AUTOINCREMENT,Column_ID varchar(500) NOT NULL DEFAULT \'\',Exdata varchar(50) NOT NULL DEFAULT \'\',BillingResult integer NOT NULL DEFAULT 0,InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 106
    .local v0, "createTableSQL_BillingResult":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v4, "CREATE TABLE IF NOT EXISTS PushContent(PushContent_ID integer PRIMARY KEY AUTOINCREMENT,PushContentType integer NOT NULL DEFAULT 0,Script varchar(2000) NOT NULL DEFAULT \'\',InputDate timestamp NOT NULL DEFAULT (datetime(\'now\',\'localtime\')));"

    .line 116
    .local v4, "createTableSQL_PushContent":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 123
    return-void
.end method
