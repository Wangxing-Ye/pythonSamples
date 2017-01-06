.class Lcom/sns/game/object/GameWeaponLoader$3;
.super Ljava/lang/Object;
.source "GameWeaponLoader.java"

# interfaces
.implements Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayWeapon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/object/GameWeaponLoader;

.field private final synthetic val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

.field private final synthetic val$wepnId:I


# direct methods
.method constructor <init>(Lcom/sns/game/object/GameWeaponLoader;ILcom/sns/game/ui/CCGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/object/GameWeaponLoader$3;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    iput p2, p0, Lcom/sns/game/object/GameWeaponLoader$3;->val$wepnId:I

    iput-object p3, p0, Lcom/sns/game/object/GameWeaponLoader$3;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCancel()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader$3;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 493
    return-void
.end method

.method public onBillingFailed()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader$3;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 488
    return-void
.end method

.method public onBillingSuccess()V
    .locals 7

    .prologue
    .line 470
    iget-object v5, p0, Lcom/sns/game/object/GameWeaponLoader$3;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    iget v6, p0, Lcom/sns/game/object/GameWeaponLoader$3;->val$wepnId:I

    # invokes: Lcom/sns/game/object/GameWeaponLoader;->toBuyWeapon(I)Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-static {v5, v6}, Lcom/sns/game/object/GameWeaponLoader;->access$3(Lcom/sns/game/object/GameWeaponLoader;I)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v2

    .line 472
    .local v2, "uwpnBean":Lcom/sns/game/database/bean/UserWeaponBean;
    iget-object v5, p0, Lcom/sns/game/object/GameWeaponLoader$3;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->callerTag:Lcom/sns/game/util/GameConstant$LayerTag;
    invoke-static {v5}, Lcom/sns/game/object/GameWeaponLoader;->access$4(Lcom/sns/game/object/GameWeaponLoader;)Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v5

    sget-object v6, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    if-ne v5, v6, :cond_0

    .line 473
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v1

    .line 474
    .local v1, "layer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateUserWqkItems()V

    .line 475
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getQuote_id()I

    move-result v3

    .line 476
    .local v3, "wepnId":I
    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sns/game/database/bean/WeaponBean;->getBullet_count()I

    move-result v0

    .line 477
    .local v0, "bulletCount":I
    invoke-virtual {v1, v3}, Lcom/sns/game/layer/CCNewGameLayer;->findWqkItem(I)Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;

    move-result-object v4

    .line 478
    .local v4, "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    invoke-virtual {v4}, Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;->ccCopyCallTouched()V

    .line 479
    const/16 v5, 0x65

    invoke-virtual {v1, v4, v0, v5}, Lcom/sns/game/layer/CCNewGameLayer;->runAddWqkNumAction(Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;II)V

    .line 482
    .end local v0    # "bulletCount":I
    .end local v1    # "layer":Lcom/sns/game/layer/CCNewGameLayer;
    .end local v3    # "wepnId":I
    .end local v4    # "wqkItem":Lcom/sns/game/ccobjects/CCMenuItemSelectedWqk;
    :cond_0
    invoke-virtual {p0}, Lcom/sns/game/object/GameWeaponLoader$3;->onBillingCancel()V

    .line 483
    return-void
.end method
