.class public Lcom/cynosure/paymentsdk/helper/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# instance fields
.field private _sqlDB:Landroid/database/sqlite/SQLiteDatabase;

.field private _sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getInstance(Landroid/content/Context;)Lcom/cynosure/paymentsdk/helper/SQLHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    .line 27
    iget-object v0, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    return-void
.end method

.method private execSQL([Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "sql"    # [Ljava/lang/String;
    .param p2, "isNeedSaveErrLog"    # Z

    .prologue
    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 52
    const/4 v2, 0x1

    return v2

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v2}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :try_start_2
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    iget-object v2, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 46
    :catchall_1
    move-exception v2

    .line 47
    :try_start_5
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 49
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private getDeviceInfo(Ljava/lang/String;)Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .locals 9
    .param p1, "deviceInfoKey"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    const-string v4, ""

    .line 108
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    :cond_0
    const-string v5, "SELECT * FROM DeviceInfoKeyValue WHERE DeviceInfoKey = \'%s\' LIMIT 0,1;"

    .line 114
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 113
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 115
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v2

    .line 118
    .end local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .local v3, "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 130
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 108
    .end local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    return-object v2

    .line 119
    .end local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :cond_1
    :try_start_4
    new-instance v2, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    .end local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :try_start_5
    const-string v5, "DeviceInfoKey"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->setDeviceInfoKey(Ljava/lang/String;)V

    .line 122
    const-string v5, "DeviceInfoValue"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->setDeviceInfoValue(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v2

    .end local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 127
    .end local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 130
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 108
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 129
    .end local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .line 130
    .end local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 108
    .end local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    .restart local v2    # "keyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    goto :goto_3

    .line 129
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 125
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getPushContent(Ljava/lang/String;)Lcom/cynosure/paymentsdk/vo/PushContent;
    .locals 8
    .param p1, "SQL"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    const-string v4, ""

    .line 456
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 457
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 460
    :cond_0
    move-object v4, p1

    .line 461
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v2

    .line 463
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .local v3, "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 476
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 456
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    return-object v2

    .line 464
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :cond_1
    :try_start_4
    new-instance v2, Lcom/cynosure/paymentsdk/vo/PushContent;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/vo/PushContent;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :try_start_5
    const-string v5, "PushContent_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/PushContent;->setPushContent_ID(Ljava/lang/String;)V

    .line 467
    const-string v5, "PushContentType"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/PushContent;->setPushContentType(Ljava/lang/String;)V

    .line 468
    const-string v5, "Script"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/PushContent;->setScript(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v2

    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 473
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 476
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 456
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 475
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .line 476
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 477
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 456
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/PushContent;
    goto :goto_3

    .line 475
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 471
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private updateDeviceInfoKeyValue(Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;)Z
    .locals 7
    .param p1, "keyValue"    # Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DELETE FROM DeviceInfoKeyValue WHERE DeviceInfoKey = \'%s\';"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->getDeviceInfoKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "INSERT INTO DeviceInfoKeyValue(DeviceInfoKey,DeviceInfoValue) VALUES(\'%s\',\'%s\');"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->getDeviceInfoKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->getDeviceInfoValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "taskType"    # Ljava/lang/String;
    .param p2, "column_id"    # Ljava/lang/String;
    .param p3, "exdata"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 177
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "INSERT INTO Task(TaskType,Column_ID,Exdata) VALUES(\'%s\',\'%s\',\'%s\');"

    .line 178
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 177
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteAllConfig()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DELETE FROM DeviceInfoKeyValue ;"

    aput-object v2, v0, v1

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteBillingResult(Ljava/lang/String;)Z
    .locals 5
    .param p1, "billingResultID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 436
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DELETE FROM BillingResult WHERE BillingResult_ID = \'%s\';"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deletePushContent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pushContentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 484
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DELETE FROM PushContent WHERE PushContentType = \'%s\';"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteSDKLog(Ljava/lang/String;)Z
    .locals 5
    .param p1, "logID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 173
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DELETE FROM Log WHERE Log_ID = \'%s\';"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBillingResult()Lcom/cynosure/paymentsdk/vo/BillingResult;
    .locals 8

    .prologue
    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    const-string v4, ""

    .line 407
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 408
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 411
    :cond_0
    const-string v5, "SELECT * FROM BillingResult ORDER BY BillingResult_ID LIMIT 0,1;"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v2

    .line 414
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .local v3, "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 428
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 407
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    return-object v2

    .line 415
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :cond_1
    :try_start_4
    new-instance v2, Lcom/cynosure/paymentsdk/vo/BillingResult;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/vo/BillingResult;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :try_start_5
    const-string v5, "BillingResult_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/BillingResult;->setBillingResult_ID(Ljava/lang/String;)V

    .line 418
    const-string v5, "Column_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/BillingResult;->setColumn_ID(Ljava/lang/String;)V

    .line 419
    const-string v5, "Exdata"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/BillingResult;->setExdata(Ljava/lang/String;)V

    .line 420
    const-string v5, "BillingResult"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/BillingResult;->setBillingResult(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v2

    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 425
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 428
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 407
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 427
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .line 428
    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 429
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 407
    .end local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    .restart local v2    # "result":Lcom/cynosure/paymentsdk/vo/BillingResult;
    goto :goto_3

    .line 427
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 423
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public getBlockInfo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cynosure/paymentsdk/vo/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    const-string v5, ""

    .line 316
    .local v5, "sql":Ljava/lang/String;
    iget-object v7, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v7

    .line 317
    :try_start_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    :cond_0
    const-string v6, "SELECT MAX(Block_ID) AS Block_ID,BlockNumber,BlockContent,MAX(BlockTimeout) AS BlockTimeout,IsNeedReply,ReplyInfo,MAX(ReplyTimeout) AS ReplyTimeout FROM Block WHERE BlockTimeout > datetime(\'now\',\'localtime\') GROUP BY BlockNumber,BlockContent,IsNeedReply,ReplyInfo;"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 324
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 326
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .local v2, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    move-object v1, v2

    .line 329
    .end local v2    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .restart local v1    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_2

    .line 348
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 316
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    return-object v1

    .line 330
    :cond_2
    :try_start_3
    new-instance v0, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/Block;-><init>()V

    .line 332
    .local v0, "block":Lcom/cynosure/paymentsdk/vo/Block;
    const-string v6, "Block_ID"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlock_ID(Ljava/lang/String;)V

    .line 333
    const-string v6, "BlockNumber"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockNumber(Ljava/lang/String;)V

    .line 334
    const-string v6, "BlockContent"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockContent(Ljava/lang/String;)V

    .line 335
    const-string v6, "BlockTimeout"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockTimeout(Ljava/lang/String;)V

    .line 336
    const-string v6, "IsNeedReply"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setIsNeedReply(Ljava/lang/String;)V

    .line 337
    const-string v6, "ReplyInfo"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyInfo(Ljava/lang/String;)V

    .line 338
    const-string v6, "ReplyTimeout"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyTimeout(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 343
    .end local v0    # "block":Lcom/cynosure/paymentsdk/vo/Block;
    :catch_0
    move-exception v4

    .line 345
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 316
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 347
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    .line 348
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 349
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfo(Ljava/lang/String;)Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;

    move-result-object v0

    .line 91
    .local v0, "tempKeyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->getDeviceInfoValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->getDeviceInfoValue()Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 96
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "tempValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    move-object v0, p2

    .line 84
    :cond_0
    return-object v0
.end method

.method public getLastPurchase()Lcom/cynosure/paymentsdk/vo/Task;
    .locals 8

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "task":Lcom/cynosure/paymentsdk/vo/Task;
    const-string v2, ""

    .line 186
    .local v2, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    :cond_0
    const-string v5, "SELECT * FROM Task WHERE Script = \'\' AND OnceCode = \'\' AND IsFinish = 0 AND GetTimeout < datetime(\'now\',\'localtime\') ORDER BY Task_ID DESC LIMIT 0,1;"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v4, v3

    .line 196
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .local v4, "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 220
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    .line 186
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    return-object v3

    .line 197
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_1
    :try_start_4
    new-instance v3, Lcom/cynosure/paymentsdk/vo/Task;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/vo/Task;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 199
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :try_start_5
    const-string v5, "Task_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setTask_ID(Ljava/lang/String;)V

    .line 200
    const-string v5, "TaskType"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setTaskType(Ljava/lang/String;)V

    .line 201
    const-string v5, "Column_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setColumn_ID(Ljava/lang/String;)V

    .line 202
    const-string v5, "Exdata"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setExdata(Ljava/lang/String;)V

    .line 203
    const-string v5, "GetRecount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setGetRecount(Ljava/lang/String;)V

    .line 204
    const-string v5, "DoRecount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setDoRecount(Ljava/lang/String;)V

    .line 205
    const-string v5, "ChargeMode"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setChargeMode(Ljava/lang/String;)V

    .line 206
    const-string v5, "ChargePointSMS_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setChargePointSMS_ID(Ljava/lang/String;)V

    .line 207
    const-string v5, "Docount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setDoCount(Ljava/lang/String;)V

    .line 208
    const-string v5, "Script"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setScript(Ljava/lang/String;)V

    .line 209
    const-string v5, "OnceCode"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setOnceCode(Ljava/lang/String;)V

    .line 210
    const-string v5, "Step"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setStep(Ljava/lang/String;)V

    .line 211
    const-string v5, "IsFinish"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setIsFinish(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v4, v3

    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 217
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 220
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 186
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 219
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .line 220
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    goto :goto_3

    .line 219
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 215
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public getLastUpdatePushContent()Lcom/cynosure/paymentsdk/vo/PushContent;
    .locals 3

    .prologue
    .line 444
    const-string v1, "SELECT * FROM PushContent ORDER BY InputDate DESC LIMIT 0,1;"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getPushContent(Ljava/lang/String;)Lcom/cynosure/paymentsdk/vo/PushContent;

    move-result-object v1

    return-object v1
.end method

.method public getRandomPushContent()Lcom/cynosure/paymentsdk/vo/PushContent;
    .locals 3

    .prologue
    .line 449
    const-string v1, "SELECT * FROM PushContent ORDER BY RANDOM() DESC LIMIT 0,1;"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getPushContent(Ljava/lang/String;)Lcom/cynosure/paymentsdk/vo/PushContent;

    move-result-object v1

    return-object v1
.end method

.method public getReplyInfo()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cynosure/paymentsdk/vo/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    const-string v5, ""

    .line 359
    .local v5, "sql":Ljava/lang/String;
    iget-object v7, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v7

    .line 360
    :try_start_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 361
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 363
    :cond_0
    const-string v6, "SELECT MAX(Block_ID) AS Block_ID,BlockNumber,BlockContent,MAX(BlockTimeout) AS BlockTimeout,IsNeedReply,ReplyInfo,MAX(ReplyTimeout) AS ReplyTimeout FROM Block WHERE IsNeedReply = 1 AND ReplyTimeout > datetime(\'now\',\'localtime\') GROUP BY BlockNumber,BlockContent,IsNeedReply,ReplyInfo;"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 368
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 370
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .local v2, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    move-object v1, v2

    .line 373
    .end local v2    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .restart local v1    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_2

    .line 392
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 359
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    return-object v1

    .line 374
    :cond_2
    :try_start_3
    new-instance v0, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/Block;-><init>()V

    .line 376
    .local v0, "block":Lcom/cynosure/paymentsdk/vo/Block;
    const-string v6, "Block_ID"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlock_ID(Ljava/lang/String;)V

    .line 377
    const-string v6, "BlockNumber"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockNumber(Ljava/lang/String;)V

    .line 378
    const-string v6, "BlockContent"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockContent(Ljava/lang/String;)V

    .line 379
    const-string v6, "BlockTimeout"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setBlockTimeout(Ljava/lang/String;)V

    .line 380
    const-string v6, "IsNeedReply"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setIsNeedReply(Ljava/lang/String;)V

    .line 381
    const-string v6, "ReplyInfo"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyInfo(Ljava/lang/String;)V

    .line 382
    const-string v6, "ReplyTimeout"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/vo/Block;->setReplyTimeout(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 387
    .end local v0    # "block":Lcom/cynosure/paymentsdk/vo/Block;
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 392
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 359
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 391
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    .line 392
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 393
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getSDKLog()Lcom/cynosure/paymentsdk/vo/SDKLog;
    .locals 8

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    const-string v4, ""

    .line 145
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 146
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    :cond_0
    const-string v5, "SELECT * FROM Log ORDER BY Log_ID LIMIT 0,1;"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v2

    .line 152
    .end local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .local v3, "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 165
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 145
    .end local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    return-object v2

    .line 153
    .end local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :cond_1
    :try_start_4
    new-instance v2, Lcom/cynosure/paymentsdk/vo/SDKLog;

    invoke-direct {v2}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .end local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :try_start_5
    const-string v5, "Log_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/SDKLog;->setLogID(Ljava/lang/String;)V

    .line 156
    const-string v5, "LogType"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/SDKLog;->setLogType(Ljava/lang/String;)V

    .line 157
    const-string v5, "LogContent"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cynosure/paymentsdk/vo/SDKLog;->setLogContent(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v2

    .end local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 162
    .end local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 165
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 145
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 164
    .end local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .line 165
    .end local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 145
    .end local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    .restart local v2    # "log":Lcom/cynosure/paymentsdk/vo/SDKLog;
    goto :goto_3

    .line 164
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 160
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public getTaskToDo()Lcom/cynosure/paymentsdk/vo/Task;
    .locals 8

    .prologue
    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, "task":Lcom/cynosure/paymentsdk/vo/Task;
    const-string v2, ""

    .line 233
    .local v2, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    monitor-enter v6

    .line 234
    :try_start_0
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlHelper:Lcom/cynosure/paymentsdk/helper/SQLHelper;

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/helper/SQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    :cond_0
    const-string v5, "SELECT * FROM Task WHERE Script <> \'\' AND OnceCode <> \'\' AND DoCount > 0 AND IsFinish = 0 AND DoTimeout < datetime(\'now\',\'localtime\') ORDER BY DoReCount,DoTimeout DESC LIMIT 0,1;"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v5, p0, Lcom/cynosure/paymentsdk/helper/DBHelper;->_sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    move-object v4, v3

    .line 244
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .local v4, "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 267
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v4

    .line 233
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    return-object v3

    .line 245
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :cond_1
    :try_start_4
    new-instance v3, Lcom/cynosure/paymentsdk/vo/Task;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/vo/Task;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :try_start_5
    const-string v5, "Task_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setTask_ID(Ljava/lang/String;)V

    .line 248
    const-string v5, "TaskType"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setTaskType(Ljava/lang/String;)V

    .line 249
    const-string v5, "Column_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setColumn_ID(Ljava/lang/String;)V

    .line 250
    const-string v5, "Exdata"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setExdata(Ljava/lang/String;)V

    .line 251
    const-string v5, "GetRecount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setGetRecount(Ljava/lang/String;)V

    .line 252
    const-string v5, "DoRecount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setDoRecount(Ljava/lang/String;)V

    .line 253
    const-string v5, "ChargeMode"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setChargeMode(Ljava/lang/String;)V

    .line 254
    const-string v5, "ChargePointSMS_ID"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setChargePointSMS_ID(Ljava/lang/String;)V

    .line 255
    const-string v5, "Docount"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setDoCount(Ljava/lang/String;)V

    .line 256
    const-string v5, "Script"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setScript(Ljava/lang/String;)V

    .line 257
    const-string v5, "OnceCode"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setOnceCode(Ljava/lang/String;)V

    .line 258
    const-string v5, "Step"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setStep(Ljava/lang/String;)V

    .line 259
    const-string v5, "IsFinish"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cynosure/paymentsdk/vo/Task;->setIsFinish(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v4, v3

    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 264
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 267
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 233
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 266
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .line 267
    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :goto_4
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 268
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 233
    .end local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    .restart local v3    # "task":Lcom/cynosure/paymentsdk/vo/Task;
    goto :goto_3

    .line 266
    :catchall_3
    move-exception v5

    goto :goto_4

    .line 262
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public saveBillingResult(Lcom/cynosure/paymentsdk/vo/BillingResult;)Z
    .locals 6
    .param p1, "result"    # Lcom/cynosure/paymentsdk/vo/BillingResult;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 400
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "INSERT INTO BillingResult(Column_ID,Exdata,BillingResult) VALUES(\'%s\',\'%s\',\'%s\');"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getColumn_ID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getExdata()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/BillingResult;->getBillingResult()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveBlockInfo(Lcom/cynosure/paymentsdk/vo/Block;)Z
    .locals 7
    .param p1, "block"    # Lcom/cynosure/paymentsdk/vo/Block;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 307
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "INSERT INTO Block(BlockNumber,BlockContent,BlockTimeout,IsNeedReply,ReplyInfo,ReplyTimeout) VALUES(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\');"

    .line 308
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getBlockNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getBlockContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getBlockTimeout()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getIsNeedReply()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getReplyInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Block;->getReplyTimeout()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 307
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-direct {p0, v0, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save key:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const-string v2, "] value:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string v2, "] 2 db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;-><init>()V

    .line 68
    .local v0, "tempKeyValue":Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;
    invoke-virtual {v0, p1}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->setDeviceInfoKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;->setDeviceInfoValue(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->updateDeviceInfoKeyValue(Lcom/cynosure/paymentsdk/vo/DeviceInfoKeyValue;)Z

    .line 71
    return-void
.end method

.method public savePushContent(Lcom/cynosure/paymentsdk/vo/PushContent;)Z
    .locals 6
    .param p1, "pushContent"    # Lcom/cynosure/paymentsdk/vo/PushContent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 440
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "INSERT INTO PushContent(PushContentType,Script) VALUES(\'%s\',\'%s\');"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/PushContent;->getPushContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/PushContent;->getScript()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z
    .locals 8
    .param p1, "log"    # Lcom/cynosure/paymentsdk/vo/SDKLog;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "INSERT INTO Log(LogType,LogContent) VALUES(\'%s\',\'%s\');"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/SDKLog;->getLogType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/SDKLog;->getLogContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-direct {p0, v0, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTask(Lcom/cynosure/paymentsdk/vo/Task;)Z
    .locals 7
    .param p1, "task"    # Lcom/cynosure/paymentsdk/vo/Task;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 302
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET ChargeMode = \'%s\',ChargePointSMS_ID = \'%s\',Docount = \'%s\',Script = \'%s\',OnceCode = \'%s\' WHERE Task_ID = \'%s\';"

    .line 303
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getChargeMode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getChargePointSMS_ID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getDoCount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getScript()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getOnceCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/Task;->getTask_ID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 302
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-direct {p0, v0, v5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTaskDoCount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "Task_ID"    # Ljava/lang/String;
    .param p2, "doCount"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 292
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET DoCount = \'%s\' WHERE Task_ID = \'%s\';"

    .line 293
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v3

    .line 292
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTaskDoTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "Task_ID"    # Ljava/lang/String;
    .param p2, "retryCount"    # Ljava/lang/String;
    .param p3, "timeout"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET DoRecount = \'%s\',DoTimeout = \'%s\' WHERE Task_ID = \'%s\';"

    .line 287
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 286
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTaskFinishFlag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "Task_ID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 297
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET IsFinish = 1 WHERE Task_ID = \'%s\';"

    .line 298
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 297
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTaskGetTimeout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "Task_ID"    # Ljava/lang/String;
    .param p2, "retryCount"    # Ljava/lang/String;
    .param p3, "timeout"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET GetRecount = \'%s\',GetTimeout = \'%s\' WHERE Task_ID = \'%s\';"

    .line 275
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 274
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateTaskStep(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "Task_ID"    # Ljava/lang/String;
    .param p2, "step"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 280
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "UPDATE Task SET Step = \'%s\' WHERE Task_ID = \'%s\';"

    .line 281
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v3

    .line 280
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->execSQL([Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
