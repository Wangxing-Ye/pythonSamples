.class Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;
.super Ljava/lang/Object;
.source "JYDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 25
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 426
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 429
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    move-object/from16 v22, v0

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    move-result-object v22

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$1(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    .line 430
    .local v19, "text":Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 431
    .local v18, "strBase64":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    move-object/from16 v22, v0

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    move-result-object v22

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, "phonenum":Ljava/lang/String;
    new-instance v10, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;

    invoke-direct {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;-><init>()V

    .line 449
    .local v10, "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getSDKVC()Ljava/lang/String;

    move-result-object v16

    .line 450
    .local v16, "sdkVC":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getCPID()Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "cpID":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getAppID()Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "appID":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMEI()Ljava/lang/String;

    move-result-object v12

    .line 453
    .local v12, "imei":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v13

    .line 455
    .local v13, "imsi":Ljava/lang/String;
    new-instance v6, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;

    const/16 v22, 0x400

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;-><init>(II)V

    .line 456
    .local v6, "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v8, v22, v23

    const/16 v23, 0x1

    aput-object v5, v22, v23

    const/16 v23, 0x2

    aput-object v16, v22, v23

    const/16 v23, 0x3

    aput-object v12, v22, v23

    const/16 v23, 0x4

    aput-object v13, v22, v23

    const/16 v23, 0x5

    aput-object v14, v22, v23

    const/16 v23, 0x6

    aput-object v18, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/cynosure/paymentsdk/helper/BitOperationHelper;->getBuffer([Ljava/lang/String;)[B

    move-result-object v9

    .line 459
    .local v9, "data":[B
    new-instance v4, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 460
    .local v4, "_dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v22, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_SERVERIP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 461
    .local v17, "serverIP":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 462
    sget-object v17, Lcom/cynosure/paymentsdk/helper/Constant;->URL_SERVERIP:Ljava/lang/String;

    .line 464
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    const-string v23, "/sdk/api/feedback/insertUserFeedback"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 464
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 467
    .local v21, "url":Ljava/lang/String;
    new-instance v7, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v7}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 468
    .local v7, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v9, v2}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpPost(Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 471
    .local v15, "regResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    move-object/from16 v22, v0

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    move-result-object v22

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->access$3(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "\u5efa\u8bae\u5df2\u63d0\u4ea4\u5ba2\u670d"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 472
    .local v20, "toast":Landroid/widget/Toast;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 473
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1$1;->this$1:Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    move-object/from16 v22, v0

    # getter for: Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->this$0:Lcom/cynosure/paymentsdk/customerservice/JYDialog;
    invoke-static/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;->access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;)Lcom/cynosure/paymentsdk/customerservice/JYDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v4    # "_dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v5    # "appID":Ljava/lang/String;
    .end local v6    # "bitOperation":Lcom/cynosure/paymentsdk/helper/BitOperationHelper;
    .end local v7    # "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    .end local v8    # "cpID":Ljava/lang/String;
    .end local v9    # "data":[B
    .end local v10    # "deviceInfoHelper":Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "imsi":Ljava/lang/String;
    .end local v14    # "phonenum":Ljava/lang/String;
    .end local v15    # "regResult":Ljava/lang/String;
    .end local v16    # "sdkVC":Ljava/lang/String;
    .end local v17    # "serverIP":Ljava/lang/String;
    .end local v18    # "strBase64":Ljava/lang/String;
    .end local v19    # "text":Ljava/lang/String;
    .end local v20    # "toast":Landroid/widget/Toast;
    .end local v21    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v11

    .line 478
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
