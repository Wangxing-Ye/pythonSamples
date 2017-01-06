.class public Lcom/sns/game/activity/GameActivityss;
.super Landroid/app/Activity;
.source "GameActivityss.java"


# static fields
.field private static final CWJ_HEAP_SIZE:I = 0x600000

.field private static final TARGET_HEAP_UTILIZATION:F = 0.75f

.field public static kefuPage:Landroid/os/Handler;


# instance fields
.field private _glSurfaceView:Lorg/cocos2d/opengl/CCGLSurfaceView;

.field private handler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field prgsDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 696
    new-instance v0, Lcom/sns/game/activity/GameActivityss$1;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$1;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    iput-object v0, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->initAds()V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->onCreateContentCCScene()V

    return-void
.end method

.method static synthetic access$2(Lcom/sns/game/activity/GameActivityss;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->getNetWorkTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/sns/game/activity/GameActivityss$6;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$6;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    return-object v0
.end method

.method private getNetWorkTime()Ljava/lang/String;
    .locals 13

    .prologue
    .line 604
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 605
    .local v7, "pattern":Ljava/lang/String;
    const-string v2, "1970-01-01"

    .line 608
    .local v2, "errorTime":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v10, "http://www.bjtime.cn"

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 610
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 612
    .local v8, "uc":Ljava/net/URLConnection;
    const/16 v10, 0x5dc

    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 614
    const/16 v10, 0x5dc

    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 616
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 617
    invoke-virtual {v8}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v3

    .line 618
    .local v3, "ld":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 619
    .local v0, "converDate":Ljava/util/Date;
    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v10}, Lcom/sns/game/util/CCUtil;->formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, "netDateTime":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v6, v10, v11

    .line 621
    .local v6, "netYearTime":Ljava/lang/String;
    const-string v10, "1970-01-01"

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 623
    const-string v10, "Test"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "errorTime: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->getNetWorkTime()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 636
    .end local v0    # "converDate":Ljava/util/Date;
    .end local v3    # "ld":J
    .end local v5    # "netDateTime":Ljava/lang/String;
    .end local v6    # "netYearTime":Ljava/lang/String;
    .end local v8    # "uc":Ljava/net/URLConnection;
    .end local v9    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 628
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 631
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initAds()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v0

    new-instance v1, Lcom/sns/game/activity/GameActivityss$4;

    invoke-direct {v1, p0}, Lcom/sns/game/activity/GameActivityss$4;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    invoke-virtual {v0, p0, v1}, Lcom/duoku/platform/single/DKPlatform;->bdgameInit(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    .line 176
    return-void
.end method

.method private initSDK()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 139
    new-instance v6, Lcom/sns/game/activity/GameActivityss$3;

    invoke-direct {v6, p0}, Lcom/sns/game/activity/GameActivityss$3;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    .line 160
    .local v6, "initcompletelistener":Lcom/duoku/platform/single/callback/IDKSDKCallBack;
    new-instance v8, Lcom/duoku/platform/single/item/DKCMMMData;

    const-string v0, "30000834443901"

    const-string v1, "AF54ED9926C2ADAF"

    invoke-direct {v8, v0, v1}, Lcom/duoku/platform/single/item/DKCMMMData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v8, "mmData":Lcom/duoku/platform/single/item/DKCMMMData;
    new-instance v7, Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-direct {v7}, Lcom/duoku/platform/single/item/DKCMGBData;-><init>()V

    .line 165
    .local v7, "gbData":Lcom/duoku/platform/single/item/DKCMGBData;
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/DKPlatform;->init(Landroid/app/Activity;ZLcom/duoku/platform/single/DKPlatformSettings$SdkMode;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    .line 166
    return-void
.end method

.method private onCreateContentCCScene()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v0

    .line 215
    .local v0, "scene":Lorg/cocos2d/layers/CCScene;
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccLayer()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 216
    invoke-static {v0}, Lcom/sns/game/util/DeviceManager;->setCocos2dViewWinSize(Lorg/cocos2d/nodes/CCNode;)V

    .line 217
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCDirector;->runWithScene(Lorg/cocos2d/layers/CCScene;)V

    .line 219
    return-void
.end method

.method private onCreateContentCCSceneEgame()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lorg/cocos2d/layers/CCScene;->node()Lorg/cocos2d/layers/CCScene;

    move-result-object v0

    .line 224
    .local v0, "scene":Lorg/cocos2d/layers/CCScene;
    invoke-static {}, Lcom/sns/game/layer/CCLogoLayer;->layer()Lcom/sns/game/layer/CCLogoLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCScene;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 225
    invoke-static {v0}, Lcom/sns/game/util/DeviceManager;->setCocos2dViewWinSize(Lorg/cocos2d/nodes/CCNode;)V

    .line 226
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCDirector;->runWithScene(Lorg/cocos2d/layers/CCScene;)V

    .line 228
    return-void
.end method

.method private onCreateContentView()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/activity/GameActivityss;->_glSurfaceView:Lorg/cocos2d/opengl/CCGLSurfaceView;

    .line 207
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/activity/GameActivityss;->_glSurfaceView:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCDirector;->attachInView(Landroid/view/View;)Z

    .line 208
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/DeviceManager;->setDeviceWindowSize(Lorg/cocos2d/types/CGSize;)V

    .line 209
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->_glSurfaceView:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/sns/game/activity/GameActivityss;->setContentView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method private putBundleData(Landroid/os/Message;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .local v0, "bundle":Landroid/os/Bundle;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 676
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 677
    check-cast p2, Ljava/lang/String;

    .line 676
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    :goto_0
    return-object v0

    .line 679
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 681
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 681
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 684
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 685
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    check-cast p2, [Ljava/lang/String;

    .line 685
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 688
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Landroid/os/Parcelable;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 689
    check-cast v1, Landroid/os/Parcelable;

    .line 690
    .local v1, "pace":Landroid/os/Parcelable;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private resumeRuningLayer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 333
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 334
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewGameLayer;->isGamePause()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/layer/CCNewGameLayer;->onGameResume()V

    .line 337
    :cond_0
    const/4 v2, 0x1

    .line 338
    .local v2, "updateLock":Z
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v1

    .line 339
    .local v1, "target":Lcom/sns/game/layer/CCNewGameLayer;
    const-string v0, "callBack_selector_updateGold"

    .line 340
    .local v0, "selector":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/sns/game/database/bean/UserState;->activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    .end local v0    # "selector":Ljava/lang/String;
    .end local v1    # "target":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v2    # "updateLock":Z
    :cond_1
    return-void
.end method

.method private showGameAboutDialog(Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 3
    .param p1, "targetTag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 885
    invoke-static {p0}, Lcom/sns/game/dialog/system/GameAlertBuilder;->alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;

    move-result-object v0

    .line 886
    const-string v1, "\u5173\u4e8e"

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 887
    const-string v1, "\u8fd4\u56de"

    new-instance v2, Lcom/sns/game/activity/GameActivityss$11;

    invoke-direct {v2, p0, p1}, Lcom/sns/game/activity/GameActivityss$11;-><init>(Lcom/sns/game/activity/GameActivityss;Lcom/sns/game/util/GameConstant$LayerTag;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 900
    return-void
.end method

.method private takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/sns/game/activity/GameActivityss$5;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$5;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    return-object v0
.end method

.method private withCallBackMsg(Landroid/os/Parcelable;I)Landroid/os/Message;
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;
    .param p2, "msgWhat"    # I

    .prologue
    .line 939
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 940
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 941
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 942
    .local v0, "bundle":Landroid/os/Bundle;
    iget v2, v1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 943
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 944
    return-object v1
.end method


# virtual methods
.method public activateCallBackToMsg(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 967
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 968
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x10c10c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 969
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 970
    .local v0, "bundle":Landroid/os/Bundle;
    iget v2, v1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 971
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 972
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 973
    return-void
.end method

.method public activateCallBackToMsgDelayed(Landroid/os/Parcelable;J)V
    .locals 2
    .param p1, "pare"    # Landroid/os/Parcelable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 953
    const v1, 0x10c10c

    invoke-direct {p0, p1, v1}, Lcom/sns/game/activity/GameActivityss;->withCallBackMsg(Landroid/os/Parcelable;I)Landroid/os/Message;

    move-result-object v0

    .line 954
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 955
    return-void
.end method

.method public activateCallBackToThread(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 958
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 959
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x11c11c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 960
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v0, "bundle":Landroid/os/Bundle;
    iget v2, v1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 962
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 963
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 964
    return-void
.end method

.method public activateCallBackToThreadDelayed(Landroid/os/Parcelable;J)V
    .locals 2
    .param p1, "pare"    # Landroid/os/Parcelable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 948
    const v1, 0x11c11c

    invoke-direct {p0, p1, v1}, Lcom/sns/game/activity/GameActivityss;->withCallBackMsg(Landroid/os/Parcelable;I)Landroid/os/Message;

    move-result-object v0

    .line 949
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 950
    return-void
.end method

.method public activateGameAlertDialog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 2
    .param p1, "glViewNoPause"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "confirm"    # Ljava/lang/String;
    .param p5, "cancel"    # Ljava/lang/String;
    .param p6, "positiveCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p7, "negativeCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 908
    sput-boolean p1, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 910
    invoke-static {p0}, Lcom/sns/game/dialog/system/GameAlertBuilder;->alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;

    move-result-object v0

    .line 911
    invoke-virtual {v0, p2}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 912
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 914
    new-instance v1, Lcom/sns/game/activity/GameActivityss$12;

    invoke-direct {v1, p0, p6}, Lcom/sns/game/activity/GameActivityss$12;-><init>(Lcom/sns/game/activity/GameActivityss;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 913
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 925
    new-instance v1, Lcom/sns/game/activity/GameActivityss$13;

    invoke-direct {v1, p0, p7}, Lcom/sns/game/activity/GameActivityss$13;-><init>(Lcom/sns/game/activity/GameActivityss;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 924
    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 936
    return-void
.end method

.method public asMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 666
    invoke-direct {p0, v0, p2}, Lcom/sns/game/activity/GameActivityss;->putBundleData(Landroid/os/Message;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 667
    return-object v0
.end method

.method public checkNetWork()V
    .locals 3

    .prologue
    .line 571
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sns/game/activity/GameActivityss$10;

    invoke-direct {v2, p0}, Lcom/sns/game/activity/GameActivityss$10;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 594
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public closeProgressDialog()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1029
    :cond_0
    return-void
.end method

.method public closeProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 1017
    new-instance v0, Lcom/sns/game/activity/GameActivityss$16;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$16;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    return-object v0
.end method

.method public defaultExitGame()V
    .locals 4

    .prologue
    .line 519
    :try_start_0
    invoke-static {p0}, Lcom/sns/game/dialog/system/GameAlertBuilder;->alertBuilder(Landroid/content/Context;)Lcom/sns/game/dialog/system/GameAlertBuilder;

    move-result-object v1

    .line 520
    const-string v2, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v1, v2}, Lcom/sns/game/dialog/system/GameAlertBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u662f\u5426\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 521
    const-string v2, "\u786e\u5b9a"

    .line 522
    new-instance v3, Lcom/sns/game/activity/GameActivityss$8;

    invoke-direct {v3, p0}, Lcom/sns/game/activity/GameActivityss$8;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    .line 521
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 539
    const-string v2, "\u8fd4\u56de"

    .line 540
    new-instance v3, Lcom/sns/game/activity/GameActivityss$9;

    invoke-direct {v3, p0}, Lcom/sns/game/activity/GameActivityss$9;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    .line 539
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method

.method public dispatchLogicalHandleCallBack(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 806
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 807
    .local v3, "parce":Landroid/os/Parcelable;
    if-nez v3, :cond_0

    .line 813
    .end local v3    # "parce":Landroid/os/Parcelable;
    :goto_0
    return-void

    .line 808
    .restart local v3    # "parce":Landroid/os/Parcelable;
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/sns/game/util/LogicalHandleCallBack;

    move-object v1, v0

    .line 809
    .local v1, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v1    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v3    # "parce":Landroid/os/Parcelable;
    :catch_0
    move-exception v2

    .line 811
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disposeHandlerMsg_ExtensionDialog(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 851
    sput-boolean v4, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 854
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 855
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "splitDatas":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 866
    .local v0, "dialogTag":Ljava/lang/String;
    const-string v4, "GAME_ABOUT"

    .line 867
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 869
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/sns/game/util/GameConstant$LayerTag;->valueOf(Ljava/lang/String;)Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v3

    .line 870
    .local v3, "targetTag":Lcom/sns/game/util/GameConstant$LayerTag;
    invoke-direct {p0, v3}, Lcom/sns/game/activity/GameActivityss;->showGameAboutDialog(Lcom/sns/game/util/GameConstant$LayerTag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .end local v0    # "dialogTag":Ljava/lang/String;
    .end local v2    # "splitDatas":[Ljava/lang/String;
    .end local v3    # "targetTag":Lcom/sns/game/util/GameConstant$LayerTag;
    :cond_0
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v1

    .line 875
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public disposeHandlerMsg_GameSceneSystem(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 834
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/database/bean/GameSceneSystem;->disposeMessage(Landroid/os/Message;)V

    .line 835
    return-void
.end method

.method public disposeHandlerMsg_Loding()V
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/sns/game/layer/GameLoading;->getSelf()Lcom/sns/game/layer/GameLoading;

    move-result-object v0

    .line 817
    .local v0, "loading":Lcom/sns/game/layer/GameLoading;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/sns/game/layer/GameLoading;->invokeTargetLoadSelf()V

    .line 820
    :cond_0
    return-void
.end method

.method public disposeHandlerMsg_UserData(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 825
    return-void
.end method

.method public disposeHandlerMsg_UserState(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 829
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/database/bean/UserState;->disposeMessage(Landroid/os/Message;)V

    .line 830
    return-void
.end method

.method public disposeHandlerMsg_UserWeapon(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 841
    :try_start_0
    invoke-static {}, Lcom/sns/game/object/GameWeaponLoader;->sharedLoader()Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeaponLoader;->getUseWeapon()Lcom/sns/game/object/GameWeapon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->getBean()Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v0

    .line 842
    .local v0, "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update data to [userweapons] is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/sns/game/database/dao/UserWeaponDao;->sharedDao()Lcom/sns/game/database/dao/UserWeaponDao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sns/game/database/dao/UserWeaponDao;->modifyUserWeapon(Lcom/sns/game/database/bean/UserWeaponBean;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 842
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .end local v0    # "bean":Lcom/sns/game/database/bean/UserWeaponBean;
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitGameAnOnce()V
    .locals 3

    .prologue
    .line 492
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v1

    new-instance v2, Lcom/sns/game/activity/GameActivityss$7;

    invoke-direct {v2, p0}, Lcom/sns/game/activity/GameActivityss$7;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    invoke-virtual {v1, p0, v2}, Lcom/duoku/platform/single/DKPlatform;->bdgameExit(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitGameWithBack()V
    .locals 3

    .prologue
    .line 447
    :try_start_0
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/util/CCUtil;->findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;

    move-result-object v1

    .line 448
    .local v1, "layer":Lcom/sns/game/ui/CCGameLayer;
    instance-of v2, v1, Lcom/sns/game/layer/CCNewGameLayer;

    if-nez v2, :cond_0

    .line 449
    instance-of v2, v1, Lcom/sns/game/layer/CCCJNewLayer;

    if-nez v2, :cond_0

    .line 450
    instance-of v2, v1, Lcom/sns/game/layer/CCSHNewLayer;

    if-eqz v2, :cond_1

    .line 451
    :cond_0
    invoke-virtual {v1}, Lcom/sns/game/ui/CCGameLayer;->onGamePauseWithOut()V

    .line 471
    .end local v1    # "layer":Lcom/sns/game/ui/CCGameLayer;
    :goto_0
    return-void

    .line 455
    .restart local v1    # "layer":Lcom/sns/game/ui/CCGameLayer;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sns/game/activity/GameActivityss;->showXslibaoDialog(Lorg/cocos2d/layers/CCLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v1    # "layer":Lcom/sns/game/ui/CCGameLayer;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitGameWithNormal()V
    .locals 2

    .prologue
    .line 475
    const/4 v1, 0x1

    sput-boolean v1, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "ignored_Debug":Z
    sget v1, Lcom/sns/game/util/GameConstant;->GAME_PLATFORM_TAG:I

    if-lez v1, :cond_0

    .line 480
    invoke-static {}, Lcom/sns/game/sdk/third/SdkManager;->getInstance()Lcom/sns/game/sdk/third/SdkManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sns/game/sdk/third/SdkManager;->exitGame(Landroid/app/Activity;)V

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/activity/GameActivityss;->defaultExitGame()V

    goto :goto_0
.end method

.method public getRankWithGameID()I
    .locals 6

    .prologue
    .line 1032
    const/4 v1, -0x1

    .line 1035
    .local v1, "companyID":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sns/game/activity/GameActivityss;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1036
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sns/game/activity/GameActivityss;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1037
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "rankWithGameID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v4, v1

    .line 1041
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v4

    .line 1039
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1041
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public handleCallBackForMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 977
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 978
    .local v3, "parce":Landroid/os/Parcelable;
    if-nez v3, :cond_0

    .line 984
    .end local v3    # "parce":Landroid/os/Parcelable;
    :goto_0
    return-void

    .line 979
    .restart local v3    # "parce":Landroid/os/Parcelable;
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/sns/game/util/LogicalHandleCallBack;

    move-object v1, v0

    .line 980
    .local v1, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    .end local v1    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v3    # "parce":Landroid/os/Parcelable;
    :catch_0
    move-exception v2

    .line 982
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public handleCallBackToMsg(ILandroid/os/Parcelable;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "pare"    # Landroid/os/Parcelable;

    .prologue
    .line 640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 641
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 645
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void
.end method

.method public initializeCynosSdk(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v0, "Test"

    const-string v1, "initializeCynosSdk"

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    sput v0, Lcom/sns/game/util/GameConstant;->GAME_PLATFORM_TAG:I

    .line 197
    invoke-static {p1}, Lcom/sns/game/util/DeviceManager;->getOperatorType(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    .line 198
    return-void
.end method

.method public initializeThirdSdk(Landroid/app/Activity;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    .line 201
    const-string v0, "Test"

    const-string v1, "initializeThirdSdk"

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->delegate()Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate;->loadThirdSdk(Landroid/app/Activity;)V

    .line 203
    return-void
.end method

.method protected kefu_Page()V
    .locals 5

    .prologue
    .line 180
    :try_start_0
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 181
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog;

    invoke-direct {v1, v0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, "dialog":Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v1    # "dialog":Lcom/cynosure/paymentsdk/customerservice/KFDialog;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moreGame()V
    .locals 3

    .prologue
    .line 562
    :try_start_0
    const-string v1, "Test"

    const-string v2, "\u66f4\u591a\u6e38\u620f"

    invoke-static {v1, v2}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyHandler(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Lcom/sns/game/activity/GameActivityss;->asMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 655
    return-void
.end method

.method public varargs notifyHandler(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "objs"    # [Ljava/lang/String;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Lcom/sns/game/activity/GameActivityss;->asMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 660
    return-void
.end method

.method public notifyHandlerToEmptyMsg(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 650
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/sns/game/activity/GameActivityss;->initializeCynosSdk(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0, p0}, Lcom/sns/game/activity/GameActivityss;->initializeThirdSdk(Landroid/app/Activity;)V

    .line 95
    invoke-static {}, Lcom/sns/game/util/DeviceManager;->setDeviceParams()V

    .line 96
    invoke-static {p0}, Lcom/sns/game/util/DeviceManager;->setActivityParams(Landroid/app/Activity;)V

    .line 97
    invoke-static {p0}, Lcom/sns/game/util/DeviceManager;->setCocos2DEngineParams(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sns/game/database/DBOperation;->createDatabases(Landroid/content/Context;)Z

    .line 99
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->loadOwnUserData()V

    .line 100
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    .line 101
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    .line 102
    invoke-static {}, Lcom/sns/game/database/dao/RandomTaskDao;->sharedDao()Lcom/sns/game/database/dao/RandomTaskDao;

    .line 103
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    .line 104
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedSystem()Lcom/sns/game/layer/CCNewManSystem;

    .line 105
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    .line 106
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    .line 109
    invoke-static {p0}, Lcom/sns/game/util/SoundManager;->loadMusic(Landroid/content/Context;)V

    .line 110
    const/16 v0, 0x999

    invoke-virtual {p0, v0}, Lcom/sns/game/activity/GameActivityss;->notifyHandlerToEmptyMsg(I)V

    .line 111
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->onCreateContentView()V

    .line 113
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->initSDK()V

    .line 123
    invoke-static {v1}, Lcom/cynosure/paymentsdk/SDKInterface;->isDebug(Z)V

    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cynosure/paymentsdk/SDKInterface;->isSFPBDX(Z)V

    .line 125
    invoke-static {p0, v1}, Lcom/cynosure/paymentsdk/SDKInterface;->SDKInit(Landroid/app/Activity;Z)V

    .line 127
    new-instance v0, Lcom/sns/game/activity/GameActivityss$2;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$2;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    sput-object v0, Lcom/sns/game/activity/GameActivityss;->kefuPage:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method public onDestroyGame()V
    .locals 4

    .prologue
    .line 349
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update data to [userdata] is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/sns/game/database/dao/UserDataDao;->sharedDao()Lcom/sns/game/database/dao/UserDataDao;

    move-result-object v2

    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v2, v3}, Lcom/sns/game/database/dao/UserDataDao;->updateAllUserData(Lcom/sns/game/database/bean/UserData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sns/game/database/DBTool;->PRINTLN(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/sns/game/database/dao/RandomTaskDao;->sharedDao()Lcom/sns/game/database/dao/RandomTaskDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/dao/RandomTaskDao;->clear()V

    .line 352
    invoke-static {}, Lcom/sns/game/database/dao/StoreItemDao;->sharedDao()Lcom/sns/game/database/dao/StoreItemDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/dao/StoreItemDao;->cleareCache()V

    .line 353
    invoke-static {}, Lcom/sns/game/database/dao/UserLevelDao;->sharedDao()Lcom/sns/game/database/dao/UserLevelDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/dao/UserLevelDao;->clear()V

    .line 354
    invoke-static {}, Lcom/sns/game/database/dao/WeaponDao;->sharedDao()Lcom/sns/game/database/dao/WeaponDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/dao/WeaponDao;->clear()V

    .line 356
    invoke-static {}, Lcom/sns/game/util/SoundManager;->releaseAllMusic()V

    .line 357
    invoke-static {}, Lorg/cocos2d/config/ccMacros;->CC_DIRECTOR_END()V

    .line 359
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->stopAnwtThread()V

    .line 360
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/DBOperation;->closeDataBase()V

    .line 361
    invoke-static {}, Lcom/sns/game/database/DBOperation;->getInstance()Lcom/sns/game/database/DBOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/DBOperation;->removeSelf()V

    .line 362
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/sns/game/activity/GameActivityss;->exitGameWithBack()V

    .line 244
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 266
    sput-boolean v1, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 267
    invoke-static {}, Lcom/sns/game/util/SoundManager;->pauseSound()V

    .line 268
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->onPause()V

    .line 270
    invoke-static {p0}, Lcom/cynosure/paymentsdk/SDKInterface;->onPause(Landroid/app/Activity;)V

    .line 272
    sget v0, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-eqz v0, :cond_0

    .line 275
    sget v0, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-ne v0, v1, :cond_1

    .line 277
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onPause(Landroid/content/Context;)V

    .line 284
    :cond_0
    :goto_0
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/DKPlatform;->pauseBaiduMobileStatistic(Landroid/content/Context;)V

    .line 285
    return-void

    .line 279
    :cond_1
    sget v0, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unicom/dcLoader/Utils;->onPause(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 292
    invoke-static {}, Lcom/sns/game/util/SoundManager;->resumeSound()V

    .line 293
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->onResume()V

    .line 294
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->resumeRuningLayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    invoke-static {p0}, Lcom/cynosure/paymentsdk/SDKInterface;->onResume(Landroid/app/Activity;)V

    .line 302
    sget v1, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    if-eqz v1, :cond_0

    .line 305
    sget v1, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 307
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onResume(Landroid/content/Context;)V

    .line 314
    :cond_0
    :goto_1
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/duoku/platform/single/DKPlatform;->resumeBaiduMobileStatistic(Landroid/content/Context;)V

    .line 316
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget v1, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 311
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unicom/dcLoader/Utils;->onResume(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 255
    :try_start_0
    const-string v1, "\u6309HOME\u952e\u9000\u51fa"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 998
    sput-boolean v1, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    .line 999
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    .line 1000
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1001
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1002
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    .line 1004
    new-instance v1, Lcom/sns/game/activity/GameActivityss$15;

    invoke-direct {v1, p0}, Lcom/sns/game/activity/GameActivityss$15;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    .line 1003
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1012
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss;->prgsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1014
    :cond_0
    return-void
.end method

.method public showProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 989
    new-instance v0, Lcom/sns/game/activity/GameActivityss$14;

    invoke-direct {v0, p0}, Lcom/sns/game/activity/GameActivityss$14;-><init>(Lcom/sns/game/activity/GameActivityss;)V

    return-object v0
.end method

.method public showXslibaoDialog(Lorg/cocos2d/layers/CCLayer;)V
    .locals 2
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 371
    invoke-static {p1}, Lcom/sns/game/dialog/CCGiftBagDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGiftBagDialog;

    move-result-object v0

    .line 373
    .local v0, "dialog":Lcom/sns/game/dialog/CCGiftBagDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setGiftBagTag(I)V

    .line 374
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->takeXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setTakeGiftCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 375
    invoke-direct {p0}, Lcom/sns/game/activity/GameActivityss;->cancelXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->setCancelCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 376
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCGiftBagDialog;->show()V

    .line 377
    return-void
.end method

.method public switchCCSceneTo(Lorg/cocos2d/layers/CCScene;)V
    .locals 2
    .param p1, "nextScene"    # Lorg/cocos2d/layers/CCScene;

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCDirector;->replaceScene(Lorg/cocos2d/layers/CCScene;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
