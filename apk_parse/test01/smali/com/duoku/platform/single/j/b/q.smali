.class Lcom/duoku/platform/single/j/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private final synthetic b:Lcom/duoku/platform/single/j/c/k;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/q;->a:Lcom/duoku/platform/single/j/b/a;

    iput-object p2, p0, Lcom/duoku/platform/single/j/b/q;->b:Lcom/duoku/platform/single/j/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/q;->b:Lcom/duoku/platform/single/j/c/k;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/c/k;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
