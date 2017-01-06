.class public Lcom/duoku/platform/single/h/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/h/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/single/h/a/a;

.field private b:Lcom/duoku/platform/single/h/k$a;

.field private c:J

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/k;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/k;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/duoku/platform/single/h/k;->c:J

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/k;->a:Lcom/duoku/platform/single/h/a/a;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/k;->b:Lcom/duoku/platform/single/h/k$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/k;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/duoku/platform/single/h/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/k;->a:Lcom/duoku/platform/single/h/a/a;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/k;->e:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/duoku/platform/single/h/k;->d:J

    return-void
.end method

.method public c()Lcom/duoku/platform/single/h/k$a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/k;->b:Lcom/duoku/platform/single/h/k$a;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/k;->g:I

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/duoku/platform/single/h/k;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/duoku/platform/single/h/k;->d:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/k;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/k;->g:I

    return v0
.end method
