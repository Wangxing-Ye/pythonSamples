.class public Lcom/sns/game/layer/CCNewMenuMainLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "CCNewMenuMainLayer.java"


# static fields
.field private static layer:Lcom/sns/game/layer/CCNewMenuMainLayer;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field private checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private menuItemBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/menus/CCMenuItemSprite;",
            ">;"
        }
    .end annotation
.end field

.field private musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private nicknameSp:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->menuItemBtns:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCNewMenuMainLayer;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLogical()V

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/layer/CCNewMenuMainLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->updateNickNameLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sns/game/layer/CCNewMenuMainLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->upLoadGameScore(Lcom/sns/game/util/LogicalHandleCallBack;)V

    return-void
.end method

.method private autoCheckRegisiter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    .line 465
    .local v2, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserState;->isExistSelfUserTop()Z

    move-result v1

    .line 466
    .local v1, "check":Z
    if-nez v1, :cond_0

    .line 467
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 468
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 469
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-direct {p0, v0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->autoCheckRegisterLglCallBack(Lcom/sns/game/activity/GameActivityss;Z)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V

    .line 470
    const/4 v3, 0x1

    .line 472
    .end local v0    # "app":Lcom/sns/game/activity/GameActivityss;
    :cond_0
    return v3
.end method

.method private autoCheckRegisterLglCallBack(Lcom/sns/game/activity/GameActivityss;Z)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "app"    # Lcom/sns/game/activity/GameActivityss;
    .param p2, "bool"    # Z

    .prologue
    .line 476
    new-instance v0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer$4;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/activity/GameActivityss;)V

    return-object v0
.end method

.method public static ccLayer()Lcom/sns/game/layer/CCNewMenuMainLayer;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/sns/game/layer/CCNewMenuMainLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    .line 70
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    return-object v0
.end method

.method public static getSelf()Lcom/sns/game/layer/CCNewMenuMainLayer;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    return-object v0
.end method

.method private setBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string v0, "Background_Menu_Frame.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 250
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 251
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 252
    return-void
.end method

