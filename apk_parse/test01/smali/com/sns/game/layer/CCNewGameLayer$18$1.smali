.class Lcom/sns/game/layer/CCNewGameLayer$18$1;
.super Ljava/lang/Object;
.source "CCNewGameLayer.java"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer$18;->updateHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sns/game/layer/CCNewGameLayer$18;

.field private final synthetic val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer$18;Lcom/sns/game/dialog/CCInGamePauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$18$1;->this$1:Lcom/sns/game/layer/CCNewGameLayer$18;

    iput-object p2, p0, Lcom/sns/game/layer/CCNewGameLayer$18$1;->val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2384
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$18$1;->val$dialog:Lcom/sns/game/dialog/CCInGamePauseDialog;

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 2385
    invoke-static {v1}, Lorg/cocos2d/config/ccMacros;->cc_director_WindowFocusChanged(Z)V

    .line 2386
    const-string v0, "Test"

    const-string v1, "DKPlatform....onResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    return-void
.end method
