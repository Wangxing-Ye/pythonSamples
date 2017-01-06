.class public Lcom/sns/game/sdk/third/ThirdSdkDelegate;
.super Ljava/lang/Object;
.source "ThirdSdkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;,
        Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    }
.end annotation


# static fields
.field public static final PRICIING_POINT_01:I = 0x0

.field public static final PRICIING_POINT_02:I = 0x1

.field public static final PRICIING_POINT_03:I = 0x2

.field public static final PRICIING_POINT_04:I = 0x3

.field public static final PRICIING_POINT_05:I = 0x4

.field public static final PRICIING_POINT_06:I = 0x5

.field public static final PRICIING_POINT_07:I = 0x6

.field public static final PRICIING_POINT_08:I = 0x7

.field public static final PRICIING_POINT_09:I = 0x8

.field public static final PRICIING_POINT_10:I = 0x9

.field public static final PRICIING_POINT_11:I = 0xa

.field public static final PRICIING_POINT_12:I = 0xb

.field public static final PRICIING_POINT_13:I = 0xc

.field public static final PRICIING_POINT_14:I = 0xd

.field public static final PRICIING_POINT_15:I = 0xe

.field public static final PRICIING_POINT_16:I = 0xf

.field public static final PRICIING_POINT_17:I = 0x10

.field private static delegate_:Lcom/sns/game/sdk/third/ThirdSdkDelegate;


