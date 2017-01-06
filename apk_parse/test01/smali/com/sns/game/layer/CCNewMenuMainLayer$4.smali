.class Lcom/sns/game/layer/CCNewMenuMainLayer$4;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer;->autoCheckRegisterLglCallBack(Lcom/sns/game/activity/GameActivityss;Z)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

.field private final synthetic val$app:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->val$app:Lcom/sns/game/activity/GameActivityss;

    .line 476
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$4;)Lcom/sns/game/layer/CCNewMenuMainLayer;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    return-object v0
.end method


# virtual methods
.method public updateHandle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 479
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    .line 480
    .local v1, "uState":Lcom/sns/game/database/bean/UserState;
    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->isExistSelfUserTop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->val$app:Lcom/sns/game/activity/GameActivityss;

    invoke-static {v2}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->sharedDialog(Landroid/content/Context;)Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;

    move-result-object v0

    .line 482
    .local v0, "dialog":Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sns/game/util/LogicalHandleCallBack;

    const/4 v3, 0x0

    .line 484
    iget-object v4, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    # invokes: Lcom/sns/game/layer/CCNewMenuMainLayer;->updateNickNameLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-static {v4}, Lcom/sns/game/layer/CCNewMenuMainLayer;->access$1(Lcom/sns/game/layer/CCNewMenuMainLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v4

    aput-object v4, v2, v3

    .line 485
    iget-object v3, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    invoke-virtual {v3, v5}, Lcom/sns/game/layer/CCNewMenuMainLayer;->controlTouchedLglCallBack(Z)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 486
    new-instance v4, Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;

    invoke-direct {v4, p0}, Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;-><init>(Lcom/sns/game/layer/CCNewMenuMainLayer$4;)V

    aput-object v4, v2, v3

    .line 482
    invoke-virtual {v0, v2}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->setCancelCallBackSequence([Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 496
    invoke-virtual {v0}, Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;->show()V

    .line 500
    .end local v0    # "dialog":Lcom/sns/game/dialog/system/CCNickNameRegisterDialog;
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;

    invoke-virtual {v2, v5}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    goto :goto_0
.end method
