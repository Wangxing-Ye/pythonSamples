.class Lcom/sns/game/layer/CCSHNewLayer$7;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCSHNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCSHNewLayer;->rewardDialogCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCSHNewLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCSHNewLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCSHNewLayer$7;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    .line 923
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 927
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->layer()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v0

    .line 928
    .local v0, "toLayer":Lcom/sns/game/layer/CCNewGameLayer;
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer$7;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCSHNewLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->setUserDoCallPath(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/sns/game/layer/CCSHNewLayer$7;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    # invokes: Lcom/sns/game/layer/CCSHNewLayer;->ccFadeTransitionToScene(Lorg/cocos2d/layers/CCLayer;)V
    invoke-static {v1, v0}, Lcom/sns/game/layer/CCSHNewLayer;->access$1(Lcom/sns/game/layer/CCSHNewLayer;Lorg/cocos2d/layers/CCLayer;)V

    .line 930
    return-void
.end method
