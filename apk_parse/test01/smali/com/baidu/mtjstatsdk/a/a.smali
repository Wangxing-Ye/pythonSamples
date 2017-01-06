.class public final enum Lcom/baidu/mtjstatsdk/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mtjstatsdk/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mtjstatsdk/a/a;

.field public static final enum b:Lcom/baidu/mtjstatsdk/a/a;

.field public static final enum c:Lcom/baidu/mtjstatsdk/a/a;

.field private static final synthetic d:[Lcom/baidu/mtjstatsdk/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mtjstatsdk/a/a;

    const-string v1, "APP_START"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mtjstatsdk/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mtjstatsdk/a/a;->a:Lcom/baidu/mtjstatsdk/a/a;

    new-instance v0, Lcom/baidu/mtjstatsdk/a/a;

    const-string v1, "ONCE_A_DAY"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mtjstatsdk/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mtjstatsdk/a/a;->b:Lcom/baidu/mtjstatsdk/a/a;

    new-instance v0, Lcom/baidu/mtjstatsdk/a/a;

    const-string v1, "SET_TIME_INTERVAL"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mtjstatsdk/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mtjstatsdk/a/a;->c:Lcom/baidu/mtjstatsdk/a/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mtjstatsdk/a/a;

    sget-object v1, Lcom/baidu/mtjstatsdk/a/a;->a:Lcom/baidu/mtjstatsdk/a/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mtjstatsdk/a/a;->b:Lcom/baidu/mtjstatsdk/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mtjstatsdk/a/a;->c:Lcom/baidu/mtjstatsdk/a/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mtjstatsdk/a/a;->d:[Lcom/baidu/mtjstatsdk/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/baidu/mtjstatsdk/a/a;
    .locals 1

    sget-object v0, Lcom/baidu/mtjstatsdk/a/a;->d:[Lcom/baidu/mtjstatsdk/a/a;

    invoke-virtual {v0}, [Lcom/baidu/mtjstatsdk/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mtjstatsdk/a/a;

    return-object v0
.end method
