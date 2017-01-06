.class public Lcom/sns/game/layer/GameLoading;
.super Ljava/lang/Object;
.source "GameLoading.java"


# static fields
.field public static final LOADING_ZORDER:I = 0x186a0

.field private static loading:Lcom/sns/game/layer/GameLoading;


# instance fields
.field private background:Lorg/cocos2d/nodes/CCSprite;

.field private cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

.field private loadingFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private loadingIcon:Lorg/cocos2d/nodes/CCSprite;

.field private loadingText:Lorg/cocos2d/nodes/CCSprite;

.field private targetSelector:Ljava/lang/String;

.field private target_:Lorg/cocos2d/layers/CCLayer;


# direct methods
.method private constructor <init>(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/GameLoading;)Lorg/cocos2d/layers/CCLayer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    return-object v0
.end method

.method public static getPlistPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "loading/loading.plist"

    return-object v0
.end method

.method public static getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "loading/loading.png"

    return-object v0
.end method

.method public static getSelf()Lcom/sns/game/layer/GameLoading;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sns/game/layer/GameLoading;->loading:Lcom/sns/game/layer/GameLoading;

    return-object v0
.end method

.method private runLoadingIconAction(Ljava/lang/String;)V
    .locals 13
    .param p1, "animateSelector"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const v11, 0x3dcccccd    # 0.1f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 219
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    .line 221
    const-string v2, ""

    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v2, v11, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v2

    const/16 v0, 0x16

    new-array v3, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    iget-object v4, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v12

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/high16 v6, 0x43450000    # 197.0f

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    aput-object v5, v0, v4

    .line 222
    invoke-static {p0, p1, v0}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    aput-object v0, v3, v9

    .line 224
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    aput-object v0, v3, v10

    .line 226
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    iget-object v4, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v10

    const v4, 0x3f333333    # 0.7f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v12

    const/4 v4, 0x4

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    aput-object v5, v0, v4

    .line 225
    invoke-static {p0, p1, v0}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v0

    aput-object v0, v3, v8

    .line 227
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v0

    aput-object v0, v3, v12

    const/4 v0, 0x4

    .line 229
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 228
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    .line 230
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    .line 232
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 231
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    .line 233
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    .line 235
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 234
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    .line 236
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v4, 0xa

    .line 237
    const-string v5, ""

    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v11, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v4, 0xb

    .line 238
    const-string v5, ""

    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v11, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0xc

    .line 240
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x43510000    # 209.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 239
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    .line 241
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xe

    .line 243
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x3f333333    # 0.7f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 242
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xf

    .line 244
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x10

    .line 246
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 245
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x11

    .line 247
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v4, 0x12

    .line 248
    const-string v5, ""

    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5, v11, v0}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    invoke-static {v0, v9}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x13

    .line 250
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 249
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x14

    .line 251
    invoke-static {v11}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x15

    .line 253
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 252
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v3, v0

    .line 220
    invoke-static {v2, v3}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 255
    :cond_0
    return-void
.end method

.method private runLoadingTextAction(Ljava/lang/String;)V
    .locals 10
    .param p1, "animateSelector"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    .line 260
    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    .line 262
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    .line 261
    invoke-static {p0, p1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v7

    .line 263
    const v3, 0x3e19999a    # 0.15f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v6

    .line 265
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    .line 264
    invoke-static {p0, p1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v8

    .line 266
    const v3, 0x3e19999a    # 0.15f

    invoke-static {v3}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v3

    aput-object v3, v2, v9

    .line 268
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v4}, Lorg/cocos2d/nodes/CCSprite;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    .line 267
    invoke-static {p0, p1, v3}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    .line 269
    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 271
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    aput-object v5, v4, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    .line 270
    invoke-static {p0, p1, v4}, Lorg/cocos2d/actions/instant/CCCallFuncND;->action(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/actions/instant/CCCallFuncND;

    move-result-object v4

    aput-object v4, v2, v3

    .line 259
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 273
    :cond_0
    return-void
.end method

.method private setBackground()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v0, v1, v3}, Lcom/sns/game/util/CCUtil;->asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 178
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 179
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x43f00000    # 480.0f

    invoke-virtual {v0, v2, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 180
    return-void
.end method

.method private setFramesToCache()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 173
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v0

    invoke-static {}, Lcom/sns/game/layer/GameLoading;->getPlistPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    .line 174
    return-void
.end method

.method private setLoadingIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 183
    const-string v2, "point.png"

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    .line 184
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v3, v3}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 185
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    const v3, 0x442d4000    # 693.0f

    const/high16 v4, 0x430e0000    # 142.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 187
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v3, "loading_5.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    .line 188
    .local v0, "smallIcon1":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v0, v7}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 189
    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 190
    const/high16 v2, 0x43450000    # 197.0f

    invoke-virtual {v0, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 192
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v3, "loading_6.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 193
    .local v1, "smallIcon2":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v7}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 194
    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 195
    const/high16 v2, 0x43510000    # 209.0f

    invoke-virtual {v1, v6, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 197
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v0}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 198
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 200
    return-void
