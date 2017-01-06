.class Lcom/sns/game/layer/CCCJNewLayer$7;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCCJNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCCJNewLayer;->rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCCJNewLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCCJNewLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCCJNewLayer$7;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    .line 943
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 947
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->layer()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v0

    .line 948
    .local v0, "toLayer":Lcom/sns/game/layer/CCNewGameLayer;
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer$7;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCCJNewLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer$7;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    # invokes: Lcom/sns/game/layer/CCCJNewLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    invoke-static {v1, v0}, Lcom/sns/game/layer/CCCJNewLayer;->access$3(Lcom/sns/game/layer/CCCJNewLayer;Lorg/cocos2d/layers/CCLayer;)V

    .line 950
    return-void
.end method
