.class public Lcom/sns/game/dialog/CCGameTopDialog;
.super Lcom/sns/game/dialog/base/CCDialog;
.source "CCGameTopDialog.java"


# static fields
.field public static final FOCUS_GOLD:I = 0x1

.field public static final FOCUS_KILL:I = 0x2


# instance fields
.field private btnFocus:I

.field private closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

.field private gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

.field private goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

.field private kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

.field private killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

.field private showTag:I

.field private ugRankingResultCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 1
    .param p1, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/dialog/CCGameTopDialog;I)V
    .locals 0

    .prologue
    .line 210
    iput p1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    return-void
.end method

.method static synthetic access$1(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sns/game/dialog/CCGameTopDialog;)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    return v0
.end method

.method static synthetic access$3(Lcom/sns/game/dialog/CCGameTopDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sns/game/dialog/CCGameTopDialog;)Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sns/game/dialog/CCGameTopDialog;Z)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCGameTopDialog;->onUpdateGameRankingResultCallBack(Z)V

    return-void
.end method

.method public static ccDialog(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/dialog/CCGameTopDialog;
    .locals 1
    .param p0, "caller"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 45
    new-instance v0, Lcom/sns/game/dialog/CCGameTopDialog;

    invoke-direct {v0, p0}, Lcom/sns/game/dialog/CCGameTopDialog;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    .line 46
    .local v0, "dialog":Lcom/sns/game/dialog/CCGameTopDialog;
    return-object v0
.end method

.method private createSelfTopPanel(I)Lorg/cocos2d/nodes/CCSprite;
    .locals 16
    .param p1, "tag"    # I

    .prologue
    .line 316
    const v11, 0x441d8000    # 630.0f

    const/high16 v12, 0x42840000    # 66.0f

    invoke-static {v11, v12}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v8

    .line 317
    .local v8, "size":Lorg/cocos2d/types/CGSize;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v11

    invoke-static {v11, v8}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;

    move-result-object v6

    .line 318
    .local v6, "rect":Lorg/cocos2d/types/CGRect;
    const-string v11, "point.png"

    invoke-static {v11, v6}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 319
    .local v4, "panel":Lorg/cocos2d/nodes/CCSprite;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 320
    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v4, v11, v12}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 322
    const-string v11, ""

    const-string v12, "UI/New_Num_x_14x17.png"

    const/16 v13, 0xe

    const/16 v14, 0x11

    const/16 v15, 0x30

    invoke-static {v11, v12, v13, v14, v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v5

    .line 323
    .local v5, "rankNumAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lorg/cocos2d/nodes/CCLabelAtlas;->setTag(I)V

    .line 324
    const/4 v11, 0x1

    invoke-virtual {v4, v5, v11}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 326
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    const-string v9, "Jbb"

    .line 327
    .local v9, "tagName":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GameTop_UI_Img_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Bar_01.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sns/game/dialog/CCGameTopDialog;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 328
    .local v1, "bar":Lorg/cocos2d/nodes/CCSprite;
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lorg/cocos2d/nodes/CCSprite;->setTag(I)V

    .line 329
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 330
    const/high16 v11, 0x42a00000    # 80.0f

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 331
    const/4 v11, 0x2

    invoke-virtual {v4, v1, v11}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 333
    const-string v11, ""

    const-string v12, "UI/New_Num_x_16x22.png"

    const/16 v13, 0x10

    const/16 v14, 0x16

    const/16 v15, 0x30

    invoke-static {v11, v12, v13, v14, v15}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v7

    .line 334
    .local v7, "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/cocos2d/nodes/CCLabelAtlas;->setTag(I)V

    .line 335
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 337
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v10

    .line 338
    .local v10, "uState":Lcom/sns/game/database/bean/UserState;
    iget-object v11, v10, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/UserTop;->getNickName()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "nickName":Ljava/lang/String;
    const-string v11, " "

    const-string v12, ""

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;FI)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v3

    .line 340
    .local v3, "nicknameLabel":Lorg/cocos2d/nodes/CCLabel;
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Lorg/cocos2d/nodes/CCLabel;->setTag(I)V

    .line 341
    if-eqz v2, :cond_1

    .end local v2    # "nickName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v2}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 342
    const/16 v11, 0x1e

    const/16 v12, 0x1e

    const/16 v13, 0x1e

    invoke-static {v11, v12, v13}, Lorg/cocos2d/types/ccColor3B;->ccc3(III)Lorg/cocos2d/types/ccColor3B;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/cocos2d/nodes/CCLabel;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 343
    const/4 v11, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v3, v11, v12}, Lorg/cocos2d/nodes/CCLabel;->setAnchorPoint(FF)V

    .line 344
    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v12

    iget v12, v12, Lorg/cocos2d/types/CGSize;->height:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    invoke-virtual {v3, v11, v12}, Lorg/cocos2d/nodes/CCLabel;->setPosition(FF)V

    .line 345
    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 349
    return-object v4

    .line 326
    .end local v1    # "bar":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "nicknameLabel":Lorg/cocos2d/nodes/CCLabel;
    .end local v7    # "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_0
    const-string v9, "Lsb"

    goto/16 :goto_0

    .line 341
    .restart local v1    # "bar":Lorg/cocos2d/nodes/CCSprite;
    .restart local v2    # "nickName":Ljava/lang/String;
    .restart local v3    # "nicknameLabel":Lorg/cocos2d/nodes/CCLabel;
    .restart local v7    # "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "uState":Lcom/sns/game/database/bean/UserState;
    :cond_1
    const-string v2, " "

    goto :goto_1
