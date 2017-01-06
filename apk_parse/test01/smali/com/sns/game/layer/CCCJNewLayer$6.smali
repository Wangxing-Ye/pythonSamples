.class Lcom/sns/game/layer/CCCJNewLayer$6;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCCJNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCCJNewLayer;->achDialogCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCCJNewLayer$6;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    .line 933
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sns/game/layer/CCCJNewLayer$6;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    # invokes: Lcom/sns/game/layer/CCCJNewLayer;->showRewardDialog()V
    invoke-static {v0}, Lcom/sns/game/layer/CCCJNewLayer;->access$2(Lcom/sns/game/layer/CCCJNewLayer;)V

    .line 938
    return-void
.end method
