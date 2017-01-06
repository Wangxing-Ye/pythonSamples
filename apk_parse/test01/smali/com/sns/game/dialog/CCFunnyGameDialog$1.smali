.class Lcom/sns/game/dialog/CCFunnyGameDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCFunnyGameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCFunnyGameDialog;->dropItem_CallBack(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

.field private final synthetic val$data:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCFunnyGameDialog;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    iput-object p2, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->val$data:[Ljava/lang/Object;

    .line 554
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 558
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->val$data:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Lorg/cocos2d/nodes/CCSprite;

    .line 559
    .local v2, "rewardItem":Lorg/cocos2d/nodes/CCSprite;
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->val$data:[Ljava/lang/Object;

    aget-object v0, v3, v7

    check-cast v0, Lorg/cocos2d/layers/CCLayer;

    .line 560
    .local v0, "caller":Lorg/cocos2d/layers/CCLayer;
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 561
    invoke-virtual {v2}, Lorg/cocos2d/nodes/CCSprite;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;

    .line 562
    .local v1, "itmData":Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;
    iget v3, v1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 572
    :goto_0
    invoke-virtual {v0, v7}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 573
    return-void

    .line 564
    :pswitch_0
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    # invokes: Lcom/sns/game/dialog/CCFunnyGameDialog;->dropWithWpnItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    invoke-static {v3, v0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->access$0(Lcom/sns/game/dialog/CCFunnyGameDialog;Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    .line 565
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    const-string v4, "GETREWARD_"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5c0f\u6e38\u620f\u5956\u52b1\u6b66\u5668\u5361_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->itemName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sns/game/dialog/CCFunnyGameDialog;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/sns/game/dialog/CCFunnyGameDialog;->access$1(Lcom/sns/game/dialog/CCFunnyGameDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    # invokes: Lcom/sns/game/dialog/CCFunnyGameDialog;->dropWithGoldItem(Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V
    invoke-static {v3, v0, v1}, Lcom/sns/game/dialog/CCFunnyGameDialog;->access$2(Lcom/sns/game/dialog/CCFunnyGameDialog;Lorg/cocos2d/layers/CCLayer;Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;)V

    .line 569
    iget-object v3, p0, Lcom/sns/game/dialog/CCFunnyGameDialog$1;->this$0:Lcom/sns/game/dialog/CCFunnyGameDialog;

    const-string v4, "GETREWARD_"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5c0f\u6e38\u620f\u5956\u52b1\u91d1\u5e01_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sns/game/dialog/CCFunnyGameDialog$ItemData;->itemName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sns/game/dialog/CCFunnyGameDialog;->activateUpdateBanner(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/sns/game/dialog/CCFunnyGameDialog;->access$1(Lcom/sns/game/dialog/CCFunnyGameDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
