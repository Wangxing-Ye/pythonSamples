.class Lcom/sns/game/layer/CCSHNewLayer$2;
.super Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.source "CCSHNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCSHNewLayer;->createWqkSdLglHandle(Lorg/cocos2d/menus/CCMenuItemSprite;)Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCSHNewLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCSHNewLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCSHNewLayer$2;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    .line 602
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;-><init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method


# virtual methods
.method public handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
    .locals 3
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 606
    move-object v0, p1

    check-cast v0, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    .line 607
    .local v0, "item":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer$2;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    const-string v2, "Game_UI_Box_Weapon_Selected.png"

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCSHNewLayer;->spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->runHltAction(Lorg/cocos2d/nodes/CCSprite;)V

    .line 608
    invoke-virtual {v0}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->unselected()V

    .line 609
    const/4 v1, 0x0

    return v1
.end method
