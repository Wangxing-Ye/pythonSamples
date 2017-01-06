.class public Lcom/sns/game/layer/CCLogoLayer;
.super Lcom/sns/game/ui/CCGameLayer;
.source "CCLogoLayer.java"


# static fields
.field private static layer:Lcom/sns/game/layer/CCLogoLayer;


# instance fields
.field private logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

.field private logoEgame:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sns/game/ui/CCGameLayer;-><init>()V

    .line 38
    return-void
.end method

.method public static layer()Lcom/sns/game/layer/CCLogoLayer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/sns/game/layer/CCLogoLayer;

    invoke-direct {v0}, Lcom/sns/game/layer/CCLogoLayer;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    .line 29
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    return-object v0
.end method

.method public static oneSelf()Lcom/sns/game/layer/CCLogoLayer;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    return-object v0
.end method

.method private setLogo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    const/high16 v6, 0x43700000    # 240.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 107
    .line 108
    invoke-static {v5, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 109
    invoke-static {v7, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    sget-object v3, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 107
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    .line 113
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v8}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 115
    const-string v0, "logo_egame.png"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCLogoLayer;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    .line 116
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 117
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v7, v6}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 118
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v8}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 119
    return-void
.end method


# virtual methods
.method protected addTexturesToCache()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "logo/logo.plist"

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCLogoLayer;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 79
    return-void
.end method

.method protected createSelf()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sns/game/layer/CCLogoLayer;->setLogo()V

    .line 50
    return-void
.end method

.method public getUserDoPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "Logo\u9875\u9762"

    return-object v0
.end method

.method public logoAnim_CallBack(Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x2

    const/high16 v4, 0x40200000    # 2.5f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    .line 130
    iget-object v1, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    new-array v2, v8, [Lorg/cocos2d/actions/base/CCAction;

    invoke-static {}, Lorg/cocos2d/actions/instant/CCShow;->action()Lorg/cocos2d/actions/instant/CCShow;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/sns/game/actions/CCTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lcom/sns/game/actions/CCTargetAction;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 131
    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCFadeIn;->action(F)Lorg/cocos2d/actions/interval/CCFadeIn;

    move-result-object v3

    aput-object v3, v2, v7

    .line 132
    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCFadeOut;->action(F)Lorg/cocos2d/actions/interval/CCFadeOut;

    move-result-object v3

    aput-object v3, v2, v8

    .line 133
    invoke-static {}, Lorg/cocos2d/actions/instant/CCHide;->action()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x3

    .line 134
    iget-object v4, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    new-array v5, v8, [Lorg/cocos2d/actions/base/CCAction;

    invoke-static {}, Lorg/cocos2d/actions/instant/CCHide;->action()Lorg/cocos2d/actions/instant/CCHide;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/sns/game/actions/CCTargetAction;->action(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/actions/base/CCAction;)Lcom/sns/game/actions/CCTargetAction;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v9, [Lorg/cocos2d/nodes/CCNode;

    .line 135
    iget-object v5, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/sns/game/actions/CCRemove;->action([Lorg/cocos2d/nodes/CCNode;)Lcom/sns/game/actions/CCRemove;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 136
    const-string v4, "toMenuCover_CallBack"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 139
    return-void
.end method

.method protected onCreateFinishCall()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/sns/game/ui/CCGameLayer;->onCreateFinishCall()V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCLogoLayer;->setIsTouchEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/sns/game/layer/CCLogoLayer;->runLogoAction()V

    .line 93
    return-void
.end method

.method protected onExitFinishCall()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCLogoLayer;->recycleSelf()V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/sns/game/layer/CCLogoLayer;->layer:Lcom/sns/game/layer/CCLogoLayer;

    .line 102
    :cond_0
    return-void
.end method

.method protected preloadSelf()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 63
    :cond_1
    iput-object v1, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    .line 64
    iput-object v1, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    .line 66
    return-void
.end method

.method public runLogoAction()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 122
    .line 123
    const-string v0, "logoAnim_CallBack"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCLogoLayer;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 125
    return-void
.end method

.method protected sortChildren()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 71
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoBg_Egame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCLogoLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 72
    iget-object v0, p0, Lcom/sns/game/layer/CCLogoLayer;->logoEgame:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0, v1}, Lcom/sns/game/layer/CCLogoLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 73
    return-void
.end method

.method public toMenuCover_CallBack()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccLayer()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    .line 145
    .local v1, "toLayer":Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-virtual {p0}, Lcom/sns/game/layer/CCLogoLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCLogoLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "toLayer":Lcom/sns/game/layer/CCNewMenuMainLayer;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
