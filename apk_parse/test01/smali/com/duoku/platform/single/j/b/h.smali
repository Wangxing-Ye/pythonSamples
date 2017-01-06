.class Lcom/duoku/platform/single/j/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:Lcom/duoku/platform/single/j/c/k;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/h;->a:Lcom/duoku/platform/single/j/b/a;

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/h;->b:Lcom/duoku/platform/single/j/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/h;->b:Lcom/duoku/platform/single/j/c/k;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/c/k;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/h;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/h;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->t(Lcom/duoku/platform/single/j/b/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/h;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->u(Lcom/duoku/platform/single/j/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
