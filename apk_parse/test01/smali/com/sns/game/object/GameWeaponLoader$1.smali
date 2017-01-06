.class Lcom/sns/game/object/GameWeaponLoader$1;
.super Ljava/lang/Object;
.source "GameWeaponLoader.java"

# interfaces
.implements Lorg/cocos2d/actions/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/object/GameWeaponLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/object/GameWeaponLoader;


# direct methods
.method constructor <init>(Lcom/sns/game/object/GameWeaponLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 7
    .param p1, "d"    # F

    .prologue
    .line 201
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;
    invoke-static {v4}, Lcom/sns/game/object/GameWeaponLoader;->access$0(Lcom/sns/game/object/GameWeaponLoader;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 202
    :try_start_0
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;
    invoke-static {v4}, Lcom/sns/game/object/GameWeaponLoader;->access$0(Lcom/sns/game/object/GameWeaponLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->scheduleRemoveWpnNode:Lorg/cocos2d/nodes/CCSprite;
    invoke-static {v4}, Lcom/sns/game/object/GameWeaponLoader;->access$1(Lcom/sns/game/object/GameWeaponLoader;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/cocos2d/nodes/CCSprite;->unschedule(Lorg/cocos2d/actions/UpdateCallback;)V

    .line 204
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/sns/game/object/GameWeaponLoader;->access$2(Lcom/sns/game/object/GameWeaponLoader;Z)V

    .line 205
    monitor-exit v5

    .line 227
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "tmpWpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    iget-object v4, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;
    invoke-static {v4}, Lcom/sns/game/object/GameWeaponLoader;->access$0(Lcom/sns/game/object/GameWeaponLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 211
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 220
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 201
    monitor-exit v5

    goto :goto_0

    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    .end local v3    # "tmpWpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 212
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sns/game/object/GameWeapon;>;"
    .restart local v3    # "tmpWpns":Ljava/util/List;, "Ljava/util/List<Lcom/sns/game/object/GameWeapon;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sns/game/object/GameWeapon;

    .line 213
    .local v0, "gameWeapon":Lcom/sns/game/object/GameWeapon;
    invoke-virtual {v0}, Lcom/sns/game/object/GameWeapon;->getBulletSheet()Lorg/cocos2d/nodes/CCSpriteSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSpriteSheet;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0    # "gameWeapon":Lcom/sns/game/object/GameWeapon;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sns/game/object/GameWeapon;

    .line 221
    .local v2, "tmpWpn":Lcom/sns/game/object/GameWeapon;
    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {v2}, Lcom/sns/game/object/GameWeapon;->recycleSelf()V

    .line 223
    iget-object v6, p0, Lcom/sns/game/object/GameWeaponLoader$1;->this$0:Lcom/sns/game/object/GameWeaponLoader;

    # getter for: Lcom/sns/game/object/GameWeaponLoader;->removeWpns:Ljava/util/List;
    invoke-static {v6}, Lcom/sns/game/object/GameWeaponLoader;->access$0(Lcom/sns/game/object/GameWeaponLoader;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