.method private setCheckBoxSend()V
    .locals 12

    .prologue
    .line 186
    const-string v3, "billing/check_box_send.png"

    .line 187
    .local v3, "name":Ljava/lang/String;
    const v8, 0x43a48000    # 329.0f

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v8, v9}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    .line 188
    .local v5, "pnt":Lorg/cocos2d/types/CGPoint;
    const-string v8, "checkBoxSend_CallBack"

    const/4 v9, -0x1

    invoke-static {v3, p0, v8, v5, v9}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v8

    iput-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 189
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->setOnlySelectedMode(Z)V

    .line 190
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(Z)V

    .line 191
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 192
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUpdateBoundBox(Z)V

    .line 193
    const v8, 0x43a0c000    # 321.5f

    const/high16 v9, 0x40f00000    # 7.5f

    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v8, v9, v10, v11}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 194
    .local v1, "finalRect":Lorg/cocos2d/types/CGRect;
    const v8, 0x43a08000    # 321.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x420c0000    # 35.0f

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v8, v9, v10, v11}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v4

    .line 195
    .local v4, "newRect":Lorg/cocos2d/types/CGRect;
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v8, v1, v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->updateBoundingBox(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGRect;)V

    .line 197
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 199
    new-instance v9, Lcom/sns/game/layer/CCNewMenuMainLayer$1;

    iget-object v10, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer$1;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 197
    invoke-virtual {v8, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSelectedLogicalHandle(Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;)V

    .line 207
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 211
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const/4 v6, 0x1

    .line 212
    .local v6, "ret":Z
    iget-object v9, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9, v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 215
    const-string v8, "billing/text_send.png"

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v7

    .line 216
    .local v7, "textsend":Lorg/cocos2d/nodes/CCSprite;
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 217
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 218
    const/high16 v8, 0x42a60000    # 83.0f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 220
    const-string v8, "billing/g_send.png"

    invoke-static {v8}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 221
    .local v2, "gSend":Lorg/cocos2d/nodes/CCSprite;
    iget-object v8, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v9, 0x2

    invoke-virtual {v8, v2, v9}, Lorg/cocos2d/menus/CCMenuItemSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 222
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 223
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 224
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v2, v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 225
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 227
    return-void

    .line 212
    .end local v2    # "gSend":Lorg/cocos2d/nodes/CCSprite;
    .end local v7    # "textsend":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private setMenuItemBtns()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 310
    new-array v2, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Help"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "About"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "Start"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "Top"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "Kefu"

    aput-object v6, v2, v5

    .line 311
    .local v2, "nameArray":[Ljava/lang/String;
    const/16 v5, 0xa

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    .line 317
    .local v3, "posArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 324
    return-void

    .line 318
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MenuMain_UI_Btn_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "name":Ljava/lang/String;
    const-string v5, "menuItemBtns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-static {v1, p0, v5, v6, v0}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v4

    .line 320
    .local v4, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    mul-int/lit8 v5, v0, 0x2

    aget v5, v3, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 321
    const/16 v5, 0x112

    invoke-virtual {v4, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 322
    iget-object v5, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->menuItemBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :array_0
    .array-data 4
        0x42280000    # 42.0f
        0x43b00000    # 352.0f
        0x443cc000    # 755.0f
        0x43d78000    # 431.0f
        0x43c80000    # 400.0f
        0x42b80000    # 92.0f
        0x42280000    # 42.0f
        0x43d78000    # 431.0f
        0x4434c000    # 723.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method private setMusicBtn()V
    .locals 4

    .prologue
    .line 257
    const-string v0, "MenuMain_UI_Btn_Music_Off.png"

    .line 258
    .local v0, "name":Ljava/lang/String;
    const-string v1, "menuItemBtns_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 259
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x443cc000    # 755.0f

    const/high16 v3, 0x43b00000    # 352.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 260
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 261
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->updateMusicBtn()V

    .line 262
    return-void
.end method

.method private setNickNameSp()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 276
    const-string v1, "UI/nickname_icon.png"

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    .line 277
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 278
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v2, 0x43c80000    # 400.0f

    const v3, 0x43d38000    # 423.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 280
    const-string v1, " "

    const-string v2, ""

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;FI)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 281
    .local v0, "nnLabel":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v0, v4}, Lorg/cocos2d/nodes/CCLabel;->setTag(I)V

    .line 282
    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabel;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 283
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 284
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->updateNickName()V

    .line 286
    return-void
.end method

.method private showGameTopDialogLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/sns/game/layer/CCNewMenuMainLayer$3;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewMenuMainLayer$3;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer;)V

    return-object v0
.end method

