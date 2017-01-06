.class Lcom/duoku/platform/single/suspend/z;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/duoku/platform/single/suspend/HorizontalListView;->a(Lcom/duoku/platform/single/suspend/HorizontalListView;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->a(Lcom/duoku/platform/single/suspend/HorizontalListView;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/z;->a:Lcom/duoku/platform/single/suspend/HorizontalListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/HorizontalListView;->requestLayout()V

    return-void
.end method
