.class public Lcom/sns/game/database/bean/WeaponBean;
.super Ljava/lang/Object;
.source "WeaponBean.java"


# instance fields
.field private attackId:I

.field private attackType:I

.field private bombEffect_plist:Ljava/lang/String;

.field private bullet_complex:Ljava/lang/String;

.field private bullet_count:I

.field private cofficientA:F

.field private cofficientB:F

.field private costMoney:I

.field private energy:F

.field private flyTime:F

.field private name:Ljava/lang/String;

.field private shootDistanceMax:F

.field private shootInterval:F

.field private shotPlist:Ljava/lang/String;

.field private shotType:I

.field private uselevel:I

.field private weapon_complex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttackId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->attackId:I

    return v0
.end method

.method public getAttackType()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->attackType:I

    return v0
.end method

.method public getBombEffectAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 220
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "data":[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v6, :cond_0

    .line 222
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 224
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    :goto_0
    return-object v0

    .line 223
    .end local v0    # "anchor_":Lorg/cocos2d/types/CGPoint;
    :cond_0
    invoke-static {v4, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public getBombEffect_plist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sns/game/database/bean/WeaponBean;->bombEffect_plist:Ljava/lang/String;

    return-object v0
.end method

.method public getBulletAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 227
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 229
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    return-object v0
.end method

.method public getBullet_complex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_complex:Ljava/lang/String;

    return-object v0
.end method

.method public getBullet_count()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_count:I

    return v0
.end method

.method public getCofficientA()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientA:F

    return v0
.end method

.method public getCofficientB()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientB:F

    return v0
.end method

.method public getCostMoney()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->costMoney:I

    return v0
.end method

.method public getEnergy()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->energy:F

    return v0
.end method

.method public getFlyTime()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->flyTime:F

    return v0
.end method

.method public getLightAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 210
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 212
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    return-object v0
.end method

.method public getLightPos()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 215
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 217
    .local v1, "pos_":Lorg/cocos2d/types/CGPoint;
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sns/game/database/bean/WeaponBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShootDistanceMax()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shootDistanceMax:F

    return v0
.end method

.method public getShootInterval()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shootInterval:F

    return v0
.end method

.method public getShotPlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shotPlist:Ljava/lang/String;

    return-object v0
.end method

.method public getShotType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shotType:I

    return v0
.end method

.method public getSightAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 190
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 192
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    return-object v0
.end method

.method public getSightPos()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 197
    .local v1, "pos_":Lorg/cocos2d/types/CGPoint;
    return-object v1
.end method

.method public getSituAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 202
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    return-object v0
.end method

.method public getSituPos()Lorg/cocos2d/types/CGPoint;
    .locals 4

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 207
    .local v1, "pos_":Lorg/cocos2d/types/CGPoint;
    return-object v1
.end method

.method public getUselevel()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->uselevel:I

    return v0
.end method

.method public getWeaponAnchor()Lorg/cocos2d/types/CGPoint;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "data":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 182
    .local v0, "anchor_":Lorg/cocos2d/types/CGPoint;
    return-object v0
.end method

.method public getWeaponPos()Lorg/cocos2d/types/CGPoint;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 185
    iget-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 187
    .local v1, "pos_":Lorg/cocos2d/types/CGPoint;
    return-object v1
.end method

.method public getWeapon_complex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    return-object v0
.end method

.method public isLvLimit(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/sns/game/database/bean/WeaponBean;->uselevel:I

    if-ge p1, v0, :cond_0

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

    .line 238
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->attackId:I

    .line 239
    iput-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->name:Ljava/lang/String;

    .line 240
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->attackType:I

    .line 241
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->uselevel:I

    .line 242
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->shotType:I

    .line 243
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->costMoney:I

    .line 244
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientA:F

    .line 245
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientB:F

    .line 246
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->energy:F

    .line 247
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shootInterval:F

    .line 248
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->shootDistanceMax:F

    .line 249
    iput v0, p0, Lcom/sns/game/database/bean/WeaponBean;->flyTime:F

    .line 250
    iput v1, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_count:I

    .line 251
    iput-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->shotPlist:Ljava/lang/String;

    .line 252
    iput-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->bombEffect_plist:Ljava/lang/String;

    .line 254
    iput-object v2, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_complex:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setAttackId(I)V
    .locals 0
    .param p1, "attackId"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->attackId:I

    .line 81
    return-void
.end method

.method public setAttackType(I)V
    .locals 0
    .param p1, "attackType"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->attackType:I

    .line 93
    return-void
.end method

.method public setBombEffect_plist(Ljava/lang/String;)V
    .locals 0
    .param p1, "bombEffect_plist"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sns/game/database/bean/WeaponBean;->bombEffect_plist:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setBullet_complex(Ljava/lang/String;)V
    .locals 0
    .param p1, "bullet_complex"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_complex:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setBullet_count(I)V
    .locals 0
    .param p1, "bullet_count"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->bullet_count:I

    .line 153
    return-void
.end method

.method public setCofficientA(F)V
    .locals 0
    .param p1, "cofficientA"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientA:F

    .line 117
    return-void
.end method

.method public setCofficientB(F)V
    .locals 0
    .param p1, "cofficientB"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->cofficientB:F

    .line 123
    return-void
.end method

.method public setCostMoney(I)V
    .locals 0
    .param p1, "costMoney"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->costMoney:I

    .line 111
    return-void
.end method

.method public setEnergy(F)V
    .locals 0
    .param p1, "energy"    # F

    .prologue
    .line 128
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->energy:F

    .line 129
    return-void
.end method

.method public setFlyTime(F)V
    .locals 0
    .param p1, "flyTime"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->flyTime:F

    .line 147
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sns/game/database/bean/WeaponBean;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setShootDistanceMax(F)V
    .locals 0
    .param p1, "shootDistanceMax"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->shootDistanceMax:F

    .line 141
    return-void
.end method

.method public setShootInterval(F)V
    .locals 0
    .param p1, "shootInterval"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->shootInterval:F

    .line 135
    return-void
.end method

.method public setShotPlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "shotPlist"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sns/game/database/bean/WeaponBean;->shotPlist:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setShotType(I)V
    .locals 0
    .param p1, "shotType"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->shotType:I

    .line 105
    return-void
.end method

.method public setUselevel(I)V
    .locals 0
    .param p1, "uselevel"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/sns/game/database/bean/WeaponBean;->uselevel:I

    .line 99
    return-void
.end method

.method public setWeapon_complex(Ljava/lang/String;)V
    .locals 0
    .param p1, "weapon_complex"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sns/game/database/bean/WeaponBean;->weapon_complex:Ljava/lang/String;

    .line 165
    return-void
.end method