.method private showGameTopDialogLogical()V
    .locals 2

    .prologue
    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 449
    invoke-static {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGameTopDialog;

    move-result-object v0

    .line 450
    .local v0, "dialog":Lcom/sns/game/dialog/CCGameTopDialog;
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCGameTopDialog;->onCreateCall()V

    .line 451
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCGameTopDialog;->show()V

    .line 452
    return-void
.end method

.method private showPlacardDialog()V
    .locals 1

    .prologue
    .line 443
    invoke-static {p0}, Lcom/sns/game/dialog/CCPLacardDialog;->ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCPLacardDialog;

    move-result-object v0

    .line 444
    .local v0, "dialog":Lcom/sns/game/dialog/CCPLacardDialog;
    invoke-virtual {v0}, Lcom/sns/game/dialog/CCPLacardDialog;->show()V

    .line 445
    return-void
.end method

.method private upLoadGameScore(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 4
    .param p1, "successCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 505
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 506
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 507
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->showProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsgDelayed(Landroid/os/Parcelable;J)V

    .line 508
    invoke-direct {p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->uploadGameScoreLglCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToThreadDelayed(Landroid/os/Parcelable;J)V

    .line 509
    return-void
.end method

.method private updateMusicBtn()V
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v3, :cond_0

    .line 266
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserState;->getMusicLock()Z

    move-result v0

    .line 267
    .local v0, "lock":Z
    if-eqz v0, :cond_1

    const-string v1, "On"

    .line 268
    .local v1, "lockName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getNormalImage()Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 269
    .local v2, "normalImage":Lorg/cocos2d/nodes/CCSprite;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MenuMain_UI_Btn_Music_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 271
    .end local v0    # "lock":Z
    .end local v1    # "lockName":Ljava/lang/String;
    .end local v2    # "normalImage":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    return-void

    .line 267
    .restart local v0    # "lock":Z
    :cond_1
    const-string v1, "Off"

    goto :goto_0
.end method

.method private updateNickNameLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/sns/game/layer/CCNewMenuMainLayer$2;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/CCNewMenuMainLayer$2;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer;)V

    return-object v0
.end method

.method private uploadGameScoreLglCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "successCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 512
    new-instance v0, Lcom/sns/game/layer/CCNewMenuMainLayer$5;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer$5;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/util/LogicalHandleCallBack;)V

    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "UI/MenuMain_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 113
    const-string v0, "background/Background_Menu.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->addSpriteFramesByJPG(Ljava/lang/String;)Ljava/util/Set;

    .line 114
    return-void
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0, p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0, p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0, p0, p1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccTouchedTargetNodeOfChildren(Lorg/cocos2d/nodes/CCNode;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/ui/CCGameLayer;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public checkBoxSend_CallBack(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 237
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v3, v0

    .line 238
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 239
    iget-object v5, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 240
    .local v2, "gSend":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v2, v4}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v2    # "gSend":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setBackground()V

    .line 87
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setCheckBoxSend()V

    .line 88
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setMusicBtn()V

    .line 89
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setNickNameSp()V

    .line 91
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setMenuItemBtns()V

    .line 92
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "\u4e3b\u83dc\u5355"

    return-object v0
.end method

.method public menuItemBtns_CallBack(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 329
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v8, v0

    .line 330
    .local v8, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->getVisible()Z

    .line 331
    invoke-virtual {v8}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v7

    .line 332
    .local v7, "tag":I
    packed-switch v7, :pswitch_data_0

    .line 438
    .end local v7    # "tag":I
    .end local v8    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v7    # "tag":I
    .restart local v8    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_0
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 337
    invoke-static {}, Lcom/sns/game/layer/GameHelpLayer;->getLayer()Lcom/sns/game/layer/GameHelpLayer;

    move-result-object v4

    .line 338
    .local v4, "layer":Lcom/sns/game/layer/GameHelpLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/sns/game/layer/GameHelpLayer;->setTargetCallTag(Lcom/sns/game/util/GameConstant$LayerTag;)V

    .line 339
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/sns/game/layer/GameHelpLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v4    # "layer":Lcom/sns/game/layer/GameHelpLayer;
    .end local v7    # "tag":I
    .end local v8    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "tag":I
    .restart local v8    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :pswitch_1
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 346
    const-string v10, "\u6e38\u620f\u5173\u4e8e"

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->activateUpdateBanner(Ljava/lang/String;)V

    .line 347
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 348
    .local v1, "app":Lcom/sns/game/activity/GameActivityss;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GAME_ABOUT,"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->layerTag()Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sns/game/util/GameConstant$LayerTag;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "msg":Ljava/lang/String;
    const/4 v10, -0x5

    invoke-virtual {v1, v10, v6}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V

    goto :goto_0

    .line 383
    .end local v1    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v6    # "msg":Ljava/lang/String;
    :pswitch_2
    iget-object v10, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/cocos2d/menus/CCMenuItemSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 384
    .local v3, "gSend":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v3}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    .line 394
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 395
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem;->sharedSystem()Lcom/sns/game/database/bean/GameSceneSystem;

    move-result-object v10

    sget-object v11, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    invoke-virtual {v10, v11}, Lcom/sns/game/database/bean/GameSceneSystem;->setSceneTag(Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;)V

    .line 396
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->layer()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v9

    .line 397
    .local v9, "toLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sns/game/layer/CCNewGameLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, v9}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V

    goto :goto_0

    .line 408
    .end local v3    # "gSend":Lorg/cocos2d/nodes/CCSprite;
    .end local v9    # "toLayer":Lcom/sns/game/layer/CCNewGameLayer;
    :pswitch_3
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->autoCheckRegisiter()Z

    move-result v10

    if-nez v10, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->upLoadGameScore(Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto :goto_0

    .line 421
    :pswitch_4
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 422
    .restart local v1    # "app":Lcom/sns/game/activity/GameActivityss;
    sget-object v10, Lcom/sns/game/activity/GameActivityss;->kefuPage:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 427
    .end local v1    # "app":Lcom/sns/game/activity/GameActivityss;
    :pswitch_5
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserState;->getMusicLock()Z

    move-result v5

    .line 428
    .local v5, "lock":Z
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v12, v10}, Lcom/sns/game/database/bean/UserState;->modifyMusicLock(Z)V

    .line 429
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->updateMusicBtn()V

    .line 430
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "\u58f0\u97f3\u63a7\u5236_\u58f0\u97f3"

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v10, "\u5173"

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->activateUpdateBanner(Ljava/lang/String;)V

    .line 431
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sns/game/layer/CCNewMenuMainLayer;->playLayerMusic(Z)V

    goto/16 :goto_0

    :cond_1
    move v10, v11

    .line 428
    goto :goto_1

    .line 430
    :cond_2
    const-string v10, "\u5f00"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreateFinishCall()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoCallPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoCallPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->activateUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/sns/game/layer/CCNewMenuMainLayer;->playLayerMusic(Z)V

    .line 131
    sget-boolean v0, Lcom/sns/game/util/GameConstant;->FIRST_PLACARD:Z

    if-eqz v0, :cond_1

    .line 132
    sput-boolean v2, Lcom/sns/game/util/GameConstant;->FIRST_PLACARD:Z

    .line 133
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    .line 134
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->showPlacardDialog()V

    .line 139
    :cond_1
    return-void
.end method

.method protected onExitFinishCall()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->recycleSelf()V

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/CCNewMenuMainLayer;->layer:Lcom/sns/game/layer/CCNewMenuMainLayer;

    .line 148
    :cond_0
    return-void
.end method

.method protected preloadSelf()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected sortChildren()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 104
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v3}, Lcom/sns/game/layer/CCNewMenuMainLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cocos2d/nodes/CCNode;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->checkBoxSend:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->musicBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v1, v0, v4

    invoke-virtual {p0, v4, v0}, Lcom/sns/game/layer/CCNewMenuMainLayer;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 106
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->menuItemBtns:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->addChildren(Ljava/util/Collection;I)V

    .line 107
    return-void
.end method

.method public updateNickName()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 289
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    iget-object v1, v4, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    .line 290
    .local v1, "uTop":Lcom/sns/game/database/bean/UserTop;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserTop;->getNickName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 291
    .local v2, "v":Z
    :goto_0
    iget-object v4, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 292
    iget-object v4, p0, Lcom/sns/game/layer/CCNewMenuMainLayer;->nicknameSp:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4, v3}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCLabel;

    .line 293
    .local v0, "nnLabel":Lorg/cocos2d/nodes/CCLabel;
    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 294
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserTop;->getNickName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 295
    const/high16 v3, 0x42140000    # 37.0f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v0, v3, v4}, Lorg/cocos2d/nodes/CCLabel;->setPositionWithCcso(FF)V

    .line 296
    return-void

    .line 290
    .end local v0    # "nnLabel":Lorg/cocos2d/nodes/CCLabel;
    .end local v2    # "v":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 294
    .restart local v0    # "nnLabel":Lorg/cocos2d/nodes/CCLabel;
    .restart local v2    # "v":Z
    :cond_1
    const-string v3, " "

    goto :goto_1
.end method
