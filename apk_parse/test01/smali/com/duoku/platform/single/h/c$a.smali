.class public final enum Lcom/duoku/platform/single/h/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/single/h/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duoku/platform/single/h/c$a;

.field public static final enum b:Lcom/duoku/platform/single/h/c$a;

.field public static final enum c:Lcom/duoku/platform/single/h/c$a;

.field public static final enum d:Lcom/duoku/platform/single/h/c$a;

.field public static final enum e:Lcom/duoku/platform/single/h/c$a;

.field public static final enum f:Lcom/duoku/platform/single/h/c$a;

.field private static final synthetic g:[Lcom/duoku/platform/single/h/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "NONE_Connect"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->a:Lcom/duoku/platform/single/h/c$a;

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "NET_Connect"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->b:Lcom/duoku/platform/single/h/c$a;

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "WAP_ChinaMobile_Connect"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->c:Lcom/duoku/platform/single/h/c$a;

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "WAP_ChinaUnicom_Connect"

    invoke-direct {v0, v1, v6}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->d:Lcom/duoku/platform/single/h/c$a;

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "WAP_ChinaTelecom_Connect"

    invoke-direct {v0, v1, v7}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->e:Lcom/duoku/platform/single/h/c$a;

    new-instance v0, Lcom/duoku/platform/single/h/c$a;

    const-string v1, "WIFI_Connect"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/single/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->f:Lcom/duoku/platform/single/h/c$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/duoku/platform/single/h/c$a;

    sget-object v1, Lcom/duoku/platform/single/h/c$a;->a:Lcom/duoku/platform/single/h/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/single/h/c$a;->b:Lcom/duoku/platform/single/h/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/single/h/c$a;->c:Lcom/duoku/platform/single/h/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/single/h/c$a;->d:Lcom/duoku/platform/single/h/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoku/platform/single/h/c$a;->e:Lcom/duoku/platform/single/h/c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/duoku/platform/single/h/c$a;->f:Lcom/duoku/platform/single/h/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/single/h/c$a;->g:[Lcom/duoku/platform/single/h/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/single/h/c$a;
    .locals 1

    const-class v0, Lcom/duoku/platform/single/h/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/c$a;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/single/h/c$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/duoku/platform/single/h/c$a;->g:[Lcom/duoku/platform/single/h/c$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/single/h/c$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method