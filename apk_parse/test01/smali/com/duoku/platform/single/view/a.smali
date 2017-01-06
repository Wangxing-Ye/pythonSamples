.class public abstract Lcom/duoku/platform/single/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field protected e:Lcom/duoku/platform/single/d/d;

.field protected f:Landroid/view/ViewGroup;

.field protected g:Landroid/content/Context;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/a;->h:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/a;->i:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/a;->j:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/a;->a:Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/a;->b()V

    iput-object p1, p0, Lcom/duoku/platform/single/view/a;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/a;->j()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/duoku/platform/single/d/c;I)V
.end method

.method public abstract a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/a;->h:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/a;->i:Z

    return-void
.end method

.method protected abstract c()V
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/a;->j:Z

    return-void
.end method

.method public c_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/a;->a:Z

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Lcom/duoku/platform/single/d/d;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/a;->e:Lcom/duoku/platform/single/d/d;

    return-object v0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/a;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/a;->h:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/a;->i:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/view/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/a;->j:Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Z)Lcom/duoku/platform/single/j/c/k;

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/a;->j:Z

    return v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/a;->a:Z

    return v0
.end method
