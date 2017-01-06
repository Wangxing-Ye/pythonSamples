.class public Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;
.super Lcom/cynosure/paymentsdk/layout/SDKDialog;
.source "SDKDoubleConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;
    }
.end annotation


# instance fields
.field private _doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

.field private _sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "doubleConfirmInfo"    # Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    .param p3, "sdkDialogOnClickListener"    # Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/layout/SDKDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    .line 29
    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .line 33
    iput-object p2, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    .line 34
    iput-object p3, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->requestWindowFeature(I)Z

    .line 36
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->initDialog()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_sdkDialogOnClickListener:Lcom/cynosure/paymentsdk/layout/SDKDialogOnClickListener;

    return-object v0
.end method

.method private initDialog()V
    .locals 21

    .prologue
    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 41
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 44
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v11, "para_LinearLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->setContentView(Landroid/view/View;)V

    .line 48
    new-instance v16, Landroid/widget/TextView;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v16, "tvTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    const/high16 v17, 0x41f00000    # 30.0f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    const-string v17, "#FFFFFF"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v14, Landroid/widget/TextView;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v14, "tvDesc":Landroid/widget/TextView;
    const-string v17, "#FFFFFF"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getGameName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getItemName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getPrice()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 64
    const-string v13, "\u60a8\u6b63\u5728\u51c6\u5907\u8d2d\u4e70{gamename}\u7684{itemname}\u9053\u5177\uff0c\u4ef7\u683c{price}\u5143\u3002\u70b9\u51fb\u786e\u5b9a\u6309\u94ae\u8fdb\u884c\u8d2d\u4e70\u3002"

    .line 65
    .local v13, "titleTemplet":Ljava/lang/String;
    const-string v17, "{gamename}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getGameName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "{itemname}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getItemName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "{price}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getPrice()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "titleTemplet":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v8, "linearLayout4Button":Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    const/16 v17, 0x14

    const/16 v18, 0xa

    const/16 v19, 0x14

    const/16 v20, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    new-instance v4, Landroid/widget/Button;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, "buttonCancel":Landroid/widget/Button;
    const-string v17, "\u53d6\u6d88"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v9, "para_ButtonCancel":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v17, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$1;-><init>(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v5, Landroid/widget/Button;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 104
    .local v5, "buttonConfirm":Landroid/widget/Button;
    const-string v17, "\u786e\u5b9a"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v10, "para_ButtonConfirm":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v6, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;-><init>(Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;)V

    .line 112
    .local v6, "confirmClickListener":Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v15, Landroid/widget/TextView;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v15, "tvServiceText":Landroid/widget/TextView;
    const-string v17, "#FFFFFF"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getServicetext()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->_doubleConfirmInfo:Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->getServicetext()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    .end local v4    # "buttonCancel":Landroid/widget/Button;
    .end local v5    # "buttonConfirm":Landroid/widget/Button;
    .end local v6    # "confirmClickListener":Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;
    .end local v7    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v8    # "linearLayout4Button":Landroid/widget/LinearLayout;
    .end local v9    # "para_ButtonCancel":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "para_ButtonConfirm":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "para_LinearLayout":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "tvDesc":Landroid/widget/TextView;
    .end local v15    # "tvServiceText":Landroid/widget/TextView;
    .end local v16    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 53
    .restart local v7    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v11    # "para_LinearLayout":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    const-string v17, "\u9053\u5177\u8d2d\u4e70"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 69
    .restart local v14    # "tvDesc":Landroid/widget/TextView;
    :cond_2
    const-string v17, "\u70b9\u51fb\u786e\u5b9a\u6309\u94ae\u8fdb\u884c\u9053\u5177\u8d2d\u4e70\u3002"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 124
    .restart local v4    # "buttonCancel":Landroid/widget/Button;
    .restart local v5    # "buttonConfirm":Landroid/widget/Button;
    .restart local v6    # "confirmClickListener":Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm$ConfirmClickListener;
    .restart local v8    # "linearLayout4Button":Landroid/widget/LinearLayout;
    .restart local v9    # "para_ButtonCancel":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "para_ButtonConfirm":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15    # "tvServiceText":Landroid/widget/TextView;
    :cond_3
    const-string v17, "\u5ba2\u670d\u7535\u8bdd:4006008066"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setDialogSize()V
    .locals 7

    .prologue
    .line 149
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 150
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 151
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 153
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/ScreenHelper;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public dialogResize()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->setDialogSize()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->onCreate(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->show()V

    .line 137
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKDoubleConfirm;->setDialogSize()V

    .line 139
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->addDialog(Lcom/cynosure/paymentsdk/layout/SDKDialog;)V

    .line 140
    return-void
.end method
