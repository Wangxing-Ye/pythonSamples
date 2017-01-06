.class Lcom/sns/game/layer/CCNewGameLayer$8;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->zomPlotDialogOnCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$8;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1584
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 1588
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1589
    .local v0, "level":I
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$8;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;
    invoke-static {v2}, Lcom/sns/game/layer/CCNewGameLayer;->access$4(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameZombieLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$8;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->zombieLoader:Lcom/sns/game/object/GameZombieLoader;
    invoke-static {v2}, Lcom/sns/game/layer/CCNewGameLayer;->access$4(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameZombieLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/object/GameZombieLoader;->updateDymicZomDataBeans()V

    .line 1592
    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    .line 1593
    .local v1, "uState":Lcom/sns/game/database/bean/UserState;
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 1594
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sns/game/database/bean/UserState;->setActivateGameTag(I)V

    .line 1595
    iget-object v2, p0, Lcom/sns/game/layer/CCNewGameLayer$8;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # invokes: Lcom/sns/game/layer/CCNewGameLayer;->showWeaponGiftBagDialog()V
    invoke-static {v2}, Lcom/sns/game/layer/CCNewGameLayer;->access$5(Lcom/sns/game/layer/CCNewGameLayer;)V

    .line 1597
    :cond_1
    return-void
.end method
