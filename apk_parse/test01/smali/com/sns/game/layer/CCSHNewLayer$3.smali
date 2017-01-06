.class Lcom/sns/game/layer/CCSHNewLayer$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCSHNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCSHNewLayer;->onbdgamePauseWithCallBack(Lcom/sns/game/dialog/CCInGamePauseDialog;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCSHNewLayer;

.field private final synthetic val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCSHNewLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCSHNewLayer$3;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    iput-object p2, p0, Lcom/sns/game/layer/CCSHNewLayer$3;->val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    .line 733
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 4

    .prologue
    .line 737
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 738
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    invoke-static {}, Lcom/duoku/platform/single/DKPlatform;->getInstance()Lcom/duoku/platform/single/DKPlatform;

    move-result-object v1

    new-instance v2, Lcom/sns/game/layer/CCSHNewLayer$3$1;

    iget-object v3, p0, Lcom/sns/game/layer/CCSHNewLayer$3;->val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-direct {v2, p0, v3}, Lcom/sns/game/layer/CCSHNewLayer$3$1;-><init>(Lcom/sns/game/layer/CCSHNewLayer$3;Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/duoku/platform/single/DKPlatform;->bdgamePause(Landroid/app/Activity;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    .line 747
    return-void
.end method
