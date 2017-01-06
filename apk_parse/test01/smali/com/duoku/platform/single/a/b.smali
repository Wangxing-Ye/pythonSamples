.class Lcom/duoku/platform/single/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/a/a;

.field private final synthetic b:I

.field private final synthetic c:Lcom/duoku/platform/single/item/k;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/a/a;ILcom/duoku/platform/single/item/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/a/b;->a:Lcom/duoku/platform/single/a/a;

    iput p2, p0, Lcom/duoku/platform/single/a/b;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/a/b;->c:Lcom/duoku/platform/single/item/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/a/b;->a:Lcom/duoku/platform/single/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/a/a;->a(Lcom/duoku/platform/single/a/a;)Lcom/duoku/platform/single/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/a/b;->a:Lcom/duoku/platform/single/a/a;

    invoke-static {v0}, Lcom/duoku/platform/single/a/a;->a(Lcom/duoku/platform/single/a/a;)Lcom/duoku/platform/single/a/a$b;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/a/b;->b:I

    iget-object v2, p0, Lcom/duoku/platform/single/a/b;->c:Lcom/duoku/platform/single/item/k;

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/single/a/a$b;->a(ILcom/duoku/platform/single/item/k;)V

    :cond_0
    return-void
.end method
