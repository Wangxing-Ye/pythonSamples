.class public Lcom/cynosure/paymentsdk/layout/LayoutHandler;
.super Landroid/os/Handler;
.source "LayoutHandler.java"


# static fields
.field private static volatile _instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->_instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/layout/LayoutHandler;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->_instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->_instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/layout/LayoutHandler;-><init>()V

    sput-object v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->_instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/layout/LayoutHandler;->_instance:Lcom/cynosure/paymentsdk/layout/LayoutHandler;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v4, 0x0

    .line 68
    .local v4, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 226
    return-void

    .line 90
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_0

    .line 93
    :try_start_0
    const-string v19, "SDKDialogOnClickListener"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .line 94
    .local v10, "onClickListener":Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    if-eqz v10, :cond_0

    .line 96
    new-instance v7, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    invoke-direct {v7}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;-><init>()V

    .line 97
    .local v7, "doubleConfirmInfo":Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    const-string v19, "Title"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setTitle(Ljava/lang/String;)V

    .line 98
    const-string v19, "GameName"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setGameName(Ljava/lang/String;)V

    .line 99
    const-string v19, "ItemName"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setItemName(Ljava/lang/String;)V

    .line 100
    const-string v19, "Price"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setPrice(Ljava/lang/String;)V

    .line 101
    const-string v19, "ServiceText"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setServiceText(Ljava/lang/String;)V

    .line 102
    const-string v19, "taskType"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setTaskType(Ljava/lang/String;)V

    .line 103
    const-string v19, "column_id"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setColumn_id(Ljava/lang/String;)V

    .line 104
    const-string v19, "exdata"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->setExdata(Ljava/lang/String;)V

    .line 106
    new-instance v6, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0, v7, v10}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;-><init>(Landroid/content/Context;Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V

    .line 107
    .local v6, "doubleConfirm":Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 112
    .end local v6    # "doubleConfirm":Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;
    .end local v7    # "doubleConfirmInfo":Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    .end local v10    # "onClickListener":Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    :catch_0
    move-exception v8

    .line 113
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 125
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    new-instance v11, Lcom/cynosure/payment3rd/PayFactory;

    invoke-direct {v11}, Lcom/cynosure/payment3rd/PayFactory;-><init>()V

    .line 126
    .local v11, "pay":Lcom/cynosure/payment3rd/PayFactory;
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/cynosure/payment3rd/PayFactory;->doThirdPartInit(Landroid/content/Context;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 128
    .end local v11    # "pay":Lcom/cynosure/payment3rd/PayFactory;
    :catch_1
    move-exception v8

    .line 129
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 135
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_0

    .line 138
    :try_start_2
    const-string v19, "script"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 139
    .local v16, "script":[Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 140
    const-string v17, ""

    .line 141
    .local v17, "tempLog":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_1

    .line 145
    invoke-static/range {v17 .. v17}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 151
    new-instance v12, Lcom/cynosure/payment3rd/PayFactory;

    invoke-direct {v12}, Lcom/cynosure/payment3rd/PayFactory;-><init>()V

    .line 152
    .local v12, "payFactory":Lcom/cynosure/payment3rd/PayFactory;
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v12, v0, v1, v2}, Lcom/cynosure/payment3rd/PayFactory;->doThirdPartPay(Landroid/content/Context;Landroid/app/Activity;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 155
    .end local v9    # "i":I
    .end local v12    # "payFactory":Lcom/cynosure/payment3rd/PayFactory;
    .end local v16    # "script":[Ljava/lang/String;
    .end local v17    # "tempLog":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 156
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 142
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "i":I
    .restart local v16    # "script":[Ljava/lang/String;
    .restart local v17    # "tempLog":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v20, v16, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 143
    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 142
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v17

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 163
    .end local v9    # "i":I
    .end local v16    # "script":[Ljava/lang/String;
    .end local v17    # "tempLog":Ljava/lang/String;
    :pswitch_4
    new-instance v14, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;-><init>(Landroid/content/Context;)V

    .line 164
    .local v14, "pushDialog":Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
    invoke-virtual {v14}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->show()V

    goto/16 :goto_0

    .line 168
    .end local v14    # "pushDialog":Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_0

    .line 171
    :try_start_4
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "content":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 174
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 177
    .end local v5    # "content":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 178
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 184
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_0

    .line 187
    :try_start_5
    const-string v19, "apkid"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 188
    .local v3, "apkID":I
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "title":Ljava/lang/String;
    const-string v19, "savepath"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 190
    .local v15, "savePath":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 192
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->getInstance()Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    move-result-object v19

    const-string v20, "0%"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v15, v2}, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->showNotice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 195
    .end local v3    # "apkID":I
    .end local v15    # "savePath":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 196
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 202
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 203
    if-eqz v4, :cond_0

    .line 205
    :try_start_6
    const-string v19, "apkid"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 206
    .restart local v3    # "apkID":I
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 207
    .restart local v18    # "title":Ljava/lang/String;
    const-string v19, "progress"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, "progress":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 209
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 211
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->getInstance()Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v13}, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->updateNotice(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 214
    .end local v3    # "apkID":I
    .end local v13    # "progress":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 215
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 221
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_8
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->cleanDialog()V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
