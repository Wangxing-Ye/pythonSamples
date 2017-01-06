.class public Lcom/cynosure/paymentsdk/helper/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 13
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 15
    const-string v5, "download image"

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 17
    .local v1, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p0, p1, v5, v6}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->downloadByHttpGet(Ljava/lang/String;Ljava/lang/String;ZLcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)Z

    .line 20
    .end local v1    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    .local v3, "inStream":Ljava/io/FileInputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .end local v4    # "tempFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
