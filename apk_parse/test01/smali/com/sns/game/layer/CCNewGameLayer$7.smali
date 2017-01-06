.class Lcom/sns/game/layer/CCNewGameLayer$7;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->upGradeDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$7;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1561
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1565
    aget-object v0, p2, v4

    check-cast v0, Lcom/sns/game/database/bean/UserLevelBean;

    .line 1566
    .local v0, "bean":Lcom/sns/game/database/bean/UserLevelBean;
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$7;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->zomPlotDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v1

    .line 1567
    .local v1, "lglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserLevelBean;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1572
    return-void
.end method
