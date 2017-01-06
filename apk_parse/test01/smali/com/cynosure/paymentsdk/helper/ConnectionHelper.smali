.class public Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public downloadByHttpGet(Ljava/lang/String;Ljava/lang/String;ZLcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)Z
    .locals 25
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "isNeedUpdateNotice"    # Z
    .param p4, "apkInfo"    # Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    .prologue
    .line 212
    const/4 v8, 0x1

    .line 215
    .local v8, "isDownloadOK":Z
    :try_start_0
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 221
    .local v11, "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 222
    .local v9, "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v9, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 224
    .local v12, "localHttpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 226
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 227
    .local v10, "localHttpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v10, :cond_1

    .line 229
    const-wide/16 v4, 0x0

    .line 230
    .local v4, "currSize":J
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v19

    .line 231
    .local v19, "totalSize":J
    const-wide/16 v14, 0x0

    .line 233
    .local v14, "progress":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 233
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 236
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 238
    .local v13, "localInputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 241
    .local v7, "fOut":Ljava/io/FileOutputStream;
    const/16 v21, 0x2000

    :try_start_1
    move/from16 v0, v21

    new-array v3, v0, [B

    .line 242
    .local v3, "buffer":[B
    const/16 v16, -0x1

    .line 243
    .local v16, "readLen":I
    :cond_0
    :goto_0
    invoke-virtual {v13, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 262
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 270
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 286
    .end local v3    # "buffer":[B
    .end local v4    # "currSize":J
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "localInputStream":Ljava/io/InputStream;
    .end local v14    # "progress":J
    .end local v16    # "readLen":I
    .end local v19    # "totalSize":J
    :cond_1
    :goto_1
    return v8

    .line 244
    .restart local v3    # "buffer":[B
    .restart local v4    # "currSize":J
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v13    # "localInputStream":Ljava/io/InputStream;
    .restart local v14    # "progress":J
    .restart local v16    # "readLen":I
    .restart local v19    # "totalSize":J
    :cond_2
    const/16 v21, 0x0

    :try_start_3
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 245
    if-eqz p3, :cond_0

    .line 246
    if-eqz p4, :cond_0

    .line 247
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v4, v4, v21

    .line 248
    const-wide/16 v21, 0x64

    mul-long v21, v21, v4

    div-long v17, v21, v19

    .line 249
    .local v17, "tempProgress":J
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-lez v21, :cond_0

    .line 250
    cmp-long v21, v17, v14

    if-lez v21, :cond_0

    .line 251
    move-wide/from16 v14, v17

    .line 252
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 252
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p4 .. p4}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkID()I

    move-result v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "\u6b63\u5728\u4e0b\u8f7d:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p4 .. p4}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkTitle()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v24, "%"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 255
    invoke-static/range {v21 .. v23}, Lcom/cynosure/paymentsdk/SDKInterface;->updateDownloadNotice(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 264
    .end local v3    # "buffer":[B
    .end local v16    # "readLen":I
    .end local v17    # "tempProgress":J
    :catch_0
    move-exception v6

    .line 265
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 269
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 270
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 272
    :catch_1
    move-exception v6

    .line 273
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 274
    const/4 v8, 0x0

    goto :goto_1

    .line 267
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 269
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 270
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 276
    :goto_2
    :try_start_7
    throw v21
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 280
    .end local v4    # "currSize":J
    .end local v7    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "localInputStream":Ljava/io/InputStream;
    .end local v14    # "progress":J
    .end local v19    # "totalSize":J
    :catch_2
    move-exception v6

    .line 281
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    invoke-static {v6}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 283
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 272
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "currSize":J
    .restart local v7    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v13    # "localInputStream":Ljava/io/InputStream;
    .restart local v14    # "progress":J
    .restart local v19    # "totalSize":J
    :catch_3
    move-exception v6

    .line 273
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const/4 v8, 0x0

    goto :goto_2

    .line 272
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "buffer":[B
    .restart local v16    # "readLen":I
    :catch_4
    move-exception v6

    .line 273
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 274
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "header"    # [Ljava/lang/String;
    .param p3, "returnValueCode"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v12, ""

    .line 35
    .local v12, "result":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "httpGet url:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 35
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 38
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 40
    .local v8, "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    .line 41
    move-object/from16 v0, p2

    array-length v13, v0

    if-lez v13, :cond_0

    .line 42
    move-object/from16 v0, p2

    array-length v13, v0

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_0

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-lt v2, v13, :cond_2

    .line 52
    .end local v2    # "i":I
    :cond_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 53
    .local v4, "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x7530

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    const/16 v13, 0x7530

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 56
    .local v6, "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 59
    .local v9, "localHttpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_5

    .line 62
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 63
    .local v7, "localHttpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_1

    .line 64
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 67
    .local v10, "localInputStream":Ljava/io/InputStream;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 68
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p3

    invoke-direct {v13, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v14, 0x2000

    invoke-direct {v5, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 74
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .local v11, "localStringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 78
    .local v3, "line":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 81
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 89
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 90
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 109
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "localInputStream":Ljava/io/InputStream;
    .end local v11    # "localStringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "httpGet result:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 109
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 112
    return-object v12

    .line 47
    .restart local v2    # "i":I
    .restart local v8    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :cond_2
    :try_start_3
    aget-object v13, p2, v2

    add-int/lit8 v14, v2, 0x1

    aget-object v14, p2, v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    .restart local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .restart local v6    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "localInputStream":Ljava/io/InputStream;
    :cond_3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x2000

    invoke-direct {v5, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 79
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v11    # "localStringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_4
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const-string v12, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 90
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 92
    :catch_1
    move-exception v1

    .line 93
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v12, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 89
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 90
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 96
    :goto_4
    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 103
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "localInputStream":Ljava/io/InputStream;
    .end local v11    # "localStringBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    invoke-static {v1}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 106
    const-string v12, ""

    goto :goto_3

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "localHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "localInputStream":Ljava/io/InputStream;
    .restart local v11    # "localStringBuilder":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v1

    .line 93
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v12, ""

    goto :goto_4

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 93
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v12, ""

    .line 98
    goto :goto_3

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "localInputStream":Ljava/io/InputStream;
    .end local v11    # "localStringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    const-string v12, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3
.end method

.method public httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "header"    # [Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "returnValueCode"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v13, ""

    .line 121
    .local v13, "result":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "httpPost url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 121
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 124
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 126
    .local v9, "localHttpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 127
    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_0

    .line 128
    move-object/from16 v0, p2

    array-length v14, v0

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_0

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v14, v0

    if-lt v2, v14, :cond_2

    .line 138
    .end local v2    # "i":I
    :cond_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 139
    .local v4, "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    const/16 v14, 0x7530

    invoke-static {v4, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    const/16 v14, 0x7530

    invoke-static {v4, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 141
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 151
    .local v7, "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 152
    .local v6, "localByteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 154
    invoke-virtual {v7, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 157
    .local v10, "localHttpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_1

    .line 160
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 161
    .local v8, "localHttpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_1

    .line 162
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 165
    .local v11, "localInputStream":Ljava/io/InputStream;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 166
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p4

    invoke-direct {v14, v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v15, 0x2000

    invoke-direct {v5, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 172
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    .local v12, "localStringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 176
    .local v3, "line":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 179
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 187
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 188
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 204
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localByteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "localHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "localInputStream":Ljava/io/InputStream;
    .end local v12    # "localStringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "httpPost result:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 204
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 207
    return-object v13

    .line 133
    .restart local v2    # "i":I
    .restart local v9    # "localHttpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    :try_start_3
    aget-object v14, p2, v2

    add-int/lit8 v15, v2, 0x1

    aget-object v15, p2, v15

    invoke-virtual {v9, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 169
    .end local v2    # "i":I
    .restart local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .restart local v6    # "localByteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v7    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "localInputStream":Ljava/io/InputStream;
    :cond_3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x2000

    invoke-direct {v5, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 177
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v12    # "localStringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v13, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 188
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 190
    :catch_1
    move-exception v1

    .line 191
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v13, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 187
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 188
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 194
    :goto_4
    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 198
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localByteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "localHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "localInputStream":Ljava/io/InputStream;
    .end local v12    # "localStringBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v1

    .line 199
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    invoke-static {v1}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 201
    const-string v13, ""

    goto :goto_3

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "localBasicHttpParams":Lorg/apache/http/params/BasicHttpParams;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localByteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v7    # "localDefaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "localHttpEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "localHttpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "localHttpResponse":Lorg/apache/http/HttpResponse;
    .restart local v11    # "localInputStream":Ljava/io/InputStream;
    .restart local v12    # "localStringBuilder":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v1

    .line 191
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v13, ""

    goto :goto_4

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 191
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v13, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3
.end method
