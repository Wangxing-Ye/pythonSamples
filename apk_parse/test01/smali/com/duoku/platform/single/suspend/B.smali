.class Lcom/duoku/platform/single/suspend/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/B;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/B;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->requestLayout()V

    return-void
.end method