.end method

.method private onUpdateGameRankingResultCallBack(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->ugRankingResultCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->ugRankingResultCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    return-void
.end method

.method private setCloseBtn()V
    .locals 4

    .prologue
    .line 184
    const-string v0, "GameTop_UI_Dialog_Btn_Close.png"

    .line 185
    .local v0, "name":Ljava/lang/String;
    const-string v1, "closeBtn_CallBack"

    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 186
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x44336000    # 717.5f

    const/high16 v3, 0x43c30000    # 390.0f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 187
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 188
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->updateCloseBtn()V

    .line 189
    return-void
.end method

.method private setGoldRankBtn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 226
    const-string v0, "GameTop_UI_Btn_Jbb_FocusIn.png"

    .line 227
    .local v0, "name":Ljava/lang/String;
    const-string v1, "rankBtn_CallBack"

    .line 228
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 227
    invoke-static {v0, p0, v1, v2, v5}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 229
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x43134000    # 147.25f

    const v3, 0x43b6e000    # 365.75f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 230
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 231
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankBtn(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 233
    return-void
.end method

.method private setGoldSelfPanel()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    .line 236
    .local v0, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->createSelfTopPanel(I)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    .line 237
    iget-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    iget v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v3, v1, :cond_0

    :goto_0
    iget-object v3, v0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserTop;->getgRankNum()I

    move-result v3

    sget-object v4, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v4

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setKillRankBtn()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 255
    const-string v0, "GameTop_UI_Btn_Lsb_FocusIn.png"

    .line 256
    .local v0, "name":Ljava/lang/String;
    const-string v1, "rankBtn_CallBack"

    .line 257
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 256
    invoke-static {v0, p0, v1, v2, v4}, Lcom/sns/game/util/CCUtil;->ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 258
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const v2, 0x43988000    # 305.0f

    const v3, 0x43b6e000    # 365.75f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(FF)V

    .line 259
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPlaySoundEffect(I)V

    .line 260
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 261
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankBtn(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 262
    return-void
.end method

.method private setKillSelfPanel()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 264
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    .line 265
    .local v0, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-direct {p0, v3}, Lcom/sns/game/dialog/CCGameTopDialog;->createSelfTopPanel(I)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    .line 266
    iget-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    iget v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, v0, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserTop;->getkRankNum()I

    move-result v3

    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v4

    iget-object v4, v4, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/UserTop;->getKillNum()I

    move-result v4

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 267
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSelfGoldTopWidgets()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setGoldRankBtn()V

    .line 222
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setGoldSelfPanel()V

    .line 223
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setgTopDataPanel()V

    .line 224
    return-void
.end method

.method private setSelfKillTopWidgets()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setKillRankBtn()V

    .line 251
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setKillSelfPanel()V

    .line 252
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setkTopDataPanel()V

    .line 253
    return-void
.end method

.method private setgTopDataPanel()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-static {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccPanel(Lcom/sns/game/dialog/base/CCDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    .line 241
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v1, v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->createSelf(I)V

    .line 242
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    iget v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V

    .line 243
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setkTopDataPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 269
    invoke-static {p0}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccPanel(Lcom/sns/game/dialog/base/CCDialog;)Lcom/sns/game/layer/object/CCTopDataPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    .line 270
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v0, v2}, Lcom/sns/game/layer/object/CCTopDataPanel;->createSelf(I)V

    .line 271
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGameRankingLglCallBack(I)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "rankType"    # I

    .prologue
    .line 411
    new-instance v0, Lcom/sns/game/dialog/CCGameTopDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sns/game/dialog/CCGameTopDialog$1;-><init>(Lcom/sns/game/dialog/CCGameTopDialog;I)V

    return-object v0
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "UI/GameTop_UI.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGameTopDialog;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 121
    return-void
.end method

.method public callback_selector_showStartAnimation()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->callback_selector_showStartAnimation()V

    .line 88
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGameTopDialog;->updateGameRanking(I)V

    .line 89
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->cancel()V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->removeSelf()V

    .line 79
    iput-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->parentCaller:Lorg/cocos2d/layers/CCLayer;

    .line 80
    iput-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    .line 149
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v1, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v1, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccTouchesBegan(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesBegan(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z

    .line 173
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v1, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    invoke-virtual {v1, p1}, Lcom/sns/game/layer/object/CCTopDataPanel;->ccTouchesEnded(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesEnded(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lorg/cocos2d/menus/CCMenuItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->ccTouchedTargetMenuItems(Landroid/view/MotionEvent;[Lorg/cocos2d/menus/CCMenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->ccTouchesMoved(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public closeBtn_CallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 199
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v2, v0

    .line 200
    .local v2, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 201
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected createSelf()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "GameTop_UI_Dialog_Box.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGameTopDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setSelfGoldTopWidgets()V

    .line 107
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setSelfKillTopWidgets()V

    .line 108
    invoke-direct {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->setCloseBtn()V

    .line 109
    return-void
.end method

.method public getBtnFocus()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    return v0
.end method

.method public getShowTag()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    return v0
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "\u6392\u884c\u699cUI\u6846"

    return-object v0
.end method

.method public onCreateCall()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->addTexturesToCache()V

    .line 57
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->createSelf()V

    .line 58
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->sortChildren()V

    .line 59
    return-void
.end method

.method public rankBtn_CallBack(Ljava/lang/Object;)V
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 355
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/menus/CCMenuItemSprite;

    move-object v4, v0

    .line 357
    .local v4, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getUserData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    .line 358
    .local v6, "withData":[Ljava/lang/Integer;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 359
    .local v3, "nowUpdateNum":I
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 360
    .local v2, "maxUpdateNum":I
    const/4 v9, 0x0

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    .line 362
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 363
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, v2, :cond_2

    .line 364
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 365
    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 366
    invoke-virtual {v4, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setUserData(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sns/game/dialog/CCGameTopDialog;->updateGameRanking(I)V

    .line 387
    .end local v2    # "maxUpdateNum":I
    .end local v3    # "nowUpdateNum":I
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v6    # "withData":[Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 371
    .restart local v2    # "maxUpdateNum":I
    .restart local v3    # "nowUpdateNum":I
    .restart local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v6    # "withData":[Ljava/lang/Integer;
    :cond_2
    iget v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 372
    invoke-virtual {v4}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v9

    iput v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    .line 373
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    .line 374
    .local v5, "uState":Lcom/sns/game/database/bean/UserState;
    const/4 v9, 0x2

    new-array v9, v9, [Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankBtns([Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 375
    iget-object v10, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    iget v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v9, v7, :cond_3

    move v9, v7

    :goto_1
    iget-object v11, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/UserTop;->getgRankNum()I

    move-result v11

    sget-object v12, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserData;->getGold()I

    move-result v12

    invoke-virtual {p0, v10, v9, v11, v12}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 376
    iget-object v10, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    iget v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v9, v13, :cond_4

    move v9, v7

    :goto_2
    iget-object v11, v5, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v11}, Lcom/sns/game/database/bean/UserTop;->getkRankNum()I

    move-result v11

    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v12

    iget-object v12, v12, Lcom/sns/game/database/bean/UserState;->uTop:Lcom/sns/game/database/bean/UserTop;

    invoke-virtual {v12}, Lcom/sns/game/database/bean/UserTop;->getKillNum()I

    move-result v12

    invoke-virtual {p0, v10, v9, v11, v12}, Lcom/sns/game/dialog/CCGameTopDialog;->updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V

    .line 377
    iget-object v10, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    iget v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v9, v7, :cond_5

    move v9, v7

    :goto_3
    invoke-virtual {v10, v9}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V

    .line 379
    iget-object v9, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    iget v10, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v10, v13, :cond_6

    :goto_4
    invoke-virtual {v9, v7}, Lcom/sns/game/layer/object/CCTopDataPanel;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    .end local v2    # "maxUpdateNum":I
    .end local v3    # "nowUpdateNum":I
    .end local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .end local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    .end local v6    # "withData":[Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "maxUpdateNum":I
    .restart local v3    # "nowUpdateNum":I
    .restart local v4    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    .restart local v5    # "uState":Lcom/sns/game/database/bean/UserState;
    .restart local v6    # "withData":[Ljava/lang/Integer;
    :cond_3
    move v9, v8

    .line 375
    goto :goto_1

    :cond_4
    move v9, v8

    .line 376
    goto :goto_2

    :cond_5
    move v9, v8

    .line 377
    goto :goto_3

    :cond_6
    move v7, v8

    .line 379
    goto :goto_4
.end method

.method protected recycleSelf()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected registerWithTouchDispatcher()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->addDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V

    .line 142
    return-void
.end method

.method protected setBackgroundBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/sns/game/dialog/base/CCDialog;->setBackgroundBox(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->getBackgroundBox()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 97
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->getBackgroundBox()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 98
    invoke-virtual {p0}, Lcom/sns/game/dialog/CCGameTopDialog;->getBackgroundBox()Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 100
    :cond_0
    return-void
.end method

.method public setShowTag(I)V
    .locals 0
    .param p1, "showTag"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    .line 42
    return-void
.end method

.method public setUgRankingResultCallBack(Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0
    .param p1, "ugRankingResultCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->ugRankingResultCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 394
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-super {p0}, Lcom/sns/game/dialog/base/CCDialog;->show()V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->parentFinalTop:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->zOrder_:I

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    goto :goto_0
.end method

.method protected sortChildren()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    new-array v1, v6, [Lorg/cocos2d/nodes/CCNode;

    iget-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->goldRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/sns/game/dialog/CCGameTopDialog;->killRankBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    aput-object v2, v1, v4

    invoke-virtual {v0, v4, v1}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 127
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x5

    new-array v2, v6, [Lorg/cocos2d/nodes/CCNode;

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kTopDataPanel:Lcom/sns/game/layer/object/CCTopDataPanel;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 128
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0xa

    new-array v2, v6, [Lorg/cocos2d/nodes/CCNode;

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->gSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sns/game/dialog/CCGameTopDialog;->kSelfPanel:Lorg/cocos2d/nodes/CCSprite;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChildren(I[Lorg/cocos2d/nodes/CCNode;)V

    .line 129
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->backgroundBox:Lorg/cocos2d/nodes/CCSprite;

    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 130
    return-void
.end method

.method public updateCloseBtn()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sns/game/dialog/CCGameTopDialog;->closeBtn:Lorg/cocos2d/menus/CCMenuItemSprite;

    iget v0, p0, Lcom/sns/game/dialog/CCGameTopDialog;->showTag:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->setVisible(Z)V

    .line 194
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGameRanking(I)V
    .locals 4
    .param p1, "rankType"    # I

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->setIsTouchEnabled(Z)V

    .line 404
    invoke-direct {p0, v1}, Lcom/sns/game/dialog/CCGameTopDialog;->onUpdateGameRankingResultCallBack(Z)V

    .line 405
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 406
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->showProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/sns/game/dialog/CCGameTopDialog;->updateGameRankingLglCallBack(I)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToThreadDelayed(Landroid/os/Parcelable;J)V

    .line 408
    return-void
.end method

.method public updateRankBtn(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 7
    .param p1, "target"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    const/4 v4, 0x1

    .line 275
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getTag()I

    move-result v0

    .line 276
    .local v0, "btnTag":I
    iget v5, p0, Lcom/sns/game/dialog/CCGameTopDialog;->btnFocus:I

    if-ne v5, v0, :cond_0

    move v1, v4

    .line 277
    .local v1, "checkTag":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GameTop_UI_Btn_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    if-ne v0, v4, :cond_1

    const-string v4, "Jbb"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Focus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 279
    if-eqz v1, :cond_2

    const-string v4, "In"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cocos2d/menus/CCMenuItemSprite;->getNormalImage()Lorg/cocos2d/nodes/CCNode;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCSprite;

    .line 281
    .local v3, "normalImage":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {p0, v2}, Lcom/sns/game/dialog/CCGameTopDialog;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setDisplayFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V

    .line 282
    return-void

    .line 276
    .end local v1    # "checkTag":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "normalImage":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    .restart local v1    # "checkTag":Z
    :cond_1
    const-string v4, "Lsb"

    goto :goto_1

    .line 279
    :cond_2
    const-string v4, "Out"

    goto :goto_2
.end method

.method public varargs updateRankBtns([Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 3
    .param p1, "targets"    # [Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 285
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    aget-object v0, p1, v1

    .line 286
    .local v0, "btn":Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-virtual {p0, v0}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankBtn(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateRankNum(Lorg/cocos2d/nodes/CCSprite;I)V
    .locals 5
    .param p1, "panel"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "num"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 291
    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 292
    .local v0, "rankNumAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    if-eqz v0, :cond_0

    .line 293
    if-lez p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setVisible(Z)V

    .line 294
    invoke-virtual {v0, v4, v4}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 295
    const/high16 v1, 0x42160000    # 37.5f

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 296
    if-lez p2, :cond_2

    .end local p2    # "num":I
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    return-void

    .restart local p2    # "num":I
    :cond_1
    move v1, v2

    .line 293
    goto :goto_0

    :cond_2
    move p2, v2

    .line 296
    goto :goto_1
.end method

.method public updateRankScore(Lorg/cocos2d/nodes/CCSprite;I)V
    .locals 4
    .param p1, "panel"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "score"    # I

    .prologue
    .line 300
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSprite;

    .line 301
    .local v0, "bar":Lorg/cocos2d/nodes/CCSprite;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/cocos2d/nodes/CCSprite;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/nodes/CCLabelAtlas;

    .line 302
    .local v1, "scoreAs":Lorg/cocos2d/nodes/CCLabelAtlas;
    if-eqz v1, :cond_0

    .line 303
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setAnchorPoint(FF)V

    .line 304
    const v2, 0x43afa000    # 351.25f

    const/high16 v3, 0x41fa0000    # 31.25f

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/nodes/CCLabelAtlas;->setPosition(FF)V

    .line 305
    if-lez p2, :cond_1

    .end local p2    # "score":I
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCLabelAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void

    .line 305
    .restart local p2    # "score":I
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public updateSelfTopPanel(Lorg/cocos2d/nodes/CCSprite;ZII)V
    .locals 0
    .param p1, "panel"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "v"    # Z
    .param p3, "num"    # I
    .param p4, "score"    # I

    .prologue
    .line 310
    invoke-virtual {p1, p2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankNum(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 312
    invoke-virtual {p0, p1, p4}, Lcom/sns/game/dialog/CCGameTopDialog;->updateRankScore(Lorg/cocos2d/nodes/CCSprite;I)V

    .line 313
    return-void
.end method
