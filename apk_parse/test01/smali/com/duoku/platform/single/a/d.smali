.class Lcom/duoku/platform/single/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/a/c;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/a/d;->a:Lcom/duoku/platform/single/a/c;

    iput p2, p0, Lcom/duoku/platform/single/a/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/a/d;->a:Lcom/duoku/platform/single/a/c;

    invoke-static {v0}, Lcom/duoku/platform/single/a/c;->a(Lcom/duoku/platform/single/a/c;)Lcom/duoku/platform/single/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/a/d;->a:Lcom/duoku/platform/single/a/c;

    invoke-static {v0}, Lcom/duoku/platform/single/a/c;->a(Lcom/duoku/platform/single/a/c;)Lcom/duoku/platform/single/a/c$a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/a/d;->b:I

    invoke-interface {v0, v1}, Lcom/duoku/platform/single/a/c$a;->a(I)V

    :cond_0
    return-void
.end method
