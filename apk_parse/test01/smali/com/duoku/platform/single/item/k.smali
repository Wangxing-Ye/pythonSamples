.class public Lcom/duoku/platform/single/item/k;
.super Lcom/duoku/platform/single/h/a/a;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Lcom/duoku/platform/single/item/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/duoku/platform/single/item/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/k;->l:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/item/k;->l:I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/p;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/k;->r:Lcom/duoku/platform/single/item/p;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/k;->m:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/item/k;->q:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/k;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/item/k;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/k;->o:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/k;->q:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/item/k;->p:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/k;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/duoku/platform/single/item/p;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/k;->r:Lcom/duoku/platform/single/item/p;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/k;->j:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/k;->p:I

    return v0
.end method
