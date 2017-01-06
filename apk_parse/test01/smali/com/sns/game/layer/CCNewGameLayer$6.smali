.class Lcom/sns/game/layer/CCNewGameLayer$6;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->upGradeDialogOnShowCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$6;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1548
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1552
    aget-object v0, p2, v3

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    .line 1553
    .local v0, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$6;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getReward_gold()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserGold(IZ)V

    .line 1554
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$6;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 1555
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$6;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->addTeachArrow2WpnItem(I)V

    .line 1556
    return-void
.end method
