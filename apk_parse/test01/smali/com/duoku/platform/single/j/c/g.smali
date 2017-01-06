.class Lcom/duoku/platform/single/j/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/g;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/c;->q:Lcom/duoku/platform/single/d/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/g;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/g;->a:Lcom/duoku/platform/single/j/c/f;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/f;->a(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
