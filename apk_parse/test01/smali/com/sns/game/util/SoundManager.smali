.class public final Lcom/sns/game/util/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field public static final EFFECT_TRIGGER_ACHIEVEMENT:I = 0x117

.field public static final EFFECT_TRIGGER_BOSS_TRAMPLEON:I = 0x119

.field public static final EFFECT_TRIGGER_DROP_CARD:I = 0x122

.field public static final EFFECT_TRIGGER_DROP_MORE_COIN:I = 0x121

.field public static final EFFECT_TRIGGER_DROP_SINGLE_COIN:I = 0x120

.field public static final EFFECT_TRIGGER_LEVELUP:I = 0x118

.field public static final EFFECT_TRIGGER_RANDOM_TASK:I = 0x116

.field public static final EFFECT_TRIGGER_SMALL_GAME:I = 0x115

.field public static final EFFECT_UI_ADD_MULTIPLE:I = 0x114

.field public static final EFFECT_UI_INGAME:I = 0x112

.field public static final EFFECT_UI_MENUMAIN_LAYER:I = 0x111

.field public static final EFFECT_UI_WEAPON_SELECT:I = 0x113

.field private static coinPlayStartTime:J

.field public static effectMapping_GameTrigger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static effectMapping_weaponAttack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static effectMapping_weaponBeAttacked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static soundMapping_Background:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sns/game/util/GameConstant$LayerTag;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static timeLimitMapping_weaponAttack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanMapping()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    sget-object v0, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    .line 71
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    .line 72
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    .line 73
    sput-object v1, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    .line 75
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    .line 76
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    .line 77
    sput-object v1, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    .line 78
    sput-object v1, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    .line 80
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 82
    sput-object v1, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    .line 83
    sput-object v1, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public static getBackResId(Lcom/sns/game/util/GameConstant$LayerTag;)I
    .locals 1
    .param p0, "layerTag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sns/game/util/SoundManager;->getBackResId(Lcom/sns/game/util/GameConstant$LayerTag;I)I

    move-result v0

    return v0
.end method

