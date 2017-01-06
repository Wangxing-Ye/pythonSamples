.class public Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;
.super Ljava/lang/Object;
.source "QualcommDualSimW1.java"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;->_context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public IsQualComm()Z
    .locals 12

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 62
    .local v5, "ret":Z
    :try_start_0
    const-string v0, "test"

    .line 65
    .local v0, "content":Ljava/lang/String;
    const/4 v10, 0x6

    new-array v7, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-class v11, Ljava/util/ArrayList;

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-class v11, Ljava/util/ArrayList;

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-class v11, Ljava/util/ArrayList;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v7, v10

    .line 66
    .local v7, "sendMultipartTextMessagePamas":[Ljava/lang/Class;
    const-string v10, "android.telephony.MSimSmsManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 67
    .local v9, "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getDefault"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 68
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 69
    .local v8, "smsManager":Ljava/lang/Object;
    const-string v10, "sendMultipartTextMessage"

    invoke-virtual {v9, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 71
    .local v6, "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v2, v10

    .line 72
    .local v2, "divideMessagePamas":[Ljava/lang/Class;
    const-string v10, "divideMessage"

    invoke-virtual {v9, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "divideMessage":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v3, "magArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 79
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "divideMessage":Ljava/lang/reflect/Method;
    .end local v2    # "divideMessagePamas":[Ljava/lang/Class;
    .end local v3    # "magArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    .end local v7    # "sendMultipartTextMessagePamas":[Ljava/lang/Class;
    .end local v8    # "smsManager":Ljava/lang/Object;
    .end local v9    # "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v5

    .line 76
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simnum"    # I
    .param p4, "extdate"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 32
    .local v5, "sentPI":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v8, p0, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;->_context:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 34
    new-instance v4, Landroid/content/Intent;

    const-string v8, "SENT_SMS_ACTION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "sentIntent":Landroid/content/Intent;
    const-string v8, "smsnumber"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v8, "smscontent"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v8, "extdata"

    invoke-virtual {v4, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v8, p0, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;->_context:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 44
    .end local v4    # "sentIntent":Landroid/content/Intent;
    :cond_0
    const/4 v8, 0x6

    new-array v3, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v3, v8

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v8

    .line 45
    .local v3, "sendTextMessagePamas":[Ljava/lang/Class;
    const-string v8, "android.telephony.MSimSmsManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 46
    .local v7, "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getDefault"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 48
    .local v6, "smsManager":Ljava/lang/Object;
    const-string v8, "sendTextMessage"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 50
    .local v2, "sendTextMessage":Ljava/lang/reflect/Method;
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "sendTextMessage":Ljava/lang/reflect/Method;
    .end local v3    # "sendTextMessagePamas":[Ljava/lang/Class;
    .end local v6    # "smsManager":Ljava/lang/Object;
    .end local v7    # "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
