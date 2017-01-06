.class public Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;
.super Ljava/lang/Object;
.source "SpreadDualSimW1.java"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->_context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private static getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "paramArrayOfObject"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 174
    .local v0, "arrayOfClass":[Ljava/lang/Class;
    if-eqz p0, :cond_0

    .line 176
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 178
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 230
    .end local v1    # "m":I
    :cond_0
    return-object v0

    .line 180
    .restart local v1    # "m":I
    :cond_1
    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    .line 182
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 183
    aget-object v2, v0, v1

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    .line 186
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 178
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_3
    aget-object v2, v0, v1

    const-class v3, Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    .line 192
    aget-object v2, v0, v1

    const-class v3, Ljava/lang/Long;

    if-eq v2, v3, :cond_2

    .line 196
    aget-object v2, v0, v1

    goto :goto_1
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramArrayOfObject"    # [Ljava/lang/Object;
    .param p3, "paramArrayOfClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "localClass1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 237
    .local v5, "localMethod1":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 240
    .local v8, "o":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 241
    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 242
    .local v6, "localMethod2":Ljava/lang/reflect/Method;
    move-object v5, v6

    .line 267
    .end local v6    # "localMethod2":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 270
    :try_start_1
    invoke-virtual {v5, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 298
    .end local v8    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v8

    .line 244
    .restart local v8    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 249
    .local v4, "localException":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    .line 253
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 254
    .local v3, "localClass2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 255
    if-eqz v3, :cond_2

    .line 256
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    .line 264
    .end local v3    # "localClass2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_2
    if-nez v5, :cond_1

    goto :goto_0

    .line 276
    .end local v4    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v10, "eaaa"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    const-string v10, "e31"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    .line 285
    .local v9, "targetEx":Ljava/lang/Throwable;
    if-eqz v9, :cond_0

    .line 287
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "msg":Ljava/lang/String;
    const-string v10, "msg"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 291
    .end local v7    # "msg":Ljava/lang/String;
    .end local v9    # "targetEx":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 293
    .local v1, "e1":Ljava/lang/Exception;
    const-string v10, "e32"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v4    # "localException":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public IsSpread()Z
    .locals 12

    .prologue
    .line 61
    const/4 v6, 0x0

    .line 64
    .local v6, "ret":Z
    :try_start_0
    const-string v0, "test"

    .line 65
    .local v0, "content":Ljava/lang/String;
    const/4 v7, 0x1

    .line 68
    .local v7, "simnum":I
    const-string v10, "android.telephony.SmsManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 69
    .local v9, "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getDefault"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 70
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 73
    .local v8, "smsManager":Ljava/lang/Object;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v2, v10

    .line 74
    .local v2, "divideMessagePamas":[Ljava/lang/Class;
    const-string v10, "divideMessage"

    invoke-virtual {v9, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, "divideMessage":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v1, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 77
    .local v4, "magArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getmMSimSmsManager(I)Landroid/telephony/SmsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    .local v3, "localSmsManager":Landroid/telephony/SmsManager;
    if-eqz v3, :cond_0

    .line 81
    const/4 v6, 0x1

    .line 90
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "divideMessage":Ljava/lang/reflect/Method;
    .end local v2    # "divideMessagePamas":[Ljava/lang/Class;
    .end local v3    # "localSmsManager":Landroid/telephony/SmsManager;
    .end local v4    # "magArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "simnum":I
    .end local v8    # "smsManager":Ljava/lang/Object;
    .end local v9    # "smsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v6

    .line 87
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "paramInt"    # I

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getMSimTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v1

    .line 121
    .local v1, "localThrowable":Ljava/lang/Throwable;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    .line 122
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 123
    const/4 v3, 0x1

    const-string v4, "getIMSI:simSlotPos"

    aput-object v4, v0, v3

    .line 124
    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 125
    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 128
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 5
    .param p1, "paramInt"    # I

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getMSimTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "localThrowable":Ljava/lang/Throwable;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    .line 103
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 104
    const/4 v3, 0x1

    const-string v4, "getIMSI:simSlotPos"

    aput-object v4, v0, v3

    .line 105
    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 106
    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 109
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getMSimTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 9
    .param p1, "paramInt"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 136
    .local v1, "arrayOfObject2":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 137
    const-string v4, "android.telephony.TelephonyManager"

    const-string v5, "getDefault"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "arrayOfObject2":[Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v3

    .line 142
    .local v3, "localThrowable":Ljava/lang/Throwable;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    .line 143
    .local v0, "arrayOfObject1":[Ljava/lang/Object;
    aput-object p0, v0, v7

    .line 144
    const-string v4, "getMSimTelephonyManager"

    aput-object v4, v0, v8

    .line 145
    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 148
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getmMSimSmsManager(I)Landroid/telephony/SmsManager;
    .locals 9
    .param p1, "paramInt"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 156
    .local v1, "arrayOfObject2":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 157
    const-string v4, "android.telephony.SmsManager"

    const-string v5, "getDefault"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "arrayOfObject2":[Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v3

    .line 162
    .local v3, "localThrowable":Ljava/lang/Throwable;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    .line 163
    .local v0, "arrayOfObject1":[Ljava/lang/Object;
    aput-object p0, v0, v7

    .line 164
    const-string v4, "getmMSimSmsManager"

    aput-object v4, v0, v8

    .line 165
    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 168
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "simnum"    # I
    .param p4, "extdate"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, "sentPI":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v1, p0, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 38
    new-instance v7, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v7, "sentIntent":Landroid/content/Intent;
    const-string v1, "smsnumber"

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "smscontent"

    invoke-virtual {v7, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "extdata"

    invoke-virtual {v7, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->_context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 48
    .end local v7    # "sentIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getmMSimSmsManager(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 49
    .local v0, "localSmsManager":Landroid/telephony/SmsManager;
    if-eqz v0, :cond_1

    .line 52
    const-string v2, ""

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "localSmsManager":Landroid/telephony/SmsManager;
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
