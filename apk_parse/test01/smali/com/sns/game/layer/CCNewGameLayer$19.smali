.class Lcom/sns/game/layer/CCNewGameLayer$19;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->onPauseCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$19;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 2395
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 2400
    :try_start_0
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$19;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v5}, Lcom/sns/game/layer/CCNewGameLayer;->onGamePause()V

    .line 2401
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    move-object v4, v0

    .line 2402
    .local v4, "targetNode":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCNode;->resumeSchedulerAndActions()V

    .line 2404
    move-object v0, p1

    check-cast v0, Lcom/sns/game/dialog/CCInGamePauseDialog;

    move-object v2, v0

    .line 2405
    .local v2, "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 2406
    .local v1, "app":Lcom/sns/game/activity/GameActivityss;
    iget-object v5, p0, Lcom/sns/game/layer/CCNewGameLayer$19;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v5, v2}, Lcom/sns/game/layer/CCNewGameLayer;->onbdgamePauseWithCallBack(Lcom/sns/game/dialog/CCInGamePauseDialog;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sns/game/activity/GameActivityss;->activateCallBackToMsg(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    .end local v1    # "app":Lcom/sns/game/activity/GameActivityss;
    .end local v2    # "dialog":Lcom/sns/game/dialog/CCInGamePauseDialog;
    .end local v4    # "targetNode":Lorg/cocos2d/nodes/CCNode;
    :goto_0
    return-void

    .line 2408
    :catch_0
    move-exception v3

    .line 2409
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
