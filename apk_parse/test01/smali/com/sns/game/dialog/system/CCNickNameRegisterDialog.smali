.class public Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;
.super Landroid/app/Dialog;
.source "CCNickNameRegisterDialog.java"


# static fields
.field public static final BTN_TAG_CLOSE:I = 0x2

.field public static final BTN_TAG_CONFIRM:I = 0x1


# instance fields
.field private btnPressSafeTime:F

.field private btnPressStartTime:J

.field private buttonTag:I

.field private cancelCallBackSequence:[Lcom/sns/game/util/LogicalHandleCallBack;

.field private close:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private layout:Landroid/widget/AbsoluteLayout;

.field private nameEt:Landroid/widget/EditText;

.field private touchEnabled:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const v0, 0x7f08000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->touchEnabled:Z

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->btnPressStartTime:J

    .line 361
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->btnPressSafeTime:F

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->registerLogical()V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkNickName()Z
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isMathcesNickName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const-string v0, "\u6635\u79f0\u53ef\u4ee5\u7531\u82f1\u6587\u5b57\u6bcd,\u4e2d\u6587,\u6570\u5b57,\u4e0b\u5212\u7ebf\u7ec4\u6210,\u957f\u5ea6\u4e0d\u8d85\u8fc76\u4e2a\u5b57\u7b26.!!!"

    .line 204
    .local v0, "tip":Ljava/lang/String;
    invoke-static {v0}, Lcom/sns/game/util/CCUtil;->showSytemToast(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    .line 207
    .end local v0    # "tip":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private isMathcesNickName()Z
    .locals 3

    .prologue
    .line 196
    const-string v1, "^[\u4e00-\u9fa5a-zA-Z0-9_]+$"

    .line 197
    .local v1, "regex":Ljava/lang/String;
    iget-object v2, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "input":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private registerLogical()V
    .locals 4

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->checkNickName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setTouchEnabled(Z)V

    .line 254
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 255
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->showProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V

    .line 256
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->result4ServerCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToThreadDelayed(Landroid/os/Parcelable;J)V

    goto :goto_0
.end method

.method private result4ServerCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$3;-><init>(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V

    return-object v0
.end method

.method private setCloseButton()V
    .locals 6

    .prologue
    const/high16 v4, 0x42800000    # 64.0f

    .line 213
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->close:Landroid/widget/Button;

    .line 214
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->close:Landroid/widget/Button;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 215
    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->close:Landroid/widget/Button;

    const/high16 v2, 0x43b80000    # 368.0f

    const/high16 v3, 0x40800000    # 4.0f

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 216
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;

    invoke-direct {v1, p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$1;-><init>(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method private setConfirmButton()V
    .locals 6

    .prologue
    .line 234
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->confirm:Landroid/widget/Button;

    .line 235
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->confirm:Landroid/widget/Button;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 236
    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->confirm:Landroid/widget/Button;

    const/high16 v2, 0x43130000    # 147.0f

    const/high16 v3, 0x43330000    # 179.0f

    const/high16 v4, 0x43100000    # 144.0f

    const/high16 v5, 0x42680000    # 58.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 237
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->confirm:Landroid/widget/Button;

    new-instance v1, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;

    invoke-direct {v1, p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog$2;-><init>(Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private setLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 154
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    .line 155
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method private setNameEditText()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 161
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 166
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 168
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 170
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 171
    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    const/high16 v2, 0x42180000    # 38.0f

    const/high16 v3, 0x42ca0000    # 101.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x42700000    # 60.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 193
    return-void
.end method

.method private setViewPos(Landroid/view/View;FFFF)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "uix"    # F
    .param p3, "uiy"    # F
    .param p4, "sizew"    # F
    .param p5, "sizeh"    # F

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 333
    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    mul-float v2, p2, v4

    .line 334
    .local v2, "converX":F
    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float v3, p3, v4

    .line 335
    .local v3, "converY":F
    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    mul-float v1, p4, v4

    .line 336
    .local v1, "converW":F
    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float v0, p5, v4

    .line 338
    .local v0, "converH":F
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 339
    float-to-int v5, v1

    float-to-int v6, v0

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 338
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    float-to-int v4, v2

    float-to-int v5, v3

    .line 341
    add-float v6, v2, v1

    float-to-int v6, v6

    add-float v7, v3, v0

    float-to-int v7, v7

    .line 340
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 343
    .end local v0    # "converH":F
    .end local v1    # "converW":F
    .end local v2    # "converX":F
    .end local v3    # "converY":F
    :cond_0
    return-void
.end method

.method public static sharedDialog(Landroid/content/Context;)Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "dialog":Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;
    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 108
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->recycleSelf()V

    .line 109
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->onCancelCallBackSequence()V

    .line 111
    :cond_0
    return-void
.end method

.method public createSelf()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setLayout()V

    .line 116
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setNameEditText()V

    .line 117
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setConfirmButton()V

    .line 118
    invoke-direct {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setCloseButton()V

    .line 121
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->nameEt:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->close:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->layout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->updateWindow()V

    .line 129
    return-void
.end method

.method public getButtonTag()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->buttonTag:I

    return v0
.end method

.method public isSafePressBtn()Z
    .locals 6

    .prologue
    .line 369
    iget v2, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->btnPressSafeTime:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 370
    .local v0, "safeResponseTime_":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->btnPressStartTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->btnPressStartTime:J

    .line 372
    const/4 v2, 0x1

    .line 374
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->touchEnabled:Z

    return v0
.end method

.method public onCancelCallBackSequence()V
    .locals 6

    .prologue
    .line 293
    iget-object v3, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancelCallBackSequence:[Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancelCallBackSequence:[Lcom/sns/game/util/LogicalHandleCallBack;

    array-length v1, v3

    .line 295
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 303
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void

    .line 296
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    iget-object v3, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancelCallBackSequence:[Lcom/sns/game/util/LogicalHandleCallBack;

    aget-object v2, v3, v0

    .line 297
    .local v2, "lglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v2}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 299
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getButtonTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 295
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setCancelable(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->createSelf()V

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public recycleSelf()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->touchEnabled:Z

    .line 133
    return-void
.end method

.method public setButtonTag(I)V
    .locals 0
    .param p1, "buttonTag"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->buttonTag:I

    .line 51
    return-void
.end method

.method public varargs setCancelCallBackSequence([Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "sequence"    # [Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->cancelCallBackSequence:[Lcom/sns/game/util/LogicalHandleCallBack;

    .line 308
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->touchEnabled:Z

    .line 62
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 96
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 100
    :cond_0
    return-void
.end method

.method public updateWindow()V
    .locals 5

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 139
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 140
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x43d98000    # 435.0f

    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_X:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 141
    const v3, 0x43828000    # 261.0f

    sget v4, Lcom/sns/game/util/DeviceManager;->SCALE_Y:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 142
    const v3, 0x7f020146

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
