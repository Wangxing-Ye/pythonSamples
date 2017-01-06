.class public Lcom/duoku/platform/single/h/a/g;
.super Lcom/duoku/platform/single/h/a/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/duoku/platform/single/item/a;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/h/a/g;->q:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/g;->p:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/duoku/platform/single/h/a/g;->o:J

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/g;->j:Lcom/duoku/platform/single/item/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/g;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/g;->a:Ljava/util/List;

    return-void
.end method

.method public b()Lcom/duoku/platform/single/item/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/g;->j:Lcom/duoku/platform/single/item/a;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/g;->q:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/g;->k:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/g;->l:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/duoku/platform/single/h/a/g;->o:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/g;->p:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/g;->q:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/g;->k:I

    return v0
.end method
