.class public Lcom/sns/game/database/bean/ZombieDataBean;
.super Ljava/lang/Object;
.source "ZombieDataBean.java"


# instance fields
.field private appear_grade:I

.field private beChanged_MoveType:I

.field private dead_res:Ljava/lang/String;

.field private display_res:Ljava/lang/String;

.field private gift_appear:F

.field private intrinsicValue:F

.field private move_res:Ljava/lang/String;

.field private move_type:I

.field private shadow_pos:Ljava/lang/String;

.field private speed_time:F

.field private variation_zombie_id:I

.field private weapon_card_drop:F

.field private zombie_appear:F

.field private zombie_card_drop:F

.field private zombie_id:I

.field private zombie_name:Ljava/lang/String;

.field private zombie_score:I

.field private zombie_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppear_grade()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->appear_grade:I

    return v0
.end method

.method public getChangedMoveType()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->beChanged_MoveType:I

    return v0
.end method

.method public getDead_res()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->dead_res:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->display_res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public getDisplay_res()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->display_res:Ljava/lang/String;

    return-object v0
.end method

.method public getDispppearFrame()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zombie/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->dead_res:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    .line 200
    return-object v0
.end method

.method public getGiftBoxResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "zombie/zombie_gift_icon.png"

    return-object v0
.end method

.method public getGift_appear()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->gift_appear:F

    return v0
.end method

.method public getIntrinsicValue()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->intrinsicValue:F

    return v0
.end method

.method public getMove_res()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_res:Ljava/lang/String;

    return-object v0
.end method

.method public getMove_time()F
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->speed_time:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMove_type()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_type:I

    return v0
.end method

.method public getShadowPos(Z)Lorg/cocos2d/types/CGPoint;
    .locals 9
    .param p1, "flipX"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 217
    .local v0, "pos":Lorg/cocos2d/types/CGPoint;
    iget-object v7, p0, Lcom/sns/game/database/bean/ZombieDataBean;->shadow_pos:Ljava/lang/String;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "splits":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 219
    if-nez p1, :cond_1

    move v2, v5

    .line 220
    .local v2, "splitsIdx":I
    :goto_0
    aget-object v7, v1, v2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 221
    .local v3, "x":F
    aget-object v5, v1, v2

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 222
    .local v4, "y":F
    invoke-virtual {v0, v3, v4}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 224
    .end local v2    # "splitsIdx":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-object v0

    :cond_1
    move v2, v6

    .line 219
    goto :goto_0
.end method

.method public getShadowResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "zombie/shadow.png"

    return-object v0
.end method

.method public getShadow_pos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->shadow_pos:Ljava/lang/String;

    return-object v0
.end method

.method public getSoilRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "zombie/zombie_soil.plist"

    return-object v0
.end method

.method public getSpeed_time()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->speed_time:F

    return v0
.end method

.method public getVariation_zombie_id()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->variation_zombie_id:I

    return v0
.end method

.method public getWeapon_card_drop()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->weapon_card_drop:F

    return v0
.end method

.method public getZombie_appear()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_appear:F

    return v0
.end method

.method public getZombie_card_drop()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_card_drop:F

    return v0
.end method

.method public getZombie_id()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_id:I

    return v0
.end method

.method public getZombie_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_name:Ljava/lang/String;

    return-object v0
.end method

.method public getZombie_score()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_score:I

    return v0
.end method

.method public getZombie_type()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_type:I

    return v0
.end method

.method public isGiftAppear()Z
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/ZombieDataBean;->getGift_appear()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 228
    iput v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_id:I

    .line 229
    iput-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_name:Ljava/lang/String;

    .line 230
    iput v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_score:I

    .line 231
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->intrinsicValue:F

    .line 232
    iput v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_type:I

    .line 233
    iput v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_type:I

    .line 234
    iput v1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->variation_zombie_id:I

    .line 235
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_appear:F

    .line 236
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_card_drop:F

    .line 237
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->weapon_card_drop:F

    .line 238
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->gift_appear:F

    .line 239
    iput v0, p0, Lcom/sns/game/database/bean/ZombieDataBean;->speed_time:F

    .line 240
    iput-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->display_res:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_res:Ljava/lang/String;

    .line 242
    iput-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->dead_res:Ljava/lang/String;

    .line 243
    iput-object v2, p0, Lcom/sns/game/database/bean/ZombieDataBean;->shadow_pos:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setAppear_grade(I)V
    .locals 0
    .param p1, "appear_grade"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->appear_grade:I

    .line 131
    return-void
.end method

.method public setChangedMoveType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->beChanged_MoveType:I

    .line 194
    return-void
.end method

.method public setDead_res(Ljava/lang/String;)V
    .locals 0
    .param p1, "dead_res"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->dead_res:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setDisplay_res(Ljava/lang/String;)V
    .locals 0
    .param p1, "display_res"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->display_res:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setGift_appear(F)V
    .locals 0
    .param p1, "gift_appear"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->gift_appear:F

    .line 155
    return-void
.end method

.method public setIntrinsicValue(F)V
    .locals 0
    .param p1, "intrinsicValue"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->intrinsicValue:F

    .line 107
    return-void
.end method

.method public setMove_res(Ljava/lang/String;)V
    .locals 0
    .param p1, "move_res"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_res:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setMove_type(I)V
    .locals 0
    .param p1, "move_type"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->move_type:I

    .line 119
    return-void
.end method

.method public setShadow_pos(Ljava/lang/String;)V
    .locals 0
    .param p1, "shadow_pos"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->shadow_pos:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSpeed_time(F)V
    .locals 0
    .param p1, "speed_time"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->speed_time:F

    .line 161
    return-void
.end method

.method public setVariation_zombie_id(I)V
    .locals 0
    .param p1, "variation_zombie_id"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->variation_zombie_id:I

    .line 125
    return-void
.end method

.method public setWeapon_card_drop(F)V
    .locals 0
    .param p1, "weapon_card_drop"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->weapon_card_drop:F

    .line 149
    return-void
.end method

.method public setZombie_appear(F)V
    .locals 0
    .param p1, "zombie_appear"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_appear:F

    .line 137
    return-void
.end method

.method public setZombie_card_drop(F)V
    .locals 0
    .param p1, "zombie_card_drop"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_card_drop:F

    .line 143
    return-void
.end method

.method public setZombie_id(I)V
    .locals 0
    .param p1, "zombie_id"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_id:I

    .line 89
    return-void
.end method

.method public setZombie_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "zombie_name"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_name:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setZombie_score(I)V
    .locals 0
    .param p1, "zombie_score"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_score:I

    .line 101
    return-void
.end method

.method public setZombie_type(I)V
    .locals 0
    .param p1, "zombie_type"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/sns/game/database/bean/ZombieDataBean;->zombie_type:I

    .line 113
    return-void
.end method
