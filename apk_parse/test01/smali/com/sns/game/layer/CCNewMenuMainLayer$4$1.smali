.class Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewMenuMainLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewMenuMainLayer$4;->updateHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$4;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewMenuMainLayer$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$4;

    .line 486
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 490
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 491
    .local v0, "btnTag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$4;

    # getter for: Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-static {v1}, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$4;)Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sns/game/layer/CCNewMenuMainLayer$4$1;->this$1:Lcom/sns/game/layer/CCNewMenuMainLayer$4;

    # getter for: Lcom/sns/game/layer/CCNewMenuMainLayer$4;->this$0:Lcom/sns/game/layer/CCNewMenuMainLayer;
    invoke-static {v2}, Lcom/sns/game/layer/CCNewMenuMainLayer$4;->access$0(Lcom/sns/game/layer/CCNewMenuMainLayer$4;)Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v2

    # invokes: Lcom/sns/game/layer/CCNewMenuMainLayer;->showGameTopDialogLglCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-static {v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->access$2(Lcom/sns/game/layer/CCNewMenuMainLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v2

    # invokes: Lcom/sns/game/layer/CCNewMenuMainLayer;->upLoadGameScore(Lcom/sns/game/util/LogicalHandleCallBack;)V
    invoke-static {v1, v2}, Lcom/sns/game/layer/CCNewMenuMainLayer;->access$3(Lcom/sns/game/layer/CCNewMenuMainLayer;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 493
    :cond_0
    return-void
.end method
