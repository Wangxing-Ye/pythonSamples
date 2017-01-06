.class final enum Lcom/unipay/account/UnipayAccountPlatform$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/account/UnipayAccountPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unipay/account/UnipayAccountPlatform$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unipay/account/UnipayAccountPlatform$a;

.field public static final enum b:Lcom/unipay/account/UnipayAccountPlatform$a;

.field public static final enum c:Lcom/unipay/account/UnipayAccountPlatform$a;

.field public static final enum d:Lcom/unipay/account/UnipayAccountPlatform$a;

.field private static final synthetic e:[Lcom/unipay/account/UnipayAccountPlatform$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v3}, Lcom/unipay/account/UnipayAccountPlatform$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->b:Lcom/unipay/account/UnipayAccountPlatform$a;

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v4}, Lcom/unipay/account/UnipayAccountPlatform$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->c:Lcom/unipay/account/UnipayAccountPlatform$a;

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    const-string v1, "INITED"

    invoke-direct {v0, v1, v5}, Lcom/unipay/account/UnipayAccountPlatform$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->d:Lcom/unipay/account/UnipayAccountPlatform$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unipay/account/UnipayAccountPlatform$a;

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform$a;->b:Lcom/unipay/account/UnipayAccountPlatform$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform$a;->c:Lcom/unipay/account/UnipayAccountPlatform$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform$a;->d:Lcom/unipay/account/UnipayAccountPlatform$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->e:[Lcom/unipay/account/UnipayAccountPlatform$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unipay/account/UnipayAccountPlatform$a;
    .locals 1

    const-class v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unipay/account/UnipayAccountPlatform$a;

    return-object v0
.end method

.method public static values()[Lcom/unipay/account/UnipayAccountPlatform$a;
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->e:[Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-virtual {v0}, [Lcom/unipay/account/UnipayAccountPlatform$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unipay/account/UnipayAccountPlatform$a;

    return-object v0
.end method
