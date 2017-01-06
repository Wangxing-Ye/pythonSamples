.class public final enum Lorg/cocos2d/types/CGRect$Edge;
.super Ljava/lang/Enum;
.source "CGRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/types/CGRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cocos2d/types/CGRect$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/cocos2d/types/CGRect$Edge;

.field public static final enum MaxXEdge:Lorg/cocos2d/types/CGRect$Edge;

.field public static final enum MaxYEdge:Lorg/cocos2d/types/CGRect$Edge;

.field public static final enum MinXEdge:Lorg/cocos2d/types/CGRect$Edge;

.field public static final enum MinYEdge:Lorg/cocos2d/types/CGRect$Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lorg/cocos2d/types/CGRect$Edge;

    const-string v1, "MinXEdge"

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/types/CGRect$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/types/CGRect$Edge;->MinXEdge:Lorg/cocos2d/types/CGRect$Edge;

    .line 206
    new-instance v0, Lorg/cocos2d/types/CGRect$Edge;

    const-string v1, "MinYEdge"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/types/CGRect$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/types/CGRect$Edge;->MinYEdge:Lorg/cocos2d/types/CGRect$Edge;

    .line 207
    new-instance v0, Lorg/cocos2d/types/CGRect$Edge;

    const-string v1, "MaxXEdge"

    invoke-direct {v0, v1, v4}, Lorg/cocos2d/types/CGRect$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/types/CGRect$Edge;->MaxXEdge:Lorg/cocos2d/types/CGRect$Edge;

    .line 208
    new-instance v0, Lorg/cocos2d/types/CGRect$Edge;

    const-string v1, "MaxYEdge"

    invoke-direct {v0, v1, v5}, Lorg/cocos2d/types/CGRect$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/types/CGRect$Edge;->MaxYEdge:Lorg/cocos2d/types/CGRect$Edge;

    .line 204
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/cocos2d/types/CGRect$Edge;

    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MinXEdge:Lorg/cocos2d/types/CGRect$Edge;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MinYEdge:Lorg/cocos2d/types/CGRect$Edge;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MaxXEdge:Lorg/cocos2d/types/CGRect$Edge;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cocos2d/types/CGRect$Edge;->MaxYEdge:Lorg/cocos2d/types/CGRect$Edge;

    aput-object v1, v0, v5

    sput-object v0, Lorg/cocos2d/types/CGRect$Edge;->ENUM$VALUES:[Lorg/cocos2d/types/CGRect$Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2d/types/CGRect$Edge;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cocos2d/types/CGRect$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/types/CGRect$Edge;

    return-object v0
.end method

.method public static values()[Lorg/cocos2d/types/CGRect$Edge;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cocos2d/types/CGRect$Edge;->ENUM$VALUES:[Lorg/cocos2d/types/CGRect$Edge;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2d/types/CGRect$Edge;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
