.class public final enum Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;
.super Ljava/lang/Enum;
.source "CCTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/events/CCTouchDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ccTouchSelectorFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorAllBits:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorBeganBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorCancelledBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorEndedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorMovedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

.field public static final enum ccTouchSelectorNoneBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 37
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorNoneBit"

    invoke-direct {v0, v1, v8, v5}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorNoneBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 38
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorBeganBit"

    invoke-direct {v0, v1, v5, v5}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorBeganBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 39
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorMovedBit"

    invoke-direct {v0, v1, v6, v6}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorMovedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 40
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorEndedBit"

    invoke-direct {v0, v1, v9, v7}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorEndedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 41
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorCancelledBit"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorCancelledBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 42
    new-instance v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    const-string v1, "ccTouchSelectorAllBits"

    const/4 v2, 0x5

    sget-object v3, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorBeganBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    iget v3, v3, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    sget-object v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorMovedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    iget v4, v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    or-int/2addr v3, v4

    .line 43
    sget-object v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorEndedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    iget v4, v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    .line 42
    or-int/2addr v3, v4

    .line 43
    sget-object v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorCancelledBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    iget v4, v4, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorAllBits:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    sget-object v1, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorNoneBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v1, v0, v8

    sget-object v1, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorBeganBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorMovedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorEndedBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v1, v0, v9

    sget-object v1, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorCancelledBit:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ccTouchSelectorAllBits:Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ENUM$VALUES:[Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    return-object v0
.end method

.method public static values()[Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->ENUM$VALUES:[Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchSelectorFlag;->flag:I

    return v0
.end method
