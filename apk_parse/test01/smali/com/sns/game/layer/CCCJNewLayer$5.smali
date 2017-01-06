.class Lcom/sns/game/layer/CCCJNewLayer$5;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCCJNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCCJNewLayer;->onResumeCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCCJNewLayer$5;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    .line 795
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

    .line 799
    iget-object v1, p0, Lcom/sns/game/layer/CCCJNewLayer$5;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCCJNewLayer;->onGameResume()V

    .line 800
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 801
    .local v0, "btnTag":I
    iget-object v4, p0, Lcom/sns/game/layer/CCCJNewLayer$5;->this$0:Lcom/sns/game/layer/CCCJNewLayer;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sns/game/layer/CCCJNewLayer;->setIsTouchEnabled(Z)V

    .line 802
    return-void

    :cond_0
    move v1, v3

    .line 801
    goto :goto_0
.end method
