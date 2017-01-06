.class public Lcom/duoku/platform/single/e/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alipay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quickpay"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "yeepay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tencentmm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gamecard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/single/e/k;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
