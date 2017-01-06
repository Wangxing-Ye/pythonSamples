.class public final enum Lorg/cocos2d/nodes/CCLabel$TextAlignment;
.super Ljava/lang/Enum;
.source "CCLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cocos2d/nodes/CCLabel$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

.field private static final synthetic ENUM$VALUES:[Lorg/cocos2d/nodes/CCLabel$TextAlignment;

.field public static final enum LEFT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

.field public static final enum RIGHT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->LEFT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    .line 24
    new-instance v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    .line 25
    new-instance v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/cocos2d/nodes/CCLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->RIGHT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->LEFT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->RIGHT:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ENUM$VALUES:[Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    return-object v0
.end method

.method public static values()[Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->ENUM$VALUES:[Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
