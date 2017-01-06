.class public final enum Lcom/duoku/platform/single/item/DKOrderStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/single/item/DKOrderStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

.field public static final enum DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

.field public static final enum DK_ORDER_STATUS_SMS_SEND:Lcom/duoku/platform/single/item/DKOrderStatus;

.field public static final enum DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

.field public static final enum DK_ORDER_STATUS_UNKNOWN:Lcom/duoku/platform/single/item/DKOrderStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/single/item/DKOrderStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    const-string v1, "DK_ORDER_STATUS_UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/duoku/platform/single/item/DKOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_UNKNOWN:Lcom/duoku/platform/single/item/DKOrderStatus;

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    const-string v1, "DK_ORDER_STATUS_DEALING"

    invoke-direct {v0, v1, v4, v4}, Lcom/duoku/platform/single/item/DKOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    const-string v1, "DK_ORDER_STATUS_SUCCESS"

    invoke-direct {v0, v1, v5, v6}, Lcom/duoku/platform/single/item/DKOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    const-string v1, "DK_ORDER_STATUS_FAIL"

    invoke-direct {v0, v1, v6, v5}, Lcom/duoku/platform/single/item/DKOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    const-string v1, "DK_ORDER_STATUS_SMS_SEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/duoku/platform/single/item/DKOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SMS_SEND:Lcom/duoku/platform/single/item/DKOrderStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/duoku/platform/single/item/DKOrderStatus;

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_UNKNOWN:Lcom/duoku/platform/single/item/DKOrderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_DEALING:Lcom/duoku/platform/single/item/DKOrderStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SMS_SEND:Lcom/duoku/platform/single/item/DKOrderStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->ENUM$VALUES:[Lcom/duoku/platform/single/item/DKOrderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/duoku/platform/single/item/DKOrderStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/single/item/DKOrderStatus;
    .locals 1

    const-class v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/DKOrderStatus;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/single/item/DKOrderStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->ENUM$VALUES:[Lcom/duoku/platform/single/item/DKOrderStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/DKOrderStatus;->value:I

    return v0
.end method
