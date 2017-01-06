.class public final enum Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
.super Ljava/lang/Enum;
.source "GameSceneSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/database/bean/GameSceneSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameSceneTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag:[I

.field private static final synthetic ENUM$VALUES:[Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

.field public static final enum MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

.field public static final enum MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;


# instance fields
.field private sceneRootPath:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag()[I
    .locals 3

    .prologue
    .line 363
    sget-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->$SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->values()[Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->$SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    new-instance v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    const-string v1, "MULTIPLE_SIGNLE"

    invoke-direct {v0, v1, v2}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    new-instance v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    const-string v1, "MULTIPLE_MORE"

    invoke-direct {v0, v1, v3}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_SIGNLE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->MULTIPLE_MORE:Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ENUM$VALUES:[Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    const-string v0, "background/"

    iput-object v0, p0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->sceneRootPath:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    return-object v0
.end method

.method public static values()[Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ENUM$VALUES:[Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    array-length v1, v0

    new-array v2, v1, [Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionGameingName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->$SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 400
    :pswitch_0
    const-string v0, "\u4e3b\u6e38\u620f_\u5355\u500d\u573a_\u6b63\u5e38\u6a21\u5f0f"

    goto :goto_0

    .line 402
    :pswitch_1
    const-string v0, "\u4e3b\u6e38\u620f_\u591a\u500d\u573a_\u6b63\u5e38\u6a21\u5f0f"

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSceneBgImgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->$SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 388
    :pswitch_0
    const-string v0, "Bg_GameScene_Single_Frame.jpg"

    goto :goto_0

    .line 390
    :pswitch_1
    const-string v0, "Bg_GameScene_Double_Frame.jpg"

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSceneBgPlistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->$SWITCH_TABLE$com$sns$game$database$bean$GameSceneSystem$GameSceneTag()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 376
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->sceneRootPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bg_GameScene_Single.plist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sns/game/database/bean/GameSceneSystem$GameSceneTag;->sceneRootPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bg_GameScene_Double.plist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
