.class Lcom/sns/game/layer/CCNewGameLayer$9;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->onWeaponGiftBagGetCallback()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$9;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1610
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$9;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # getter for: Lcom/sns/game/layer/CCNewGameLayer;->weaponLoader:Lcom/sns/game/object/GameWeaponLoader;
    invoke-static {v0}, Lcom/sns/game/layer/CCNewGameLayer;->access$1(Lcom/sns/game/layer/CCNewGameLayer;)Lcom/sns/game/object/GameWeaponLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/object/GameWeaponLoader;->updateNowUseWeaponCacheData()V

    .line 1613
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$9;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    invoke-virtual {v0}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 1614
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$9;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/16 v1, 0x32

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewGameLayer;->batchRunAddWqkNumAction(II)V

    .line 1615
    iget-object v0, p0, Lcom/sns/game/layer/CCNewGameLayer$9;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewGameLayer;->setIsTouchEnabled(Z)V

    .line 1616
    return-void
.end method
