.class Lcom/sns/game/layer/CCNewGameLayer$13;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->updateButtonByMode(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;

.field private final synthetic val$animChild:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;Lorg/cocos2d/nodes/CCSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$13;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewGameLayer$13;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    .line 1982
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$13;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 1986
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$13;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 1987
    return-void
.end method
