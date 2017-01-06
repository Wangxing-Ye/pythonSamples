.class public Lcom/sns/game/database/DBOperation;
.super Ljava/lang/Object;
.source "DBOperation.java"


# static fields
.field private static final DATABASE_ASSETS_PATH:Ljava/lang/String; = "data/data.zip"

.field private static final DATABASE_NAME:Ljava/lang/String; = "pvzk.db"

.field private static final DATABASE_STORAGE_PATH:Ljava/lang/String; = "/data/com.cynos.zwdzjsw2.baidu/databases"

.field private static dbOperation:Lcom/sns/game/database/DBOperation;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sns/game/database/DbHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private closeStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private closeStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/sns/game/database/DBOperation;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sns/game/database/DBOperation;->dbOperation:Lcom/sns/game/database/DBOperation;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sns/game/database/DBOperation;

    invoke-direct {v0}, Lcom/sns/game/database/DBOperation;-><init>()V

    sput-object v0, Lcom/sns/game/database/DBOperation;->dbOperation:Lcom/sns/game/database/DBOperation;

    .line 44
    :cond_0
    sget-object v0, Lcom/sns/game/database/DBOperation;->dbOperation:Lcom/sns/game/database/DBOperation;

    return-object v0
.end method

.method private writeDbZip(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "zipPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, "inStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 89
    .local v5, "foStream":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 90
    .local v8, "zipInStream":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 91
    .local v2, "dInStream":Ljava/io/DataInputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 93
    .local v0, "buffer":[B
    :try_start_0
    iget-object v11, p0, Lcom/sns/game/database/DBOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 95
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .local v9, "zipInStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 97
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .end local v2    # "dInStream":Ljava/io/DataInputStream;
    .local v3, "dInStream":Ljava/io/DataInputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    .end local v5    # "foStream":Ljava/io/FileOutputStream;
    .local v6, "foStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 100
    .local v1, "count":I
    :goto_0
    :try_start_3
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    .line 103
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    invoke-direct {p0, v7}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 110
    invoke-direct {p0, v6}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/OutputStream;)V

    .line 111
    invoke-direct {p0, v9}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 112
    invoke-direct {p0, v3}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 104
    const/4 v10, 0x1

    move-object v2, v3

    .end local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v2    # "dInStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    move-object v5, v6

    .line 107
    .end local v1    # "count":I
    .end local v6    # "foStream":Ljava/io/FileOutputStream;
    .restart local v5    # "foStream":Ljava/io/FileOutputStream;
    :goto_1
    return v10

    .line 101
    .end local v2    # "dInStream":Ljava/io/DataInputStream;
    .end local v5    # "foStream":Ljava/io/FileOutputStream;
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "count":I
    .restart local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v6    # "foStream":Ljava/io/FileOutputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :cond_0
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 105
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v2    # "dInStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    move-object v5, v6

    .line 106
    .end local v1    # "count":I
    .end local v6    # "foStream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "foStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    invoke-direct {p0, v7}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 110
    invoke-direct {p0, v5}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/OutputStream;)V

    .line 111
    invoke-direct {p0, v8}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 112
    invoke-direct {p0, v2}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 108
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 109
    :goto_3
    invoke-direct {p0, v7}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 110
    invoke-direct {p0, v5}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/OutputStream;)V

    .line 111
    invoke-direct {p0, v8}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 112
    invoke-direct {p0, v2}, Lcom/sns/game/database/DBOperation;->closeStream(Ljava/io/InputStream;)V

    .line 113
    throw v10

    .line 108
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v2    # "dInStream":Ljava/io/DataInputStream;
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v2    # "dInStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v2    # "dInStream":Ljava/io/DataInputStream;
    .end local v5    # "foStream":Ljava/io/FileOutputStream;
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "count":I
    .restart local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v6    # "foStream":Ljava/io/FileOutputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v10

    move-object v2, v3

    .end local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v2    # "dInStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    move-object v5, v6

    .end local v6    # "foStream":Ljava/io/FileOutputStream;
    .restart local v5    # "foStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 105
    .end local v1    # "count":I
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v4

    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .end local v2    # "dInStream":Ljava/io/DataInputStream;
    .end local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "dInStream":Ljava/io/DataInputStream;
    .restart local v2    # "dInStream":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "zipInStream":Ljava/util/zip/ZipInputStream;
    .restart local v8    # "zipInStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized closeDataBase()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createDatabases(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "bool":Z
    const/4 v1, 0x0

    .line 54
    .local v1, "dbFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 60
    .local v3, "dirFile":Ljava/io/File;
    :try_start_0
    iput-object p1, p0, Lcom/sns/game/database/DBOperation;->mContext:Landroid/content/Context;

    .line 61
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/com.cynos.zwdzjsw2.baidu/databases"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3    # "dirFile":Ljava/io/File;
    .local v4, "dirFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 66
    const-string v7, "/data/com.cynos.zwdzjsw2.baidu/databases"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pvzk.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .end local v1    # "dbFile":Ljava/io/File;
    .local v2, "dbFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    const-string v6, "data/data.zip"

    invoke-direct {p0, v2, v6}, Lcom/sns/game/database/DBOperation;->writeDbZip(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v6, v0

    :goto_0
    move-object v3, v4

    .end local v4    # "dirFile":Ljava/io/File;
    .restart local v3    # "dirFile":Ljava/io/File;
    move-object v1, v2

    .line 76
    .end local v2    # "dbFile":Ljava/io/File;
    .restart local v1    # "dbFile":Ljava/io/File;
    :goto_1
    return v6

    .line 70
    .end local v1    # "dbFile":Ljava/io/File;
    .end local v3    # "dirFile":Ljava/io/File;
    .restart local v2    # "dbFile":Ljava/io/File;
    .restart local v4    # "dirFile":Ljava/io/File;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v4    # "dirFile":Ljava/io/File;
    .restart local v1    # "dbFile":Ljava/io/File;
    .restart local v3    # "dirFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 73
    invoke-static {v5}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 74
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sns/game/util/CCGameLog;->CCERRPRINTLN(Ljava/lang/String;)V

    move v6, v0

    .line 76
    goto :goto_1

    .line 71
    .end local v3    # "dirFile":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "dirFile":Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "dirFile":Ljava/io/File;
    .restart local v3    # "dirFile":Ljava/io/File;
    goto :goto_2

    .end local v1    # "dbFile":Ljava/io/File;
    .end local v3    # "dirFile":Ljava/io/File;
    .restart local v2    # "dbFile":Ljava/io/File;
    .restart local v4    # "dirFile":Ljava/io/File;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "dirFile":Ljava/io/File;
    .restart local v3    # "dirFile":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "dbFile":Ljava/io/File;
    .restart local v1    # "dbFile":Ljava/io/File;
    goto :goto_2
.end method

.method public getDbHelper()Lcom/sns/game/database/DbHelper;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sns/game/database/DBOperation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sns/game/database/DBOperation;->mDbHelper:Lcom/sns/game/database/DbHelper;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/sns/game/database/DbHelper;

    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->mContext:Landroid/content/Context;

    const-string v2, "pvzk.db"

    invoke-direct {v0, v1, v2}, Lcom/sns/game/database/DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sns/game/database/DBOperation;->mDbHelper:Lcom/sns/game/database/DbHelper;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sns/game/database/DBOperation;->mDbHelper:Lcom/sns/game/database/DbHelper;

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/sns/game/database/DBOperation;->getDbHelper()Lcom/sns/game/database/DbHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sns/game/database/DBOperation;->openDataBase()V

    .line 145
    iget-object v0, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openDataBase()V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/sns/game/database/DBOperation;->getDbHelper()Lcom/sns/game/database/DbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sns/game/database/DBOperation;->getDbHelper()Lcom/sns/game/database/DbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/sns/game/database/DBOperation;->mContext:Landroid/content/Context;

    .line 186
    iput-object v0, p0, Lcom/sns/game/database/DBOperation;->mDbHelper:Lcom/sns/game/database/DbHelper;

    .line 187
    iput-object v0, p0, Lcom/sns/game/database/DBOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    return-void
.end method
