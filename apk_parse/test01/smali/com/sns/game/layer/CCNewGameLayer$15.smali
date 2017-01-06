.class Lcom/sns/game/layer/CCNewGameLayer$15;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->restoreBgbAnimLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;

.field private final synthetic val$target:Lorg/cocos2d/menus/CCMenuItemSprite;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/menus/CCMenuItemSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$15;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewGameLayer$15;->val$target:Lorg/cocos2d/menus/CCMenuItemSprite;

    .line 2109
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    .line 2113
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$15;->val$target:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 2114
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$15;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2115
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$15;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->runAnimWithGiftBag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    :goto_0
    return-void

    .line 2116
    :catch_0
    move-exception v0

    .line 2117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