.end method

.method private setLoadingText()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 203
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v3, "loading_3.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    .line 204
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 205
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x43700000    # 240.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 207
    new-array v1, v6, [Lorg/cocos2d/nodes/CCSprite;

    .line 208
    .local v1, "loadingPoints":[Lorg/cocos2d/nodes/CCSprite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 216
    return-void

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    const-string v3, "loading_4.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 210
    aget-object v2, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 211
    aget-object v2, v1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 212
    aget-object v2, v1, v0

    const/high16 v3, 0x43030000    # 131.0f

    int-to-float v4, v0

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 213
    iget-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sharedLoading(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/layer/GameLoading;
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 44
    sget-object v0, Lcom/sns/game/layer/GameLoading;->loading:Lcom/sns/game/layer/GameLoading;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sns/game/layer/GameLoading;

    invoke-direct {v0, p0}, Lcom/sns/game/layer/GameLoading;-><init>(Lorg/cocos2d/layers/CCLayer;)V

    sput-object v0, Lcom/sns/game/layer/GameLoading;->loading:Lcom/sns/game/layer/GameLoading;

    .line 47
    :cond_0
    sget-object v0, Lcom/sns/game/layer/GameLoading;->loading:Lcom/sns/game/layer/GameLoading;

    return-object v0
.end method

.method private sortNodes()V
    .locals 4

    .prologue
    const v3, 0x186a1

    .line 108
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 109
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 110
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0, v1, v3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 111
    return-void
.end method


# virtual methods
.method public callBack_selector_loadingAnimate(Ljava/lang/Object;)V
    .locals 15
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 276
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    .line 279
    .local v3, "data":[Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 280
    const/4 v12, 0x0

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 281
    .local v5, "indexTag":I
    packed-switch v5, :pswitch_data_0

    .line 326
    .end local v5    # "indexTag":I
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v5    # "indexTag":I
    :pswitch_0
    const/4 v12, 0x1

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 286
    .local v10, "smallTag":I
    if-ne v10, v13, :cond_1

    .line 287
    const/4 v12, 0x2

    aget-object v7, v3, v12

    check-cast v7, Lorg/cocos2d/nodes/CCNode;

    .line 288
    .local v7, "node":Lorg/cocos2d/nodes/CCNode;
    const/4 v12, 0x3

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 289
    .local v11, "visible":Z
    invoke-virtual {v7, v11}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v5    # "indexTag":I
    .end local v7    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v10    # "smallTag":I
    .end local v11    # "visible":Z
    :catch_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 292
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "indexTag":I
    .restart local v10    # "smallTag":I
    :cond_1
    if-ne v10, v14, :cond_0

    .line 293
    const/4 v12, 0x2

    :try_start_1
    aget-object v7, v3, v12

    check-cast v7, Lorg/cocos2d/nodes/CCNode;

    .line 294
    .restart local v7    # "node":Lorg/cocos2d/nodes/CCNode;
    const/4 v12, 0x3

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 295
    .restart local v11    # "visible":Z
    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCNode;->getChildren()Ljava/util/List;

    move-result-object v8

    .line 296
    .local v8, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/nodes/CCNode;

    .line 298
    .local v2, "child":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v2, v11}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    goto :goto_1

    .line 307
    .end local v2    # "child":Lorg/cocos2d/nodes/CCNode;
    .end local v7    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v8    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .end local v10    # "smallTag":I
    .end local v11    # "visible":Z
    :pswitch_1
    const/4 v12, 0x1

    aget-object v7, v3, v12

    check-cast v7, Lorg/cocos2d/nodes/CCSprite;

    .line 308
    .local v7, "node":Lorg/cocos2d/nodes/CCSprite;
    const/4 v12, 0x2

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 309
    .local v1, "anOpacity":F
    const/4 v12, 0x3

    aget-object v12, v3, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 310
    .local v6, "moveTag":I
    const/4 v12, 0x4

    aget-object v9, v3, v12

    check-cast v9, Lorg/cocos2d/types/CGPoint;

    .line 311
    .local v9, "pos":Lorg/cocos2d/types/CGPoint;
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v1

    float-to-int v12, v12

    invoke-virtual {v7, v12}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 312
    if-ne v6, v13, :cond_2

    .line 314
    invoke-virtual {v7, v9}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v12

    iget v12, v12, Lorg/cocos2d/types/CGPoint;->x:F

    iget v13, v9, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v12, v13

    .line 317
    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCSprite;->getPosition()Lorg/cocos2d/types/CGPoint;

    move-result-object v13

    iget v13, v13, Lorg/cocos2d/types/CGPoint;->y:F

    iget v14, v9, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v13, v14

    .line 316
    invoke-virtual {v7, v12, v13}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createSelf()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sns/game/layer/GameLoading;->setFramesToCache()V

    .line 52
    invoke-direct {p0}, Lcom/sns/game/layer/GameLoading;->setBackground()V

    .line 53
    invoke-direct {p0}, Lcom/sns/game/layer/GameLoading;->setLoadingIcon()V

    .line 54
    invoke-direct {p0}, Lcom/sns/game/layer/GameLoading;->setLoadingText()V

    .line 56
    invoke-direct {p0}, Lcom/sns/game/layer/GameLoading;->sortNodes()V

    .line 57
    return-void
.end method

.method public getTargetSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->targetSelector:Ljava/lang/String;

    return-object v0
.end method

.method public invokeTargetLoadSelf()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sns/game/layer/GameLoading$1;

    invoke-direct {v2, p0}, Lcom/sns/game/layer/GameLoading$1;-><init>(Lcom/sns/game/layer/GameLoading;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public notifyToHandler()V
    .locals 4

    .prologue
    .line 158
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 159
    const/4 v2, -0x4

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public recycleSelf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    invoke-static {}, Lcom/sns/game/layer/GameLoading;->getPlistPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->removeSpriteFrames(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    :cond_0
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->cache:Lorg/cocos2d/nodes/CCSpriteFrameCache;

    .line 70
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;

    .line 71
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    .line 72
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    .line 73
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    .line 74
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->loadingFrames:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/sns/game/layer/GameLoading;->targetSelector:Ljava/lang/String;

    .line 78
    sput-object v2, Lcom/sns/game/layer/GameLoading;->loading:Lcom/sns/game/layer/GameLoading;

    .line 79
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v0

    invoke-static {}, Lcom/sns/game/layer/GameLoading;->getPlistPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCTextureCache;->releaseTexture(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setTargetSelector(Ljava/lang/String;)V
    .locals 0
    .param p1, "selector"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sns/game/layer/GameLoading;->targetSelector:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "callBack_selector_loadingAnimate"

    .line 84
    .local v0, "selector":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sns/game/layer/GameLoading;->runLoadingTextAction(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/sns/game/layer/GameLoading;->runLoadingIconAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sns/game/layer/GameLoading;->notifyToHandler()V

    .line 87
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 93
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 95
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 96
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 98
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingText:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 99
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->loadingIcon:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 100
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading;->background:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
