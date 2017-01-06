.class Lcom/duoku/platform/single/j/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/c;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/c;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-static {v1}, Lcom/duoku/platform/single/j/c/b;->a(Lcom/duoku/platform/single/j/c/b;)Lcom/duoku/platform/single/d/d;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/c;->c:Lcom/duoku/platform/single/d/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/c;->a:Lcom/duoku/platform/single/j/c/b;

    invoke-virtual {v4}, Lcom/duoku/platform/single/j/c/b;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method
