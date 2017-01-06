.class public Lcom/duoku/platform/single/h/a/o;
.super Lcom/duoku/platform/single/h/a/a;


# instance fields
.field private a:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/o;->o:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->j:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->j:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->m:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->m:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->l:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->l:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->n:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/o;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->k:I

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->p:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->n:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/o;->q:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->p:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/o;->q:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueryInitCmFlagResult [mmSupport="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mdoSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gbSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmDayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mdoDayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gbDayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/h/a/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybkSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ybkDayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/h/a/o;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
