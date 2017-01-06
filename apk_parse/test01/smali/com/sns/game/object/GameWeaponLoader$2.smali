.class Lcom/sns/game/object/GameWeaponLoader$2;
.super Ljava/lang/Object;
.source "GameWeaponLoader.java"

# interfaces
.implements Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/object/GameWeaponLoader;->activateBilling2PayGold()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/object/GameWeaponLoader;

.field private final synthetic val$bean:Lcom/sns/game/database/bean/StoreItemBean;

.field private final synthetic val$runningLayer:Lcom/sns/game/ui/CCGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/object/GameWeaponLoader;Lcom/sns/game/database/bean/StoreItemBean;Lcom/sns/game/ui/CCGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/object/GameWeaponLoader$2;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    iput-object p2, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    iput-object p3, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCancel()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 443
    return-void
.end method

.method public onBillingFailed()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 438
    return-void
.end method

.method public onBillingSuccess()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 429
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->oneSelf()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v1

    .line 430
    .local v1, "tagLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v1}, Lcom/sns/game/layer/CCNewGameLayer;->updateUgLglCallBackWithObj()Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v0

    .line 431
    .local v0, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$bean:Lcom/sns/game/database/bean/StoreItemBean;

    invoke-virtual {v4}, Lcom/sns/game/database/bean/StoreItemBean;->getGold()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 432
    iget-object v2, p0, Lcom/sns/game/object/GameWeaponLoader$2;->val$runningLayer:Lcom/sns/game/ui/CCGameLayer;

    invoke-virtual {v2, v5}, Lcom/sns/game/ui/CCGameLayer;->setIsTouchEnabled(Z)V

    .line 433
    return-void
.end method