.method public static getBackResId(Lcom/sns/game/util/GameConstant$LayerTag;I)I
    .locals 4
    .param p0, "layerTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p1, "indexTag"    # I

    .prologue
    .line 244
    const/4 v1, -0x1

    .line 248
    .local v1, "resId":I
    :try_start_0
    sget-object v3, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 249
    .local v2, "resIds":[Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 250
    array-length v3, v2

    if-le v3, p1, :cond_0

    .line 252
    aget-object v3, v2, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v3, v1

    .line 258
    .end local v2    # "resIds":[Ljava/lang/Integer;
    :goto_0
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 258
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static isSafePlayToAttack(FF)Z
    .locals 6
    .param p0, "safeTime"    # F
    .param p1, "s"    # F

    .prologue
    .line 385
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p0

    float-to-long v0, v2

    .line 386
    .local v0, "safeResponseTime":J
    long-to-float v2, v0

    mul-float/2addr v2, p1

    float-to-long v0, v2

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/sns/game/util/SoundManager;->coinPlayStartTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/sns/game/util/SoundManager;->coinPlayStartTime:J

    .line 389
    const/4 v2, 0x1

    .line 391
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadMusic(Landroid/content/Context;)V
    .locals 0
    .param p0, "app"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/sns/game/util/SoundManager;->setMusicAllMapping(Landroid/content/Context;)V

    .line 27
    invoke-static {p0}, Lcom/sns/game/util/SoundManager;->preloadAllMusic(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static pauseSound()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/sound/SoundEngine;->pauseSound()V

    .line 91
    return-void
.end method

.method public static playBackgroundSound(Lcom/sns/game/util/GameConstant$LayerTag;Z)V
    .locals 1
    .param p0, "layerTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p1, "loop"    # Z

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sns/game/util/SoundManager;->getBackResId(Lcom/sns/game/util/GameConstant$LayerTag;I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/sns/game/util/SoundManager;->playSound(IZ)V

    .line 270
    return-void
.end method

.method public static playBackgroundSound(Lcom/sns/game/util/GameConstant$LayerTag;ZI)V
    .locals 1
    .param p0, "layerTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p1, "loop"    # Z
    .param p2, "indexTag"    # I

    .prologue
    .line 280
    invoke-static {p0, p2}, Lcom/sns/game/util/SoundManager;->getBackResId(Lcom/sns/game/util/GameConstant$LayerTag;I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/sns/game/util/SoundManager;->playSound(IZ)V

    .line 281
    return-void
.end method

.method public static playCoinEffect(FF)V
    .locals 1
    .param p0, "safeTime"    # F
    .param p1, "s"    # F

    .prologue
    .line 395
    invoke-static {p0, p1}, Lcom/sns/game/util/SoundManager;->isSafePlayToAttack(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 398
    :cond_0
    return-void
.end method

.method public static playEffect(I)V
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserState;->getMusicLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lorg/cocos2d/sound/SoundEngine;->playEffect(Landroid/content/Context;I)V

    .line 132
    :cond_0
    return-void
.end method

.method public static playEffect(IZ)V
    .locals 2
    .param p0, "resId"    # I
    .param p1, "isPause"    # Z

    .prologue
    .line 140
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sns/game/database/bean/UserState;->getMusicLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lorg/cocos2d/sound/SoundEngine;->playEffect(Landroid/content/Context;I)V

    .line 147
    :cond_0
    return-void
.end method

.method public static playSound(IZ)V
    .locals 3
    .param p0, "resId"    # I
    .param p1, "loop"    # Z

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->getMusicLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/sound/SoundEngine;->pauseSound()V

    .line 110
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/sound/SoundEngine;->realesAllSounds()V

    .line 111
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v1, v2, p0}, Lorg/cocos2d/sound/SoundEngine;->preloadSound(Landroid/content/Context;I)V

    .line 112
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v1, v2, p0, p1}, Lorg/cocos2d/sound/SoundEngine;->playSound(Landroid/content/Context;IZ)V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/sound/SoundEngine;->pauseSound()V

    .line 116
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/sound/SoundEngine;->realesAllSounds()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static playTriggerEffect(I)V
    .locals 4
    .param p0, "key"    # I

    .prologue
    .line 375
    :try_start_0
    sget-object v2, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 376
    .local v1, "resId":I
    invoke-static {v1}, Lcom/sns/game/util/SoundManager;->playEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v1    # "resId":I
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static preloadAllMusic(Landroid/content/Context;)V
    .locals 1
    .param p0, "app"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/sns/game/util/SoundManager;->preloadEffectsByMapping(Landroid/content/Context;Ljava/util/AbstractMap;)V

    .line 45
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/sns/game/util/SoundManager;->preloadEffectsByMapping(Landroid/content/Context;Ljava/util/AbstractMap;)V

    .line 46
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/sns/game/util/SoundManager;->preloadEffectsByMapping(Landroid/content/Context;Ljava/util/AbstractMap;)V

    .line 47
    return-void
.end method

.method private static preloadEffectsByMapping(Landroid/content/Context;Ljava/util/AbstractMap;)V
    .locals 7
    .param p0, "app"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/AbstractMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "mapping":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<**>;"
    const/4 v4, 0x0

    .line 409
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 410
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v2

    .line 411
    .local v2, "engine":Lorg/cocos2d/sound/SoundEngine;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 426
    .end local v2    # "engine":Lorg/cocos2d/sound/SoundEngine;
    :goto_1
    return-void

    .line 413
    .restart local v2    # "engine":Lorg/cocos2d/sound/SoundEngine;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 414
    .local v5, "object":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map$Entry;

    if-eqz v6, :cond_0

    .line 416
    move-object v0, v5

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 417
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 419
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, p0, v6}, Lorg/cocos2d/sound/SoundEngine;->preloadEffect(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v2    # "engine":Lorg/cocos2d/sound/SoundEngine;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static varargs putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V
    .locals 1
    .param p0, "layerTag"    # Lcom/sns/game/util/GameConstant$LayerTag;
    .param p1, "rawIds"    # [Ljava/lang/Integer;

    .prologue
    .line 224
    sget-object v0, Lcom/sns/game/util/SoundManager;->soundMapping_Background:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public static releaseAllMusic()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/sound/SoundEngine;->pauseSound()V

    .line 55
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/sound/SoundEngine;->realesAllSounds()V

    .line 56
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/sound/SoundEngine;->realesAllEffects()V

    .line 57
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->purgeSharedEngine()V

    .line 58
    invoke-static {}, Lcom/sns/game/util/SoundManager;->cleanMapping()V

    .line 59
    return-void
.end method

.method public static resumeSound()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/cocos2d/sound/SoundEngine;->sharedEngine()Lorg/cocos2d/sound/SoundEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/sound/SoundEngine;->resumeSound()V

    .line 98
    return-void
.end method

.method public static setEffectMapping_GameTrigger()V
    .locals 5

    .prologue
    const v4, 0x7f050012

    const v3, 0x7f050018

    .line 354
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_GameTrigger:Ljava/util/HashMap;

    const/16 v1, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void
.end method

.method private static setEffectMapping_weaponAttack()V
    .locals 8

    .prologue
    const/16 v7, 0x2723

    const/16 v6, 0x2722

    const/16 v5, 0x2721

    const/16 v4, 0x2720

    const/16 v3, 0x271f

    .line 160
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponAttack:Ljava/util/HashMap;

    const/16 v1, 0x2724

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3e6f9db2    # 0.234f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f0c0831    # 0.547f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3ee2d0e5    # 0.443f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f558106    # 0.834f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f195810    # 0.599f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponAttack:Ljava/util/HashMap;

    const/16 v1, 0x2724

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f7020c5    # 0.938f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private static setEffectMapping_weaponBeAttacked()V
    .locals 8

    .prologue
    const/16 v7, 0x2723

    const/16 v6, 0x2722

    const/16 v5, 0x2721

    const/16 v4, 0x2720

    const/16 v3, 0x271f

    .line 185
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/sns/game/util/SoundManager;->effectMapping_weaponBeAttacked:Ljava/util/HashMap;

    const/16 v1, 0x2724

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3e54fdf4    # 0.208f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3e9fbe77    # 0.312f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f33f7cf    # 0.703f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f056042    # 0.521f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f12b021    # 0.573f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/sns/game/util/SoundManager;->timeLimitMapping_weaponBeAttacked:Ljava/util/HashMap;

    const/16 v1, 0x2724

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3fcb645a    # 1.589f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public static setMusicAllMapping(Landroid/content/Context;)V
    .locals 0
    .param p0, "app"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/sns/game/util/SoundManager;->setSoundMapping_background()V

    .line 35
    invoke-static {}, Lcom/sns/game/util/SoundManager;->setEffectMapping_weaponAttack()V

    .line 36
    invoke-static {}, Lcom/sns/game/util/SoundManager;->setEffectMapping_weaponBeAttacked()V

    .line 37
    invoke-static {}, Lcom/sns/game/util/SoundManager;->setEffectMapping_GameTrigger()V

    .line 38
    return-void
.end method

.method public static setSoundMapping_background()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f050015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V

    .line 210
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCGameStoreDialog:Lcom/sns/game/util/GameConstant$LayerTag;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f050014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V

    .line 212
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCSHNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f050003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V

    .line 213
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    new-array v1, v4, [Ljava/lang/Integer;

    const v2, 0x7f050004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V

    .line 214
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f050001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f050002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/sns/game/util/SoundManager;->putToBgMapping(Lcom/sns/game/util/GameConstant$LayerTag;[Ljava/lang/Integer;)V

    .line 215
    return-void
.end method
