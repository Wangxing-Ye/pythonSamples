.class public final enum Lorg/cocos2d/opengl/TGA$TGAError;
.super Ljava/lang/Enum;
.source "TGA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/TGA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TGAError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cocos2d/opengl/TGA$TGAError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_ERROR_COMPRESSED_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_ERROR_FILE_OPEN:Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_ERROR_INDEXED_COLOR:Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_ERROR_MEMORY:Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_ERROR_READING_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

.field public static final enum TGA_OK:Lorg/cocos2d/opengl/TGA$TGAError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_OK"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_OK:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 34
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_ERROR_FILE_OPEN"

    invoke-direct {v0, v1, v4}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_FILE_OPEN:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 35
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_ERROR_READING_FILE"

    invoke-direct {v0, v1, v5}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_READING_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 36
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_ERROR_INDEXED_COLOR"

    invoke-direct {v0, v1, v6}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_INDEXED_COLOR:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 37
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_ERROR_MEMORY"

    invoke-direct {v0, v1, v7}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_MEMORY:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 38
    new-instance v0, Lorg/cocos2d/opengl/TGA$TGAError;

    const-string v1, "TGA_ERROR_COMPRESSED_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/opengl/TGA$TGAError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_COMPRESSED_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/opengl/TGA$TGAError;

    sget-object v1, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_OK:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_FILE_OPEN:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_READING_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_INDEXED_COLOR:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_MEMORY:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/cocos2d/opengl/TGA$TGAError;->TGA_ERROR_COMPRESSED_FILE:Lorg/cocos2d/opengl/TGA$TGAError;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->ENUM$VALUES:[Lorg/cocos2d/opengl/TGA$TGAError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cocos2d/opengl/TGA$TGAError;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cocos2d/opengl/TGA$TGAError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/TGA$TGAError;

    return-object v0
.end method

.method public static values()[Lorg/cocos2d/opengl/TGA$TGAError;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cocos2d/opengl/TGA$TGAError;->ENUM$VALUES:[Lorg/cocos2d/opengl/TGA$TGAError;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2d/opengl/TGA$TGAError;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
