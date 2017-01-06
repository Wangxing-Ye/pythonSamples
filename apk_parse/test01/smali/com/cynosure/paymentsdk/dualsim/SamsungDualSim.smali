.class public Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
.super Ljava/lang/Object;
.source "SamsungDualSim.java"


# instance fields
.field _context:Landroid/content/Context;

.field _strServiceManager:Ljava/lang/String;

.field _strStub:Ljava/lang/String;

.field _strasInterface:Ljava/lang/String;

.field _strgetService:Ljava/lang/String;

.field _strisms:Ljava/lang/String;

.field _strisms2:Ljava/lang/String;

.field _strsendText:Ljava/lang/String;

.field defaultISms:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strServiceManager:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strgetService:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strisms:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strisms2:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strStub:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strasInterface:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strsendText:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_context:Landroid/content/Context;

    .line 36
    return-void

    .line 18
    :array_0
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x6ft
        0x73t
        0x2et
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x4dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
    .end array-data

    .line 20
    nop

    :array_1
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data

    .line 22
    nop

    :array_2
    .array-data 1
        0x69t
        0x73t
        0x6dt
        0x73t
    .end array-data

    .line 24
    :array_3
    .array-data 1
        0x69t
        0x73t
        0x6dt
        0x73t
        0x32t
    .end array-data

    .line 26
    nop

    :array_4
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x69t
        0x6et
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x6ct
        0x2et
        0x74t
        0x65t
        0x6ct
        0x65t
        0x70t
        0x68t
        0x6ft
        0x6et
        0x79t
        0x2et
        0x49t
        0x53t
        0x6dt
        0x73t
        0x24t
        0x53t
        0x74t
        0x75t
        0x62t
    .end array-data

    .line 28
    :array_5
    .array-data 1
        0x61t
        0x73t
        0x49t
        0x6et
        0x74t
        0x65t
        0x72t
        0x66t
        0x61t
        0x63t
        0x65t
    .end array-data

    .line 30
    :array_6
    .array-data 1
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
        0x65t
        0x78t
        0x74t
    .end array-data
.end method


# virtual methods
.method public IsSamSung()Z
    .locals 13

    .prologue
    .line 190
    const/4 v6, 0x0

    .line 192
    .local v6, "ret":Z
    :try_start_0
    const-string v4, "1234567890"

    .line 193
    .local v4, "number":Ljava/lang/String;
    const-string v0, "test"

    .line 194
    .local v0, "content":Ljava/lang/String;
    const/4 v10, 0x1

    .line 196
    .local v10, "simnum":I
    invoke-virtual {p0, v10}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->setSim(I)V

    .line 197
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v7, v11

    .line 198
    .local v7, "sendTextPamas":[Ljava/lang/Class;
    const/4 v11, 0x5

    new-array v8, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v8, v11

    .line 207
    .local v8, "sendTextPamas1":[Ljava/lang/Class;
    iget-object v11, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 209
    .local v5, "packagename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 210
    .local v2, "isSamsungCheck1":Z
    const/4 v3, 0x0

    .line 212
    .local v3, "isSamsungCheck2":Z
    :try_start_1
    iget-object v11, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v11, v12, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 214
    .local v9, "sendtext":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    .line 222
    .end local v9    # "sendtext":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    iget-object v11, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v11, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 224
    .restart local v9    # "sendtext":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    .line 231
    .end local v9    # "sendtext":Ljava/lang/reflect/Method;
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 232
    :cond_0
    const/4 v6, 0x1

    .line 238
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "isSamsungCheck1":Z
    .end local v3    # "isSamsungCheck2":Z
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "packagename":Ljava/lang/String;
    .end local v7    # "sendTextPamas":[Ljava/lang/Class;
    .end local v8    # "sendTextPamas1":[Ljava/lang/Class;
    .end local v10    # "simnum":I
    :cond_1
    :goto_2
    return v6

    .line 216
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "isSamsungCheck1":Z
    .restart local v3    # "isSamsungCheck2":Z
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "packagename":Ljava/lang/String;
    .restart local v7    # "sendTextPamas":[Ljava/lang/Class;
    .restart local v8    # "sendTextPamas1":[Ljava/lang/Class;
    .restart local v10    # "simnum":I
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1

    .line 235
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "isSamsungCheck1":Z
    .end local v3    # "isSamsungCheck2":Z
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "packagename":Ljava/lang/String;
    .end local v7    # "sendTextPamas":[Ljava/lang/Class;
    .end local v8    # "sendTextPamas1":[Ljava/lang/Class;
    .end local v10    # "simnum":I
    :catch_2
    move-exception v11

    goto :goto_2
.end method

.method public getInterface()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getStub()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strasInterface:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    .end local v0    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsms(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "strIsms"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "oRemoteService":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getService()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    .end local v1    # "oRemoteService":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 80
    .restart local v1    # "oRemoteService":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getService()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getServiceManager()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strgetService:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .end local v0    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceManager()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strServiceManager:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStub()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strStub:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getoIsms(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "strIsms"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, "oISms":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getInterface()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    .end local v1    # "oISms":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 127
    .restart local v1    # "oISms":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simnum"    # I
    .param p4, "extdate"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "sentIntent":Landroid/content/Intent;
    const-string v6, "smsnumber"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v6, "smscontent"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v6, "extdata"

    invoke-virtual {v4, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_context:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 150
    .local v5, "sentPI":Landroid/app/PendingIntent;
    invoke-virtual {p0, p3}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->setSim(I)V

    .line 152
    const/4 v6, 0x6

    new-array v1, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v1, v6

    .line 153
    .local v1, "sendTextPamas":[Ljava/lang/Class;
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v2, v6

    .line 155
    .local v2, "sendTextPamas1":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    .local v0, "packagename":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 159
    .local v3, "sendtext":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    .end local v3    # "sendtext":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 167
    .restart local v3    # "sendtext":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    .end local v0    # "packagename":Ljava/lang/String;
    .end local v1    # "sendTextPamas":[Ljava/lang/Class;
    .end local v2    # "sendTextPamas1":[Ljava/lang/Class;
    .end local v3    # "sendtext":Ljava/lang/reflect/Method;
    .end local v4    # "sentIntent":Landroid/content/Intent;
    .end local v5    # "sentPI":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v6

    goto :goto_1

    .line 169
    .restart local v0    # "packagename":Ljava/lang/String;
    .restart local v1    # "sendTextPamas":[Ljava/lang/Class;
    .restart local v2    # "sendTextPamas1":[Ljava/lang/Class;
    .restart local v4    # "sentIntent":Landroid/content/Intent;
    .restart local v5    # "sentPI":Landroid/app/PendingIntent;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 161
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public setSim(I)V
    .locals 1
    .param p1, "simnum"    # I

    .prologue
    .line 246
    packed-switch p1, :pswitch_data_0

    .line 254
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strisms:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    .line 257
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strisms:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->_strisms2:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->defaultISms:Ljava/lang/String;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
