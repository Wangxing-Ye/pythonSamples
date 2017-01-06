.class Lcom/duoku/platform/single/j/b/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/b/a$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a$c;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a$c;)Lcom/duoku/platform/single/j/b/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v5, Lcom/duoku/platform/single/j/b/D;

    invoke-direct {v5, p0}, Lcom/duoku/platform/single/j/b/D;-><init>(Lcom/duoku/platform/single/j/b/a$c;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/j/b/a;->a(IIILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    check-cast p2, Lcom/duoku/platform/single/h/a/k;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->m(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/k;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    const-string v2, "bindid"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->f(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "bindid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->f(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "bankname"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->f(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "lastnum"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->f(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$c;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_tip_credit_unbind_success"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
