.class public final enum Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/DKPlatformSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

.field public static final enum SDK_BASIC:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

.field public static final enum SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    const-string v1, "SDK_BASIC"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_BASIC:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    new-instance v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    const-string v1, "SDK_PAY"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    sget-object v1, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_BASIC:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->SDK_PAY:Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->ENUM$VALUES:[Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;
    .locals 1

    const-class v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;->ENUM$VALUES:[Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/single/DKPlatformSettings$SdkMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
