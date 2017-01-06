.class Lcom/sns/game/layer/CCNewMenuMainLayer$1;
.super Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer;->setCheckBoxSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$1;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    .line 199
    invoke-direct {p0, p2}, Lorg/cocos2d/menus/CCMenuItemSprite$OnSelectedLogicalHandle;-><init>(Lorg/cocos2d/menus/CCMenuItemSprite;)V

    return-void
.end method


# virtual methods
.method public handleLogical(Lorg/cocos2d/menus/CCMenuItemSprite;)Z
    .locals 1
    .param p1, "itemSp"    # Lorg/cocos2d/menus/CCMenuItemSprite;

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method
