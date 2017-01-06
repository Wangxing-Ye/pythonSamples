.class Lcom/sns/game/object/GameWeapon$2;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "GameWeapon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/object/GameWeapon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/object/GameWeapon;


# direct methods
.method constructor <init>(Lcom/sns/game/object/GameWeapon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/object/GameWeapon$2;->this$0:Lcom/sns/game/object/GameWeapon;

    .line 756
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 760
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sns/game/object/GameWeapon$2;->this$0:Lcom/sns/game/object/GameWeapon;

    # getter for: Lcom/sns/game/object/GameWeapon;->bean:Lcom/sns/game/database/bean/UserWeaponBean;
    invoke-static {v1}, Lcom/sns/game/object/GameWeapon;->access$0(Lcom/sns/game/object/GameWeapon;)Lcom/sns/game/database/bean/UserWeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserWeaponBean;->getWeaponBean()Lcom/sns/game/database/bean/WeaponBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/WeaponBean;->getAttackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 759
    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->playEffect(IZ)V

    .line 761
    return-void
.end method
