.class Lcom/duoku/platform/single/j/b/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a$f;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a$f;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/F;->a:Lcom/duoku/platform/single/j/b/a$f;

    iput p2, p0, Lcom/duoku/platform/single/j/b/F;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/j/b/F;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/F;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->p(Lcom/duoku/platform/single/j/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/F;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->e(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/F;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/F;->a:Lcom/duoku/platform/single/j/b/a$f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$f;->a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/j/b/F;->b:I

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/F;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(ILjava/lang/String;)V

    return-void
.end method
