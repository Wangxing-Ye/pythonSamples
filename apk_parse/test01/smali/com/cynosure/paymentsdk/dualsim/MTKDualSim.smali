.class public Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;
.super Ljava/lang/Object;
.source "MTKDualSim.java"


# instance fields
.field private _context:Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strServiceManager:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strgetService:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strisms:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strisms2:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strStub:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strasInterface:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strsendText:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_context:Landroid/content/Context;

    .line 35
    return-void

    .line 17
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

    .line 19
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

    .line 21
    nop

    :array_2
    .array-data 1
        0x69t
        0x73t
        0x6dt
        0x73t
    .end array-data

    .line 23
    :array_3
    .array-data 1
        0x69t
        0x73t
        0x6dt
        0x73t
        0x32t
    .end array-data

    .line 25
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

    .line 27
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

    .line 29
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
.method public IsMTK()Z
    .locals 8

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "ret":Z
    :try_start_0
    const-string v1, "1234567890"

    .line 171
    .local v1, "number":Ljava/lang/String;
    const-string v0, "test"

    .line 172
    .local v0, "content":Ljava/lang/String;
    const/4 v5, 0x1

    .line 173
    .local v5, "simnum":I
    invoke-virtual {p0, v5}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->setSim(I)V

    .line 174
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v3, v6

    .line 175
    .local v3, "sendTextPamas":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 176
    .local v4, "sendtext":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    .line 181
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "sendTextPamas":[Ljava/lang/Class;
    .end local v4    # "sendtext":Ljava/lang/reflect/Method;
    .end local v5    # "simnum":I
    :goto_0
    return v2

    .line 178
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getInterface()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getStub()Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strasInterface:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    .end local v0    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsms(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "strIsms"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "oRemoteService":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getService()Ljava/lang/reflect/Method;

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

    .line 82
    .end local v1    # "oRemoteService":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 79
    .restart local v1    # "oRemoteService":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getService()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getServiceManager()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strgetService:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 66
    .end local v0    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
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
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strServiceManager:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
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
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strStub:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getoIsms(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "strIsms"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "oISms":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getInterface()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    .end local v1    # "oISms":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 126
    .restart local v1    # "oISms":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simnum"    # I
    .param p4, "extdate"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "sentPI":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 141
    new-instance v3, Landroid/content/Intent;

    const-string v5, "SENT_SMS_ACTION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "sentIntent":Landroid/content/Intent;
    const-string v5, "smsnumber"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v5, "smscontent"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v5, "extdata"

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v5, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_context:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 152
    .end local v3    # "sentIntent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->setSim(I)V

    .line 153
    const/4 v5, 0x5

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v1, v5

    .line 154
    .local v1, "sendTextPamas":[Ljava/lang/Class;
    iget-object v5, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strsendText:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    .local v2, "sendtext":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->getoIsms(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "sendTextPamas":[Ljava/lang/Class;
    .end local v2    # "sendtext":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSim(I)V
    .locals 1
    .param p1, "simnum"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 197
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strisms:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    .line 200
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strisms:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->_strisms2:Ljava/lang/String;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->defaultISms:Ljava/lang/String;

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
