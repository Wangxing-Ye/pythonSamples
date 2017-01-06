.class Lcom/sns/game/layer/CCNewManSystem$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewManSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewManSystem;->cancelLglCallBack(ZLorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewManSystem;

.field private final synthetic val$isFinish:Z

.field private final synthetic val$targetLayer:Lorg/cocos2d/layers/CCLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewManSystem;ZLorg/cocos2d/layers/CCLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewManSystem$1;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iput-boolean p2, p0, Lcom/sns/game/layer/CCNewManSystem$1;->val$isFinish:Z

    iput-object p3, p0, Lcom/sns/game/layer/CCNewManSystem$1;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    .line 437
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 5

    .prologue
    .line 440
    iget-object v3, p0, Lcom/sns/game/layer/CCNewManSystem$1;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sns/game/layer/CCNewManSystem;->setActivate(Z)V

    .line 441
    iget-boolean v3, p0, Lcom/sns/game/layer/CCNewManSystem$1;->val$isFinish:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sns/game/layer/CCNewManSystem$1;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    # invokes: Lcom/sns/game/layer/CCNewManSystem;->finish()V
    invoke-static {v3}, Lcom/sns/game/layer/CCNewManSystem;->access$0(Lcom/sns/game/layer/CCNewManSystem;)V

    .line 442
    :cond_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewManSystem$1;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    instance-of v3, v3, Lcom/sns/game/layer/CCNewGameLayer;

    if-nez v3, :cond_2

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    iget-object v2, p0, Lcom/sns/game/layer/CCNewManSystem$1;->val$targetLayer:Lorg/cocos2d/layers/CCLayer;

    check-cast v2, Lcom/sns/game/layer/CCNewGameLayer;

    .line 444
    .local v2, "ngLayer":Lcom/sns/game/layer/CCNewGameLayer;
    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->getZombieLoader()Lcom/sns/game/object/GameZombieLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/object/GameZombieLoader;->isExistZombie()Z

    move-result v0

    .line 445
    .local v0, "isEmptyZom":Z
    const/4 v1, 0x0

    .line 446
    .local v1, "isVisibleRm":Z
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->activateLoadZombies()V

    .line 447
    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/sns/game/layer/CCNewGameLayer;->activateRandomTaskSystem()V

    goto :goto_0
.end method
