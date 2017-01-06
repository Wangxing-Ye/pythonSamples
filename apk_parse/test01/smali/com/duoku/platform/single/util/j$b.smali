.class Lcom/duoku/platform/single/util/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/single/item/i;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/item/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/util/j$b;->a:Lcom/duoku/platform/single/item/i;

    iput-object p1, p0, Lcom/duoku/platform/single/util/j$b;->a:Lcom/duoku/platform/single/item/i;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/util/j$b;->a:Lcom/duoku/platform/single/item/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/j;->a(Lcom/duoku/platform/single/item/i;Z)V

    :cond_0
    return-void
.end method
