.class Lcom/sns/game/layer/CCNewGameLayer$20;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$20;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 2417
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2421
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$20;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->onGameResume()V

    .line 2422
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2423
    .local v0, "btnTag":I
    iget-object v4, p0, Lcom/sns/game/layer/CCNewGameLayer$20;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 2424
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$20;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->access$9(Lcom/sns/game/layer/CCNewGameLayer;Lcom/sns/game/dialog/CCInGamePauseDialog;)V

    .line 2425
    return-void

    :cond_0
    move v1, v3

    .line 2423
    goto :goto_0
.end method
