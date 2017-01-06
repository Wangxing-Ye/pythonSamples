.class public interface abstract Lcom/sns/game/object/FireDelegate;
.super Ljava/lang/Object;
.source "FireDelegate.java"


# virtual methods
.method public varargs abstract acceptedWeaponFire_CLUSTER(Lcom/sns/game/object/GameBaseZombie;Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
.end method

.method public varargs abstract weaponFire_CGP(Lorg/cocos2d/nodes/CCSprite;[Ljava/lang/Object;)V
.end method

.method public varargs abstract weaponFire_CLUSTER(Ljava/util/List;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract weaponFire_DMG(Lcom/sns/game/object/GameBaseZombie;)V
.end method

.method public abstract weaponFire_JGP(Lcom/sns/game/object/GameBaseZombie;)V
.end method

.method public abstract weaponFire_WDP(Lcom/sns/game/object/GameBaseZombie;)V
.end method

.method public abstract weaponFire_XGTS(Lcom/sns/game/object/GameBaseZombie;)V
.end method

.method public abstract weaponFire_XRZC(Lcom/sns/game/object/GameBaseZombie;)V
.end method
