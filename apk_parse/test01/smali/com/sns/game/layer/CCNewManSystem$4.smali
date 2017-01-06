.class Lcom/sns/game/layer/CCNewManSystem$4;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewManSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewManSystem;

.field private final synthetic val$studyId:I

.field private final synthetic val$targetLayer:Lorg/cocos2d/layers/CCLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewManSystem;Lorg/cocos2d/layers/CCLayer;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewManSystem$4;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewManSystem$4;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    iput p3, p0, Lcom/sns/game/layer/CCNewManSystem$4;->val$studyId:I

    .line 516
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 5

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sns/game/layer/CCNewManSystem$4;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    check-cast v0, Lcom/sns/game/layer/CCNewGameLayer;

    .line 519
    .local v0, "newgameLayer":Lcom/sns/game/layer/CCNewGameLayer;
    iget-object v2, v0, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble:Lorg/cocos2d/menus/CCMenuItemSprite;

    invoke-virtual {v0, v2}, Lcom/sns/game/layer/CCNewGameLayer;->btnDouble_CallBack(Ljava/lang/Object;)V

    .line 520
    iget-object v2, p0, Lcom/sns/game/layer/CCNewManSystem$4;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iget v3, p0, Lcom/sns/game/layer/CCNewManSystem$4;->val$studyId:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sns/game/layer/CCNewManSystem$4;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v2, v3, v4}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    .line 521
    .local v1, "nextCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 522
    return-void
.end method
