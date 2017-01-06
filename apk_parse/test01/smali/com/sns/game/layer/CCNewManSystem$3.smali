.class Lcom/sns/game/layer/CCNewManSystem$3;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewManSystem$3;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    iput p3, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$studyId:I

    .line 495
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 497
    const/16 v0, 0x32

    .line 498
    .local v0, "GOLD":I
    iget-object v2, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    check-cast v2, Lcom/sns/game/layer/CCNewGameLayer;

    .line 499
    .local v2, "newgameLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->updateUgLglCallBackWithObj()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    .line 500
    .local v1, "addGoldCallback":Lcom/sns/game/util/LogicalHandleCallBack;
    iget-object v4, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 501
    const-string v4, "\u8d2d\u4e70\u91d1\u5e01\u6210\u529f,\u5df2\u83b7\u5f97\u91d1\u5e0150"

    invoke-static {v4}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, Lcom/sns/game/layer/CCNewManSystem$3;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iget v5, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$studyId:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/sns/game/layer/CCNewManSystem$3;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v4, v5, v6}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    .line 503
    .local v3, "nextCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v3}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V

    .line 504
    return-void
.end method
