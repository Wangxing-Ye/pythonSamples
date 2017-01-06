.class Lcom/duoku/platform/single/j/b/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/A;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/A;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/B;->a:Lcom/duoku/platform/single/j/b/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/B;->a:Lcom/duoku/platform/single/j/b/A;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/A;->a(Lcom/duoku/platform/single/j/b/A;)Lcom/duoku/platform/single/j/b/z;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/B;->a:Lcom/duoku/platform/single/j/b/A;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/A;->a(Lcom/duoku/platform/single/j/b/A;)Lcom/duoku/platform/single/j/b/z;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/B;->a:Lcom/duoku/platform/single/j/b/A;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/A;->a(Lcom/duoku/platform/single/j/b/A;)Lcom/duoku/platform/single/j/b/z;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/z;->a(Lcom/duoku/platform/single/j/b/z;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "please_enter_right_creditcard_or_bankcard_number"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    return-void
.end method
