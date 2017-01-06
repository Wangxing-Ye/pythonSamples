.class public Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;
.super Ljava/lang/Object;
.source "CynosTempSdkDelegate.java"

# interfaces
.implements Lcom/sns/game/sdk/third/SdkDelegateTemplate;


# static fields
.field private static final APPID:Ljava/lang/String; = "300007750581"

.field private static final APPKEY:Ljava/lang/String; = "A5CF8EE427F728E2"

.field private static _delegate:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

.field public static exdata:Ljava/lang/String;

.field public static exdata1:Ljava/lang/String;

.field static mListener:Lcom/sns/game/sdk/third/IAPListener;

.field private static final smsCode:[Ljava/lang/String;

.field private static final smsDesc:[Ljava/lang/String;

.field private static final woStoreID:[Ljava/lang/String;

.field private static final woStoreID1:[Ljava/lang/String;


# instance fields
.field billingResult:Ljava/lang/String;

.field payParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public purchase:Lmm/purchasesdk/Purchase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    invoke-direct {v0}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;-><init>()V

    sput-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->_delegate:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    .line 87
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TOOL18"

    aput-object v1, v0, v3

    const-string v1, "TOOL14"

    aput-object v1, v0, v4

    const-string v1, "5151312"

    aput-object v1, v0, v5

    const-string v1, "5151313"

    aput-object v1, v0, v6

    const-string v1, "5151314"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5151315"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "5151316"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TOOL15"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "5151318"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "5151319"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "5151320"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TOOL16"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TOOL17"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "5151318"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsCode:[Ljava/lang/String;

    .line 88
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6b66\u5668\u793c\u5305"

    aput-object v1, v0, v3

    const-string v1, "\u589e\u52a0\u571f\u8c46\u70ae\u6570\u91cf"

    aput-object v1, v0, v4

    const-string v1, "\u589e\u52a0\u6bd2\u8611\u83c7\u6570\u91cf"

    aput-object v1, v0, v5

    const-string v1, "\u589e\u52a0\u4ed9\u4eba\u638c\u6570\u91cf"

    aput-object v1, v0, v6

    const-string v1, "\u589e\u52a0\u897f\u74dc\u70ae\u6570\u91cf"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u589e\u52a0\u6625\u54e5\u70ae\u6570\u91cf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u589e\u52a0\u91d1\u5e01500"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u589e\u52a0\u91d1\u5e011500"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u589e\u52a0\u91d1\u5e014000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5f69\u91d1\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5b88\u62a4\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u53ec\u5524\u5de8\u9f99"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u9650\u65f6\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u7279\u4ef7\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u589e\u52a0\u91d1\u5e014000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsDesc:[Ljava/lang/String;

    .line 92
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "024"

    aput-object v1, v0, v3

    const-string v1, "020"

    aput-object v1, v0, v4

    const-string v1, "008"

    aput-object v1, v0, v5

    const-string v1, "009"

    aput-object v1, v0, v6

    const-string v1, "010"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "011"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "012"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "021"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "014"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "015"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "016"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "022"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "023"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "025"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "014"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "905321727320140207170304904200024"

    aput-object v1, v0, v3

    const-string v1, "905321727320140207170304904200020"

    aput-object v1, v0, v4

    const-string v1, "905321727320140207170304904200008"

    aput-object v1, v0, v5

    const-string v1, "905321727320140207170304904200009"

    aput-object v1, v0, v6

    const-string v1, "905321727320140207170304904200010"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "905321727320140207170304904200011"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "905321727320140207170304904200012"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "905321727320140207170304904200021"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "905321727320140207170304904200014"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "905321727320140207170304904200015"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "905321727320140207170304904200016"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "905321727320140207170304904200022"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "905321727320140207170304904200023"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "905321727320140207170304904200025"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "905321727320140207170304904200014"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID1:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->payParams:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsCode:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID1:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->_delegate:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    return-object v0
.end method

.method private varargs normalPay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "payId"    # I
    .param p3, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->getMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata:Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata:Ljava/lang/String;

    const/16 v3, 0x8

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    .line 119
    sput-boolean v5, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 120
    sget v2, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-nez v2, :cond_1

    .line 122
    sget-object v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->mListener:Lcom/sns/game/sdk/third/IAPListener;

    invoke-virtual {v2, p3}, Lcom/sns/game/sdk/third/IAPListener;->setResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V

    .line 123
    sget-object v2, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->_delegate:Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    invoke-virtual {v2, p2}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->getBillingCode(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->mListener:Lcom/sns/game/sdk/third/IAPListener;

    invoke-virtual {p0, p1, v2, v3}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget v2, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-ne v2, v5, :cond_2

    .line 128
    new-instance v0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$1;-><init>(Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;I)V

    .line 153
    .local v0, "callBack":Lcn/egame/terminal/paysdk/EgamePayListener;
    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->payParams:Ljava/util/HashMap;

    const-string v3, "toolsAlias"

    sget-object v4, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsCode:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->payParams:Ljava/util/HashMap;

    const-string v3, "toolsDesc"

    sget-object v4, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->smsDesc:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->payParams:Ljava/util/HashMap;

    invoke-static {p1, v2, v0}, Lcn/egame/terminal/paysdk/EgamePay;->pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    goto :goto_0

    .line 157
    .end local v0    # "callBack":Lcn/egame/terminal/paysdk/EgamePayListener;
    :cond_2
    sget v2, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 158
    new-instance v1, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate$2;-><init>(Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;I)V

    .line 186
    .local v1, "callback":Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v2

    sget-object v3, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->woStoreID:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, p1, v3, v1}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs dopay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "payId"    # I
    .param p3, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->normalPay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public exitGame(Landroid/app/Activity;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    .line 438
    move-object v0, p1

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 439
    .local v0, "theApp":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->defaultExitGame()V

    .line 460
    return-void
.end method

.method public getBillingCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "payId"    # I

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 432
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 397
    :pswitch_0
    const-string v0, "30000775058142"

    goto :goto_0

    .line 399
    :pswitch_1
    const-string v0, "30000775058139"

    goto :goto_0

    .line 401
    :pswitch_2
    const-string v0, "30000775058126"

    goto :goto_0

    .line 403
    :pswitch_3
    const-string v0, "30000775058127"

    goto :goto_0

    .line 405
    :pswitch_4
    const-string v0, "30000775058138"

    goto :goto_0

    .line 407
    :pswitch_5
    const-string v0, "30000775058129"

    goto :goto_0

    .line 409
    :pswitch_6
    const-string v0, "30000775058130"

    goto :goto_0

    .line 411
    :pswitch_7
    const-string v0, "30000775058137"

    goto :goto_0

    .line 413
    :pswitch_8
    const-string v0, "30000775058132"

    goto :goto_0

    .line 415
    :pswitch_9
    const-string v0, "30000775058133"

    goto :goto_0

    .line 417
    :pswitch_a
    const-string v0, "30000775058134"

    goto :goto_0

    .line 419
    :pswitch_b
    const-string v0, "30000775058140"

    goto :goto_0

    .line 421
    :pswitch_c
    const-string v0, "30000775058141"

    goto :goto_0

    .line 423
    :pswitch_d
    const-string v0, ""

    goto :goto_0

    .line 425
    :pswitch_e
    const-string v0, ""

    goto :goto_0

    .line 427
    :pswitch_f
    const-string v0, "30000775058143"

    goto :goto_0

    .line 429
    :pswitch_10
    const-string v0, "30000775058132"

    goto :goto_0

    .line 395
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getPayDescInGame(I)Ljava/lang/String;
    .locals 4
    .param p1, "payId"    # I

    .prologue
    .line 234
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 235
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const v2, 0x7f0701fe

    invoke-virtual {v0, v2}, Lcom/sns/game/activity/GameActivityss;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "numberText":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 282
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 239
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b66\u5668\u793c\u5305 \u8d44\u8d3920\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u571f\u8c46\u70aex20\u4e2a \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 244
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6bd2\u8611\u83c7x20\u4e2a \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 246
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4ed9\u4eba\u638cx20\u4e2a \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 248
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u897f\u74dc\u70aex20\u4e2a \u8d44\u8d394\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 250
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6625\u54e5\u70aex20\u4e2a \u8d44\u8d394\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 253
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d2d\u4e70500\u91d1\u5e01 \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 255
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d2d\u4e701500\u91d1\u5e01 \u8d44\u8d396\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 257
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d2d\u4e704000\u91d1\u5e01 \u8d44\u8d3910\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 260
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fdb\u5165\u5f69\u91d1\u6a21\u5f0f \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 262
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fdb\u5165\u5b88\u62a4\u6a21\u5f0f \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 265
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53ec\u5524\u5de8\u9f99 \u8d44\u8d392\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 268
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9650\u65f6\u793c\u5305 \u8d44\u8d3929\u5143 ,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 270
    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60ca\u559c\u793c\u5305 \u8d44\u8d3929\u5143 ,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 272
    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d85\u503c\u793c\u5305 \u8d44\u8d3929\u5143 ,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 275
    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7279\u4ef7\u793c\u5305 \u8d44\u8d390.1\u5143 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 279
    :pswitch_10
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 236
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getPayMoney(I)I
    .locals 4
    .param p1, "payId"    # I

    .prologue
    const/4 v2, 0x4

    const/16 v3, 0x1d

    const/4 v1, 0x2

    .line 342
    const/4 v0, 0x1

    .line 343
    .local v0, "conv_value":I
    packed-switch p1, :pswitch_data_0

    .line 389
    :pswitch_0
    const/4 v1, -0x1

    :goto_0
    :pswitch_1
    return v1

    .line 347
    :pswitch_2
    const/16 v1, 0x14

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 356
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 358
    goto :goto_0

    .line 363
    :pswitch_5
    const/4 v1, 0x6

    goto :goto_0

    .line 365
    :pswitch_6
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_7
    move v1, v3

    .line 376
    goto :goto_0

    :pswitch_8
    move v1, v3

    .line 378
    goto :goto_0

    :pswitch_9
    move v1, v3

    .line 380
    goto :goto_0

    .line 387
    :pswitch_a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->getPayMoney(I)I

    move-result v1

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public getPayMsg(II)Ljava/lang/String;
    .locals 2
    .param p1, "payId"    # I
    .param p2, "tag"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 293
    :pswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "\u6b66\u5668\u793c\u5305"

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const-string v0, "\u6b66\u5668\u793c\u5305"

    goto :goto_0

    :cond_1
    const-string v0, "\u6b66\u5668\u793c\u5305 \u8d44\u8d3920\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 296
    :pswitch_1
    if-ne p2, v0, :cond_2

    const-string v0, "\u8d2d\u4e70\u571f\u8c46\u70aex20\u4e2a"

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    const-string v0, "\u8d2d\u4e70\u571f\u8c46\u70aex20\u4e2a"

    goto :goto_0

    :cond_3
    const-string v0, "\u8d2d\u4e70\u571f\u8c46\u70aex20\u4e2a \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 298
    :pswitch_2
    if-ne p2, v0, :cond_4

    const-string v0, "\u8d2d\u4e70\u6bd2\u8611\u83c7x20\u4e2a"

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    const-string v0, "\u8d2d\u4e70\u6bd2\u8611\u83c7x20\u4e2a"

    goto :goto_0

    :cond_5
    const-string v0, "\u8d2d\u4e70\u6bd2\u8611\u83c7x20\u4e2a \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 300
    :pswitch_3
    if-ne p2, v0, :cond_6

    const-string v0, "\u8d2d\u4e70\u4ed9\u4eba\u638cx20\u4e2a"

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    const-string v0, "\u8d2d\u4e70\u4ed9\u4eba\u638cx20\u4e2a"

    goto :goto_0

    :cond_7
    const-string v0, "\u8d2d\u4e70\u4ed9\u4eba\u638cx20\u4e2a \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 302
    :pswitch_4
    if-ne p2, v0, :cond_8

    const-string v0, "\u8d2d\u4e70\u897f\u74dc\u70aex20\u4e2a"

    goto :goto_0

    :cond_8
    if-ne p2, v1, :cond_9

    const-string v0, "\u8d2d\u4e70\u897f\u74dc\u70aex20\u4e2a"

    goto :goto_0

    :cond_9
    const-string v0, "\u8d2d\u4e70\u897f\u74dc\u70aex20\u4e2a \u8d44\u8d394\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 304
    :pswitch_5
    if-ne p2, v0, :cond_a

    const-string v0, "\u8d2d\u4e70\u6625\u54e5\u70aex20\u4e2a"

    goto :goto_0

    :cond_a
    if-ne p2, v1, :cond_b

    const-string v0, "\u8d2d\u4e70\u6625\u54e5\u70aex20\u4e2a"

    goto :goto_0

    :cond_b
    const-string v0, "\u8d2d\u4e70\u6625\u54e5\u70aex20\u4e2a \u8d44\u8d394\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 307
    :pswitch_6
    if-ne p2, v0, :cond_c

    const-string v0, "\u8d2d\u4e70500\u91d1\u5e01"

    goto :goto_0

    :cond_c
    if-ne p2, v1, :cond_d

    const-string v0, "\u8d2d\u4e70500\u91d1\u5e01"

    goto :goto_0

    :cond_d
    const-string v0, "\u8d2d\u4e70500\u91d1\u5e01 \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 309
    :pswitch_7
    if-ne p2, v0, :cond_e

    const-string v0, "\u8d2d\u4e701500\u91d1\u5e01"

    goto :goto_0

    :cond_e
    if-ne p2, v1, :cond_f

    const-string v0, "\u8d2d\u4e701500\u91d1\u5e01"

    goto :goto_0

    :cond_f
    const-string v0, "\u8d2d\u4e701500\u91d1\u5e01 \u8d44\u8d396\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 311
    :pswitch_8
    if-ne p2, v0, :cond_10

    const-string v0, "\u8d2d\u4e704000\u91d1\u5e01"

    goto :goto_0

    :cond_10
    if-ne p2, v1, :cond_11

    const-string v0, "\u8d2d\u4e704000\u91d1\u5e01"

    goto :goto_0

    :cond_11
    const-string v0, "\u8d2d\u4e704000\u91d1\u5e01 \u8d44\u8d3910\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto :goto_0

    .line 314
    :pswitch_9
    if-ne p2, v0, :cond_12

    const-string v0, "\u5f69\u91d1\u6a21\u5f0f"

    goto :goto_0

    :cond_12
    if-ne p2, v1, :cond_13

    const-string v0, "\u5f69\u91d1\u6a21\u5f0f"

    goto :goto_0

    :cond_13
    const-string v0, "\u8fdb\u5165\u5f69\u91d1\u6a21\u5f0f \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 316
    :pswitch_a
    if-ne p2, v0, :cond_14

    const-string v0, "\u5b88\u62a4\u6a21\u5f0f"

    goto/16 :goto_0

    :cond_14
    if-ne p2, v1, :cond_15

    const-string v0, "\u5b88\u62a4\u6a21\u5f0f"

    goto/16 :goto_0

    :cond_15
    const-string v0, "\u8fdb\u5165\u5b88\u62a4\u6a21\u5f0f \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 319
    :pswitch_b
    if-ne p2, v0, :cond_16

    const-string v0, "\u53ec\u5524\u5de8\u9f99"

    goto/16 :goto_0

    :cond_16
    if-ne p2, v1, :cond_17

    const-string v0, "\u53ec\u5524\u5de8\u9f99"

    goto/16 :goto_0

    :cond_17
    const-string v0, "\u53ec\u5524\u5de8\u9f99 \u8d44\u8d392\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 322
    :pswitch_c
    if-ne p2, v0, :cond_18

    const-string v0, "\u9650\u65f6\u793c\u5305"

    goto/16 :goto_0

    :cond_18
    if-ne p2, v1, :cond_19

    const-string v0, "\u9650\u65f6\u793c\u5305"

    goto/16 :goto_0

    :cond_19
    const-string v0, "\u9650\u65f6\u793c\u5305 \u8d44\u8d3929\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 324
    :pswitch_d
    if-ne p2, v0, :cond_1a

    const-string v0, "\u60ca\u559c\u793c\u5305"

    goto/16 :goto_0

    :cond_1a
    if-ne p2, v1, :cond_1b

    const-string v0, "\u60ca\u559c\u793c\u5305"

    goto/16 :goto_0

    :cond_1b
    const-string v0, "\u60ca\u559c\u793c\u5305 \u8d44\u8d3929\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 326
    :pswitch_e
    if-ne p2, v0, :cond_1c

    const-string v0, "\u8d85\u503c\u793c\u5305"

    goto/16 :goto_0

    :cond_1c
    if-ne p2, v1, :cond_1d

    const-string v0, "\u8d85\u503c\u793c\u5305"

    goto/16 :goto_0

    :cond_1d
    const-string v0, "\u8d85\u503c\u793c\u5305 \u8d44\u8d3929\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 329
    :pswitch_f
    if-ne p2, v0, :cond_1e

    const-string v0, "\u7279\u4ef7\u793c\u5305"

    goto/16 :goto_0

    :cond_1e
    if-ne p2, v1, :cond_1f

    const-string v0, "\u7279\u4ef7\u793c\u5305"

    goto/16 :goto_0

    :cond_1f
    const-string v0, "\u7279\u4ef7\u793c\u5305 \u8d44\u8d390.1\u5143, \u70b9\u51fb\u786e\u5b9a\u5f00\u59cb\u652f\u4ed8"

    goto/16 :goto_0

    .line 333
    :pswitch_10
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->getPayMsg(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 289
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public loadSdk(Landroid/app/Activity;)V
    .locals 7
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 57
    sget v3, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-nez v3, :cond_0

    .line 59
    new-instance v2, Lcom/sns/game/sdk/third/IAPHandler;

    invoke-direct {v2, p1}, Lcom/sns/game/sdk/third/IAPHandler;-><init>(Landroid/app/Activity;)V

    .line 61
    .local v2, "iapHandler":Lcom/sns/game/sdk/third/IAPHandler;
    new-instance v3, Lcom/sns/game/sdk/third/IAPListener;

    invoke-direct {v3, p1, v2}, Lcom/sns/game/sdk/third/IAPListener;-><init>(Landroid/content/Context;Lcom/sns/game/sdk/third/IAPHandler;)V

    sput-object v3, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->mListener:Lcom/sns/game/sdk/third/IAPListener;

    .line 62
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v3

    iput-object v3, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->purchase:Lmm/purchasesdk/Purchase;

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->purchase:Lmm/purchasesdk/Purchase;

    const-string v4, "300007750581"

    const-string v5, "A5CF8EE427F728E2"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->purchase:Lmm/purchasesdk/Purchase;

    sget-object v4, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->mListener:Lcom/sns/game/sdk/third/IAPListener;

    invoke-virtual {v3, p1, v4}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v2    # "iapHandler":Lcom/sns/game/sdk/third/IAPHandler;
    :goto_1
    return-void

    .line 66
    .restart local v2    # "iapHandler":Lcom/sns/game/sdk/third/IAPHandler;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iapHandler":Lcom/sns/game/sdk/third/IAPHandler;
    :cond_0
    sget v3, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-ne v3, v4, :cond_1

    .line 79
    invoke-static {p1}, Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/content/Context;)V

    goto :goto_1

    .line 81
    :cond_1
    sget v3, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    goto :goto_1
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPaycode"    # Ljava/lang/String;
    .param p3, "listener"    # Lmm/purchasesdk/OnPurchaseListener;

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->purchase:Lmm/purchasesdk/Purchase;

    const/4 v3, 0x1

    sget-object v4, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->exdata1:Ljava/lang/String;

    const/4 v5, 0x1

    sget-object v6, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->mListener:Lcom/sns/game/sdk/third/IAPListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
