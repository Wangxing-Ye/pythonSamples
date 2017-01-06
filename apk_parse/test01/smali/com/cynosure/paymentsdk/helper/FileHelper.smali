.class public Lcom/cynosure/paymentsdk/helper/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    invoke-static {p1, v1}, Lcom/cynosure/paymentsdk/helper/FileHelper;->writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v2

    return v2

    .line 29
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "FileNotFoundException occurred. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static isExistSDCard()Z
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static makeDirs(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/cynosure/paymentsdk/helper/FileHelper;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "folderName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 92
    :goto_0
    return v2

    .line 91
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 44
    const/4 v3, 0x0

    .line 46
    .local v3, "o":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/FileHelper;->makeDirs(Ljava/lang/String;)Z

    .line 47
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v3    # "o":Ljava/io/OutputStream;
    .local v4, "o":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 49
    .local v0, "data":[B
    const/4 v2, -0x1

    .line 50
    .local v2, "length":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 53
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    if-eqz v4, :cond_0

    .line 65
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 51
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 56
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 57
    .end local v4    # "o":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :goto_1
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "FileNotFoundException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 63
    :goto_2
    if-eqz v3, :cond_2

    .line 65
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 72
    :cond_2
    throw v5

    .line 68
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "length":I
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 59
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_2

    .line 59
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_3

    .line 56
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cynosure/paymentsdk/helper/FileHelper;->writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 40
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/cynosure/paymentsdk/helper/FileHelper;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
