.class public abstract Lcom/sns/game/object/GameBaseZombie;
.super Ljava/lang/Object;
.source "GameBaseZombie.java"

# interfaces
.implements Lcom/sns/game/object/AcceptDelegate;


# instance fields
.field protected collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

.field protected dropMultiple:I

.field protected isDropGold:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/GameBaseZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    .line 52
    iput-boolean v1, p0, Lcom/sns/game/object/GameBaseZombie;->isDropGold:Z

    .line 66
    iput v1, p0, Lcom/sns/game/object/GameBaseZombie;->dropMultiple:I

    .line 5
    return-void
.end method


# virtual methods
.method public acceptedAttack()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public callBack_selector_acceptedAttack(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    return-void
.end method

.method public callBack_selector_drillOut(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 16
    return-void
.end method

.method public callBack_selector_dropOut(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 29
    return-void
.end method

.method public callBack_selector_endOwnLife(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 26
    return-void
.end method

.method public callBack_selector_moveTo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 19
    return-void
.end method

.method public abstract callBack_selector_recycleSelf()V
.end method

.method public abstract createSelf()V
.end method

.method public drillOut()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public dropOut()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public varargs endOwnLife([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 24
    return-void
.end method

.method protected executiveToKillSelf()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected getCollisionBoundingBox()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sns/game/object/GameBaseZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method protected getCollisionBoundingBox(F)Lorg/cocos2d/types/CGRect;
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sns/game/object/GameBaseZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method protected getCollisionBoundingBox(FF)Lorg/cocos2d/types/CGRect;
    .locals 1
    .param p1, "indentX"    # F
    .param p2, "indentY"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sns/game/object/GameBaseZombie;->collisionBoundingBox_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method protected getDropMultiple()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sns/game/object/GameBaseZombie;->dropMultiple:I

    return v0
.end method

.method public abstract getTag()I
.end method

.method protected isDropGold()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sns/game/object/GameBaseZombie;->isDropGold:Z

    return v0
.end method

.method public isIgnoreAttack()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public moveTo()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public abstract recycleSelf()V
.end method

.method public abstract runAction()V
.end method

.method protected runOnAcckPPaoAction()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected setDropGold(Z)V
    .locals 0
    .param p1, "isDropGold"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sns/game/object/GameBaseZombie;->isDropGold:Z

    .line 60
    return-void
.end method

.method public setDropMultiple(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 69
    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lcom/sns/game/object/GameBaseZombie;->dropMultiple:I

    .line 72
    :cond_0
    return-void
.end method
