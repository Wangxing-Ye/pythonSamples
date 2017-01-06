.class Lcom/duoku/platform/single/j/b/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a$c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/b/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/D;->a:Lcom/duoku/platform/single/j/b/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/D;->a:Lcom/duoku/platform/single/j/b/a$c;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a$c;->a(Lcom/duoku/platform/single/j/b/a$c;)Lcom/duoku/platform/single/j/b/a;

    move-result-object v0

    const-string v1, "\u89e3\u7ed1\u5931\u8d25!"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    return-void
.end method
