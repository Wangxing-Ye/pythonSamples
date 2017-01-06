.class public Lcom/duoku/platform/single/e/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:Ljava/lang/String; = "dk_charge.db"

.field public static final b:Ljava/lang/String; = "gamecard_list"

.field public static final c:Ljava/lang/String; = "insert into gamecard_list (\'versioncode\',\'id\',\'cardname\',\'price\',\'time_stamp\') values (?,?,?,?,?);"


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dk_charge.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS gamecard_list (\'_id\' INTEGER  PRIMARY KEY AUTOINCREMENT NOT NULL,\'versioncode\' INTEGER,\'id\' TEXT  NOT NULL,\'cardname\' TEXT NOT NULL,\'price\' TEXT NOT NULL,\'time_stamp\' TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
