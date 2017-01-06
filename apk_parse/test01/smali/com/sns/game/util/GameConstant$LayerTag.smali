.class public final enum Lcom/sns/game/util/GameConstant$LayerTag;
.super Ljava/lang/Enum;
.source "GameConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/util/GameConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sns/game/util/GameConstant$LayerTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum CCGameStoreDialog:Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum CCSHNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

.field private static final synthetic ENUM$VALUES:[Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum GameHelpLayer:Lcom/sns/game/util/GameConstant$LayerTag;

.field public static final enum SwitchGameSceneLayer:Lcom/sns/game/util/GameConstant$LayerTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "CCNewMenuMainLayer"

    invoke-direct {v0, v1, v3}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 90
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "GameHelpLayer"

    invoke-direct {v0, v1, v4}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->GameHelpLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 91
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "CCCJNewLayer"

    invoke-direct {v0, v1, v5}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 92
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "CCSHNewLayer"

    invoke-direct {v0, v1, v6}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCSHNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 93
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "SwitchGameSceneLayer"

    invoke-direct {v0, v1, v7}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->SwitchGameSceneLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 94
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "CCNewGameLayer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 95
    new-instance v0, Lcom/sns/game/util/GameConstant$LayerTag;

    const-string v1, "CCGameStoreDialog"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sns/game/util/GameConstant$LayerTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->CCGameStoreDialog:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sns/game/util/GameConstant$LayerTag;

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewMenuMainLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->GameHelpLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCCJNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->CCSHNewLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sns/game/util/GameConstant$LayerTag;->SwitchGameSceneLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sns/game/util/GameConstant$LayerTag;->CCNewGameLayer:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sns/game/util/GameConstant$LayerTag;->CCGameStoreDialog:Lcom/sns/game/util/GameConstant$LayerTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->ENUM$VALUES:[Lcom/sns/game/util/GameConstant$LayerTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sns/game/util/GameConstant$LayerTag;

    return-object v0
.end method

.method public static values()[Lcom/sns/game/util/GameConstant$LayerTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sns/game/util/GameConstant$LayerTag;->ENUM$VALUES:[Lcom/sns/game/util/GameConstant$LayerTag;

    array-length v1, v0

    new-array v2, v1, [Lcom/sns/game/util/GameConstant$LayerTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
