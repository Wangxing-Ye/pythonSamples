.class Lcom/cynosure/paymentsdk/helper/SMSHelper$1;
.super Ljava/lang/Object;
.source "SMSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendQXT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/helper/SMSHelper;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/helper/SMSHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/helper/SMSHelper$1;->this$0:Lcom/cynosure/paymentsdk/helper/SMSHelper;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 38
    :try_start_0
    new-instance v3, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 40
    .local v3, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v14, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSENDQXT:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "isSendQXTFlag":Ljava/lang/String;
    const/4 v8, 0x1

    .line 43
    .local v8, "isNeedSendQXT":Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 44
    const-string v14, "1"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 45
    const/4 v8, 0x0

    .line 49
    :cond_0
    if-eqz v8, :cond_3

    .line 51
    sget-object v14, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_QXTNUMBER:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, "qxtNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 53
    sget-object v11, Lcom/cynosure/paymentsdk/helper/Constant;->SMSNUMBER_QIXINTONG:Ljava/lang/String;

    .line 56
    :cond_1
    const-string v13, ""

    .line 59
    .local v13, "smsContent":Ljava/lang/String;
    new-instance v4, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 60
    .local v4, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "sdkVC":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "cpID":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "imei":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "imsi":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getOS()Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "os":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 68
    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 69
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "nb+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x24

    invoke-static/range {v15 .. v18}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->SMSJM(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x24

    invoke-static/range {v15 .. v18}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->SMSJM(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 75
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x24

    invoke-static/range {v15 .. v18}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->SMSJM(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x24

    invoke-static/range {v15 .. v18}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->SMSJM(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x24

    invoke-static/range {v15 .. v18}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->SMSJM(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 78
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 79
    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cynosure/paymentsdk/helper/SMSHelper$1;->this$0:Lcom/cynosure/paymentsdk/helper/SMSHelper;

    const-string v15, "qxt"

    invoke-virtual {v14, v11, v13, v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    sget-object v14, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISSENDQXT:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v3, v14, v15}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "cpID":Ljava/lang/String;
    .end local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v4    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v6    # "imei":Ljava/lang/String;
    .end local v7    # "imsi":Ljava/lang/String;
    .end local v8    # "isNeedSendQXT":Z
    .end local v9    # "isSendQXTFlag":Ljava/lang/String;
    .end local v10    # "os":Ljava/lang/String;
    .end local v11    # "qxtNumber":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    .end local v13    # "smsContent":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 72
    .restart local v1    # "appID":Ljava/lang/String;
    .restart local v2    # "cpID":Ljava/lang/String;
    .restart local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v4    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .restart local v6    # "imei":Ljava/lang/String;
    .restart local v7    # "imsi":Ljava/lang/String;
    .restart local v8    # "isNeedSendQXT":Z
    .restart local v9    # "isSendQXTFlag":Ljava/lang/String;
    .restart local v10    # "os":Ljava/lang/String;
    .restart local v11    # "qxtNumber":Ljava/lang/String;
    .restart local v12    # "sdkVC":Ljava/lang/String;
    .restart local v13    # "smsContent":Ljava/lang/String;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "nb+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_0

    .line 89
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "cpID":Ljava/lang/String;
    .end local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v4    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v6    # "imei":Ljava/lang/String;
    .end local v7    # "imsi":Ljava/lang/String;
    .end local v8    # "isNeedSendQXT":Z
    .end local v9    # "isSendQXTFlag":Ljava/lang/String;
    .end local v10    # "os":Ljava/lang/String;
    .end local v11    # "qxtNumber":Ljava/lang/String;
    .end local v12    # "sdkVC":Ljava/lang/String;
    .end local v13    # "smsContent":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 90
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
