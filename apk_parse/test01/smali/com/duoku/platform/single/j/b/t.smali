.class Lcom/duoku/platform/single/j/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:Lcom/duoku/platform/single/item/o;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/item/o;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/t;->a:Lcom/duoku/platform/single/j/b/a;

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/t;->b:Lcom/duoku/platform/single/item/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/t;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/t;->b:Lcom/duoku/platform/single/item/o;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->f(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/t;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/t;->b:Lcom/duoku/platform/single/item/o;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->g(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/t;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->E(Lcom/duoku/platform/single/j/b/a;)V

    return-void
.end method
