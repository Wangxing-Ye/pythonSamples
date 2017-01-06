.class Lcom/sns/game/layer/CCNewGameLayer$10;
.super Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->onSelectedLogicalHandleByBtnGG()Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$10;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1644
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;-><init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method


# virtual methods
.method public handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
    .locals 7
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v6, 0x3dcccccd    # 0.1f

    .line 1648
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$10;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iget-object v5, v5, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v5, :cond_0

    .line 1649
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$10;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iget-object v5, v5, Lcom/sns/game/layer/CCNewGameLayer;->ggIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1650
    const v5, 0x3f99999a    # 1.2f

    invoke-static {v6, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v1

    .line 1651
    .local v1, "zoomToBig":Lorg/cocos2d/actions/interval/CCScaleTo;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v2

    .line 1652
    .local v2, "zoomToSml":Lorg/cocos2d/actions/interval/CCScaleTo;
    new-array v5, v3, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    aput-object v2, v5, v4

    invoke-static {v1, v5}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 1653
    .local v0, "zoomSeq":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItemSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 1657
    .end local v0    # "zoomSeq":Lorg/cocos2d/actions/interval/CCSequence;
    .end local v1    # "zoomToBig":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v2    # "zoomToSml":Lorg/cocos2d/actions/interval/CCScaleTo;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method
