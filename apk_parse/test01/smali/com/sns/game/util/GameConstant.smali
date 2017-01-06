.class public Lcom/sns/game/util/GameConstant;
.super Ljava/lang/Object;
.source "GameConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/util/GameConstant$LayerTag;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag:[I = null

.field public static final ACTIVATE_GAME_LEVEL:I = 0x3

.field public static final ACTIVATE_NEWMAN_SYSTEM:Z = true

.field public static B_GAME_PAYDESC:Z = false

.field public static COVER_PLAYED:Z = false

.field public static final DIALOG_TAG_GAME_ABOUT:Ljava/lang/String; = "GAME_ABOUT"

.field public static final DIALOG_TAG_GAME_BACK_MENU:Ljava/lang/String; = "BACK_MENU"

.field public static FIRST_JiangshiJiGe:Z = false

.field public static FIRST_PLACARD:Z = false

.field public static final F_CLEAR_GAME_PAYDESC:F = 1.0f

.field public static final GAME_DEBUG:Z = false

.field public static final GAME_EXIT_ATONCE:Z = true

.field public static GAME_PLATFORM_TAG:I = 0x0

.field public static final Game_BeforePay_Confirm:Z = false

.field public static final Game_RandomTask_Visible:Z = false

.field public static final IGNORED_DEBUG:Z = false

.field public static final IMAGE_FORMAT_JPG:Ljava/lang/String; = ".jpg"

.field public static final IMAGE_FORMAT_PNG:Ljava/lang/String; = ".png"

.field public static MOBILE_OPERATORS_TYPE:I = 0x0

.field public static final MSG_THREAD_HANDLE_CALLBACK:I = 0x11c11c

.field public static final MSG_WHAT_CALLBACK:I = 0x10c10c

.field public static final OPERATORS_MOBILE:I = 0x0

.field public static final OPERATORS_TELECOM:I = 0x1

.field public static final OPERATORS_UNICOM:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_ANDROID_DIALOG:I = -0x2

.field public static final TAG_CCLAYER:I = -0x3

.field public static final TAG_DATA_ACHIEVEMENT:I = 0x4

.field public static final TAG_DATA_GAME_SCENE:I = 0x6

.field public static final TAG_DATA_USERDATA:I = 0x1

.field public static final TAG_DATA_USER_ITEM:I = 0x2

.field public static final TAG_DATA_USER_STATE:I = 0x5

.field public static final TAG_DATA_USER_WEAPON:I = 0x3

.field public static final TAG_EXIT_GAME:I = 0x111

.field public static final TAG_EXIT_GAME_ATONCE:I = -0x111

.field public static final TAG_EXTENSION_DIALOG:I = -0x5

.field public static final TAG_GAME_ACTIVATE:I = 0x777

.field public static final TAG_LOADING:I = -0x4

.field public static final TAG_LOGICAL_CALLBACK:I = 0x9c9c

.field public static final TAG_MORE_GAME:I = 0x222

.field public static final TAG_NETWORK_CHECK:I = 0x999

.field public static final TAG_TOAST:I = -0x1

.field public static sharedBgPoints:[Lorg/cocos2d/types/CGPoint;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/sns/game/util/GameConstant;->$SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sns/game/util/GameConstant$LayerTag;->values()[Lcom/sns/game/util/GameConstant$LayerTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCGameStoreDialog:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCSHNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->GameHelpLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->SwitchGameSceneLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-virtual {v1}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/sns/game/util/GameConstant;->$SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14
    const-class v0, Lcom/sns/game/util/GameConstant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sns/game/util/GameConstant;->TAG:Ljava/lang/String;

    .line 35
    sput-boolean v3, Lcom/sns/game/util/GameConstant;->B_GAME_PAYDESC:Z

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/types/CGPoint;

    .line 69
    invoke-static {v5, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4, v4}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 70
    invoke-static {v5, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lcom/sns/game/util/GameConstant;->sharedBgPoints:[Lorg/cocos2d/types/CGPoint;

    .line 79
    sput-boolean v3, Lcom/sns/game/util/GameConstant;->COVER_PLAYED:Z

    .line 81
    sput-boolean v3, Lcom/sns/game/util/GameConstant;->FIRST_PLACARD:Z

    .line 83
    sput-boolean v3, Lcom/sns/game/util/GameConstant;->FIRST_JiangshiJiGe:Z

    .line 219
    sput v6, Lcom/sns/game/util/GameConstant;->GAME_PLATFORM_TAG:I

    .line 222
    const/4 v0, -0x1

    sput v0, Lcom/sns/game/util/GameConstant;->MOBILE_OPERATORS_TYPE:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LayerTagName(Lcom/sns/game/util/GameConstant$LayerTag;)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-static {}, Lcom/sns/game/util/GameConstant;->$SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    const-string v0, "\u4e3b\u83dc\u5355"

    goto :goto_0

    .line 148
    :pswitch_1
    const-string v0, "\u6e38\u620f\u5546\u5e97"

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v0, "\u6e38\u620f\u5e2e\u52a9"

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v0, "\u573a\u666f\u9009\u62e9"

    goto :goto_0

    .line 163
    :pswitch_4
    const-string v0, "\u4e3b\u6e38\u620f_\u6b63\u5e38\u6a21\u5f0f"

    goto :goto_0

    .line 166
    :pswitch_5
    const-string v0, "\u4e3b\u6e38\u620f_\u5f69\u91d1\u6a21\u5f0f"

    goto :goto_0

    .line 169
    :pswitch_6
    const-string v0, "\u4e3b\u6e38\u620f_\u5b88\u62a4\u6a21\u5f0f"

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static asSplitPartPoint(I)Lorg/cocos2d/types/CGPoint;
    .locals 1
    .param p0, "indexTag"    # I

    .prologue
    .line 73
    if-gez p0, :cond_0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    .line 74
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sns/game/util/GameConstant;->sharedBgPoints:[Lorg/cocos2d/types/CGPoint;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static asTagLayer(Lcom/sns/game/util/GameConstant$LayerTag;)Lorg/cocos2d/layers/CCLayer;
    .locals 3
    .param p0, "tag"    # Lcom/sns/game/util/GameConstant$LayerTag;

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p0, :cond_0

    .line 134
    :goto_0
    :pswitch_0
    return-object v0

    .line 102
    :cond_0
    invoke-static {}, Lcom/sns/game/util/GameConstant;->$SWITCH_TABLE$com$sns$game$util$GameConstant$LayerTag()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sns/game/util/GameConstant$LayerTag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 107
    :pswitch_2
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->ccLayer()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_3
    invoke-static {}, Lcom/sns/game/layer/GameHelpLayer;->getLayer()Lcom/sns/game/layer/GameHelpLayer;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_4
    invoke-static {}, Lcom/sns/game/layer/CCCJNewLayer;->layer()Lcom/sns/game/layer/CCCJNewLayer;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-static {}, Lcom/sns/game/layer/CCSHNewLayer;->layer()Lcom/sns/game/layer/CCSHNewLayer;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {}, Lcom/sns/game/layer/CCNewGameLayer;->layer()Lcom/sns/game/layer/CCNewGameLayer;

    move-result-object v0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static final userActionToUpdateBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "Context"    # Ljava/lang/String;
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "UserAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateBanner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static final userActionToUpdatePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ContextIDA"    # Ljava/lang/String;
    .param p1, "ContextIDB"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "UserAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdatePath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2192\u2192\u2192"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
