.class public Lcom/duoku/platform/single/h/a/c;
.super Lcom/duoku/platform/single/h/a/a;


# static fields
.field public static a:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;


# instance fields
.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "checkId"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->a:Ljava/lang/String;

    const-string v0, "card_list"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->j:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->k:Ljava/lang/String;

    const-string v0, "cname"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->l:Ljava/lang/String;

    const-string v0, "childs"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->m:Ljava/lang/String;

    const-string v0, "childname"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->n:Ljava/lang/String;

    const-string v0, "charge_points"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->o:Ljava/lang/String;

    const-string v0, "exchange_rate"

    sput-object v0, Lcom/duoku/platform/single/h/a/c;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/c;->r:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/c;->q:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/c;->r:I

    return v0
.end method
