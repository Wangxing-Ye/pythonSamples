.class Lcom/duoku/platform/single/j/b/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a$g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a$g;I)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/H;->a:Lcom/duoku/platform/single/j/b/a$g;

    iput p2, p0, Lcom/duoku/platform/single/j/b/H;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/H;->a:Lcom/duoku/platform/single/j/b/a$g;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$g;->a(Lcom/duoku/platform/single/j/b/a$g;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->p(Lcom/duoku/platform/single/j/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/H;->a:Lcom/duoku/platform/single/j/b/a$g;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$g;->a(Lcom/duoku/platform/single/j/b/a$g;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->e(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/H;->a:Lcom/duoku/platform/single/j/b/a$g;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$g;->a(Lcom/duoku/platform/single/j/b/a$g;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/H;->a:Lcom/duoku/platform/single/j/b/a$g;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$g;->a(Lcom/duoku/platform/single/j/b/a$g;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/j/b/H;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(ILjava/lang/String;)V

    return-void
.end method