# instance fields
.field private billingDataMapping:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    invoke-direct {v0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;-><init>()V

    sput-object v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate_:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->billingDataMapping:Ljava/util/HashMap;

    .line 36
    invoke-virtual {p0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->initBillingData()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct/range {p0 .. p8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccShowDebugPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    return-void
.end method

.method private activateDebugPayDialog(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 2
    .param p1, "pricingPoint"    # I
    .param p2, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 263
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 264
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$3;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;ILcom/sns/game/activity/GameActivityss;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V

    .line 273
    return-void
.end method

.method private ccShowDebugPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 2
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "glViewNoPause"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "btnText1"    # Ljava/lang/String;
    .param p6, "btnText2"    # Ljava/lang/String;
    .param p7, "btnText3"    # Ljava/lang/String;
    .param p8, "callBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 351
    sput-boolean p2, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 352
    invoke-static {p1}, Lcom/sns/game/dialog/system/GameAlertBuilder;->alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p3}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$7;

    invoke-direct {v1, p0, p8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$7;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 355
    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;

    invoke-direct {v1, p0, p8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$8;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 370
    invoke-virtual {v0, p6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;

    invoke-direct {v1, p0, p8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$9;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 385
    invoke-virtual {v0, p7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 401
    return-void
.end method

.method private ccShowTestPayDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 2
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "glViewNoPause"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "btnText1"    # Ljava/lang/String;
    .param p6, "btnText2"    # Ljava/lang/String;
    .param p7, "payCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p8, "bCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 311
    sput-boolean p2, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 312
    invoke-static {p1}, Lcom/sns/game/dialog/system/GameAlertBuilder;->alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p3}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;

    invoke-direct {v1, p0, p7}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$5;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 315
    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$6;

    invoke-direct {v1, p0, p8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$6;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 330
    invoke-virtual {v0, p6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 346
    return-void
.end method

.method public static delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate_:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    return-object v0
.end method

.method private doPayWithLglCallBack(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "payId"    # I
    .param p3, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 252
    new-instance v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$2;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    return-object v0
.end method

.method private getBillingData(I)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .locals 2
    .param p1, "point"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->billingDataMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    return-object v0
.end method

.method private put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "point"    # I
    .param p2, "tagUI"    # I
    .param p3, "resBtn"    # Ljava/lang/String;
    .param p4, "resDesc"    # Ljava/lang/String;
    .param p5, "resImg"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->billingDataMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p5}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->create(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method


# virtual methods
.method public ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .locals 1
    .param p1, "layer"    # Lorg/cocos2d/layers/CCLayer;
    .param p2, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;
    .param p3, "lglCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 278
    new-instance v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/util/LogicalHandleCallBack;Lorg/cocos2d/menus/CCMenuItemSprite;Lorg/cocos2d/layers/CCLayer;)V

    return-object v0
.end method

.method public copyBData(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .locals 2
    .param p1, "copyData"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    .prologue
    .line 426
    new-instance v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    invoke-direct {v0, p0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;)V

    .line 427
    .local v0, "data":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    iget v1, p1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->point:I

    iput v1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->point:I

    .line 428
    iget v1, p1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->tagUI:I

    iput v1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->tagUI:I

    .line 429
    iget-object v1, p1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resBtn:Ljava/lang/String;

    iput-object v1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resBtn:Ljava/lang/String;

    .line 430
    iget-object v1, p1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resDesc:Ljava/lang/String;

    .line 431
    iget-object v1, p1, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resImg:Ljava/lang/String;

    iput-object v1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resImg:Ljava/lang/String;

    .line 432
    return-object v0
.end method

.method public create(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .locals 1
    .param p1, "point"    # I
    .param p2, "tagUI"    # I
    .param p3, "resBtn"    # Ljava/lang/String;
    .param p4, "resDesc"    # Ljava/lang/String;
    .param p5, "resImg"    # Ljava/lang/String;

    .prologue
    .line 416
    new-instance v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    invoke-direct {v0, p0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;)V

    .line 417
    .local v0, "data":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    iput p1, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->point:I

    .line 418
    iput p2, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->tagUI:I

    .line 419
    iput-object p3, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resBtn:Ljava/lang/String;

    .line 420
    iput-object p4, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resDesc:Ljava/lang/String;

    .line 421
    iput-object p5, v0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->resImg:Ljava/lang/String;

    .line 422
    return-object v0
.end method

.method public getPricingPointBy(I)I
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 436
    packed-switch p1, :pswitch_data_0

    .line 455
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 438
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 442
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 444
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 446
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 449
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 451
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 453
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x2720
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public initBillingData()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v6, "Billing_Dialog_Btn_Bc.png"

    const-string v7, "Billing_Dialog_PointDesc_Tdp.png"

    const-string v8, "Billing_Dialog_PointImg_Tdp.png"

    move-object v3, p0

    move v4, v2

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v4, 0x2

    const-string v6, "Billing_Dialog_Btn_Bc.png"

    const-string v7, "Billing_Dialog_PointDesc_Dmg.png"

    const-string v8, "Billing_Dialog_PointImg_Dmg.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v4, 0x3

    const-string v6, "Billing_Dialog_Btn_Bc.png"

    const-string v7, "Billing_Dialog_PointDesc_Xrz.png"

    const-string v8, "Billing_Dialog_PointImg_Xrz.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v4, 0x4

    const-string v6, "Billing_Dialog_Btn_Bc.png"

    const-string v7, "Billing_Dialog_PointDesc_Xgp.png"

    const-string v8, "Billing_Dialog_PointImg_Xgp.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v4, 0x5

    const-string v6, "Billing_Dialog_Btn_Bc.png"

    const-string v7, "Billing_Dialog_PointDesc_Cgp.png"

    const-string v8, "Billing_Dialog_PointImg_Cgp.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v4, 0x6

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x7

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v4, 0x8

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v4, 0x9

    const-string v6, "Billing_Dialog_Btn_Jr.png"

    const-string v7, "Billing_Dialog_PointDesc_Cjms.png"

    const-string v8, "Billing_Dialog_PointImg_Cjms.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v4, 0xa

    const-string v6, "Billing_Dialog_Btn_Jr.png"

    const-string v7, "Billing_Dialog_PointDesc_Shms.png"

    const-string v8, "Billing_Dialog_PointImg_Shms.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v4, 0xb

    const-string v6, "Billing_Dialog_Btn_Zh.png"

    const-string v7, "Billing_Dialog_PointDesc_Zh.png"

    const-string v8, "Billing_Dialog_PointImg_Zh.png"

    move-object v3, p0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v4, 0xc

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v4, 0xd

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v4, 0xe

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v4, 0xf

    const-string v6, "Billing_Dialog_Btn_Cj.png"

    const-string v7, "Billing_Dialog_PointDesc_Smcj.png"

    const-string v8, "Billing_Dialog_PointImg_Smcj.png"

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/16 v3, 0x10

    const-string v5, "Billing_Dialog_Btn_Confirm.png"

    const-string v6, ""

    const-string v7, "Billing_Dialog_PointImg_Gold4000.png"

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->put2Mapping(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public loadThirdSdk(Landroid/app/Activity;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v1

    .line 43
    .local v1, "sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sns/game/sdk/third/SdkManager;->loadSdk(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "sdkManager":Lcom/sns/game/sdk/third/SdkManager;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyBilling2ActivateGame(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 3
    .param p1, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 159
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->getBillingData(I)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    move-result-object v0

    .line 160
    .local v0, "bData":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "bData":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 7
    .param p1, "pricingPoint"    # I
    .param p2, "bData"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .param p3, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 205
    :try_start_0
    sget v6, Lcom/sns/game/util/GameConstant;->GAME_PLATFORM_TAG:I

    if-nez v6, :cond_1

    .line 206
    invoke-interface {p3}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingSuccess()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v2, 0x0

    .line 211
    .local v2, "checkTag":Z
    sget v6, Lcom/sns/game/util/GameConstant;->GAME_PLATFORM_TAG:I

    if-lez v6, :cond_2

    const/4 v2, 0x1

    .line 212
    :goto_1
    if-eqz v2, :cond_0

    .line 214
    iget v6, p2, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->tagUI:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sns/game/util/CCUtil;->findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;

    move-result-object v1

    .line 239
    .local v1, "caller":Lcom/sns/game/ui/CCGameLayer;
    invoke-static {v1, p2, p3}, Lcom/sns/game/sdk/ui/CCBillingDialog;->ccDialog(Lcom/sns/game/ui/CCGameLayer;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)Lcom/sns/game/sdk/ui/CCBillingDialog;

    move-result-object v3

    .line 240
    .local v3, "dialog":Lcom/sns/game/sdk/ui/CCBillingDialog;
    invoke-virtual {v3}, Lcom/sns/game/sdk/ui/CCBillingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1    # "caller":Lcom/sns/game/ui/CCGameLayer;
    .end local v2    # "checkTag":Z
    .end local v3    # "dialog":Lcom/sns/game/sdk/ui/CCBillingDialog;
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 211
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "checkTag":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 217
    :pswitch_1
    :try_start_1
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 218
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    move v5, p1

    .line 219
    .local v5, "payId":I
    new-instance v6, Lcom/sns/game/sdk/third/ThirdSdkDelegate$1;

    invoke-direct {v6, p0, v0, v5, p3}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$1;-><init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/activity/GameActivityss;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    invoke-virtual {v0, v6}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 1
    .param p1, "pricingPoint"    # I
    .param p2, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->getBillingData(I)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 181
    return-void
.end method

.method public notifyBilling2PayItem(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 3
    .param p1, "targetId"    # I
    .param p2, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->getPricingPointBy(I)I

    move-result v2

    .line 169
    .local v2, "pricingPoint":I
    invoke-direct {p0, v2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->getBillingData(I)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;

    move-result-object v0

    .line 170
    .local v0, "bData":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    invoke-virtual {p0, v2, v0, p2}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->notifyBilling2Pay(ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "bData":Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
    .end local v2    # "pricingPoint":I
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
