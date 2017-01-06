.class Lcom/sns/game/layer/CCNewManSystem$2;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewManSystem$2;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    iput p3, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$studyId:I

    .line 473
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 475
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 476
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    check-cast v1, Lcom/sns/game/layer/CCNewGameLayer;

    .line 477
    .local v1, "newgameLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v1, v0}, Lcom/sns/game/layer/CCNewGameLayer;->ccTouchedUserWqkItemsByXsjc(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 478
    .local v3, "touched":Z
    if-eqz v3, :cond_0

    .line 479
    iget-object v4, p0, Lcom/sns/game/layer/CCNewManSystem$2;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iget v5, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$studyId:I

    invoke-virtual {v4, v5}, Lcom/sns/game/layer/CCNewManSystem;->removeNodes4Mapping(I)V

    .line 480
    iget-object v4, p0, Lcom/sns/game/layer/CCNewManSystem$2;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iget v5, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$studyId:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/sns/game/layer/CCNewManSystem$2;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v4, v5, v6}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v2

    .line 481
    .local v2, "nextCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v2}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 483
    .end local v2    # "nextCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :cond_0
    return-void
.end method
