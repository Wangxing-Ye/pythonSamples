.class public Lcom/cynosure/paymentsdk/helper/SMSHelper;
.super Ljava/lang/Object;
.source "SMSHelper.java"


# static fields
.field public static final Str_android_method_divideMessage:Ljava/lang/String;

.field public static final Str_android_method_getDefault:Ljava/lang/String;

.field public static final Str_android_method_sendTextMessage:Ljava/lang/String;

.field public static final Str_android_telephony_SmsManager:Ljava/lang/String;


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_telephony_SmsManager:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_getDefault:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_divideMessage:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_sendTextMessage:Ljava/lang/String;

    return-void

    .line 20
    nop

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
        0x53t
        0x6dt
        0x73t
        0x4dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
    .end array-data

    .line 21
    :array_1
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x44t
        0x65t
        0x66t
        0x61t
        0x75t
        0x6ct
        0x74t
    .end array-data

    .line 22
    nop

    :array_2
    .array-data 1
        0x64t
        0x69t
        0x76t
        0x69t
        0x64t
        0x65t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
    .end array-data

    .line 23
    nop

    :array_3
    .array-data 1
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
        0x65t
        0x78t
        0x74t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private sendSMSByDefaultApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "extdata"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v11, "SENT_SMS_ACTION"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v8, "sentIntent":Landroid/content/Intent;
    const-string v11, "smsnumber"

    move-object/from16 v0, p1

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v11, "smscontent"

    move-object/from16 v0, p2

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v11, "extdata"

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v8, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 179
    .local v9, "sentPI":Landroid/app/PendingIntent;
    :try_start_1
    sget-object v11, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_telephony_SmsManager:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 181
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_getDefault:Ljava/lang/String;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 182
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 183
    .local v10, "smsManager":Ljava/lang/Object;
    sget-object v11, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_divideMessage:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    .local v2, "divideMessage":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 185
    .local v7, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 196
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "divideMessage":Ljava/lang/reflect/Method;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "smsManager":Ljava/lang/Object;
    :goto_1
    const/4 v11, 0x1

    .line 201
    .end local v8    # "sentIntent":Landroid/content/Intent;
    .end local v9    # "sentPI":Landroid/app/PendingIntent;
    :goto_2
    return v11

    .line 185
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "divideMessage":Ljava/lang/reflect/Method;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "sentIntent":Landroid/content/Intent;
    .restart local v9    # "sentPI":Landroid/app/PendingIntent;
    .restart local v10    # "smsManager":Ljava/lang/Object;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 186
    .local v6, "msg1":Ljava/lang/String;
    sget-object v12, Lcom/cynosure/paymentsdk/helper/SMSHelper;->Str_android_method_sendTextMessage:Ljava/lang/String;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Landroid/app/PendingIntent;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-class v15, Landroid/app/PendingIntent;

    aput-object v15, v13, v14

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 188
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    const/4 v13, 0x3

    aput-object v9, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x0

    aput-object v14, v12, v13

    invoke-virtual {v4, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "divideMessage":Ljava/lang/reflect/Method;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "msg1":Ljava/lang/String;
    .end local v7    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "smsManager":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 192
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-static {v3}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "sentIntent":Landroid/content/Intent;
    .end local v9    # "sentPI":Landroid/app/PendingIntent;
    :catch_1
    move-exception v3

    .line 199
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    invoke-static {v3}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 201
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method public sendQXT()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cynosure/paymentsdk/helper/SMSHelper$1;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/helper/SMSHelper$1;-><init>(Lcom/cynosure/paymentsdk/helper/SMSHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "extdata"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "smsnumber:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " smscontent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extdata:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 127
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISDUALSIM:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "isDualSim":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 129
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CURRSIMCARDNUMBER:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v1, v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "currSimCardNumber":Ljava/lang/String;
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_DUALSIMMANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "dualSimManufacturer":Ljava/lang/String;
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_SAMSUNG:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send text message by SAMSUNG dualsim function"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 133
    new-instance v8, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;

    iget-object v9, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;-><init>(Landroid/content/Context;)V

    .line 134
    .local v8, "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, p1, p2, v9, p3}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    .end local v8    # "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    :cond_0
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_MTK:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send text message by MTK dualsim function"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 138
    new-instance v5, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;

    iget-object v9, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;-><init>(Landroid/content/Context;)V

    .line 139
    .local v5, "mtk":Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, p1, p2, v9, p3}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    .end local v5    # "mtk":Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;
    :cond_1
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_QUALCOMM:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send text message by QUALCOMM dualsim function"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 143
    new-instance v6, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;

    iget-object v9, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;-><init>(Landroid/content/Context;)V

    .line 145
    .local v6, "qualcomm":Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, p1, p2, v9, p3}, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;->sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    .end local v6    # "qualcomm":Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;
    :cond_2
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_SPREAD:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send text message by SPREAD dualsim function"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 149
    new-instance v7, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;

    iget-object v9, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper;->_context:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;-><init>(Landroid/content/Context;)V

    .line 151
    .local v7, "spread":Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, p1, p2, v9, p3}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->sendText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .end local v7    # "spread":Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;
    :cond_3
    const/4 v9, 0x1

    .line 165
    .end local v0    # "currSimCardNumber":Ljava/lang/String;
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v2    # "dualSimManufacturer":Ljava/lang/String;
    .end local v4    # "isDualSim":Ljava/lang/String;
    :goto_0
    return v9

    .line 155
    .restart local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v4    # "isDualSim":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendSMSByDefaultApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 160
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v4    # "isDualSim":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-static {v3}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 165
    const/4 v9, 0x0

    goto :goto_0
.end method
