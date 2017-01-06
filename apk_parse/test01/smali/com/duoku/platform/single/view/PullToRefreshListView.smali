.class public Lcom/duoku/platform/single/view/PullToRefreshListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/view/PullToRefreshListView$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "PullToRefreshListView"

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# instance fields
.field private A:Z

.field public a:Lcom/duoku/platform/single/view/PullToRefreshListView$a;

.field public b:Landroid/content/Context;

.field private h:Landroid/view/LayoutInflater;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:Landroid/view/View;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->A:Z

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->A:Z

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->h:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->h:Landroid/view/LayoutInflater;

    const-string v1, "dk_draw_progress"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->h:Landroid/view/LayoutInflater;

    const-string v1, "dk_draw_progress"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    const-string v1, "dk_pb_loading"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    const-string v1, "dk_tv_loading"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->o:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->u:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->n:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->m:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->n:I

    mul-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->y:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->z:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->y:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private e()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->b:Landroid/content/Context;

    const-string v2, "pull_to_refresh_release_label"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->t:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->b:Landroid/content/Context;

    const-string v2, "pull_to_refresh_pull_label"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->u:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->b:Landroid/content/Context;

    const-string v2, "pull_to_refresh_refreshing_label"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->y:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->b:Landroid/content/Context;

    const-string v2, "pull_to_refresh_pull_label"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->a:Lcom/duoku/platform/single/view/PullToRefreshListView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->a:Lcom/duoku/platform/single/view/PullToRefreshListView$a;

    invoke-interface {v0}, Lcom/duoku/platform/single/view/PullToRefreshListView$a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->setSelection(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->f()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/view/PullToRefreshListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->a:Lcom/duoku/platform/single/view/PullToRefreshListView$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->A:Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->q:I

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->w:I

    add-int/lit8 v0, p4, -0x1

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->x:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    iput p2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->r:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->A:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->w:I

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->x:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-nez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    :cond_2
    :goto_2
    iput-boolean v5, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    iput-boolean v5, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->t:Z

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0, v6}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->f()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->w:I

    iget v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->x:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    iput v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    :cond_4
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-eq v1, v6, :cond_1

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->l:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->y:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x14

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    if-gez v1, :cond_7

    invoke-direct {p0, v5}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    :cond_5
    :goto_3
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-ne v1, v3, :cond_1

    :cond_6
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->y:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_5

    invoke-direct {p0, v4}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    goto :goto_3

    :cond_8
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->n:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x14

    if-gt v1, v2, :cond_9

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->r:I

    if-ne v1, v3, :cond_9

    invoke-direct {p0, v3}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->t:Z

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_5

    invoke-direct {p0, v4}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->s:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/duoku/platform/single/view/PullToRefreshListView;->p:I

    sub-int v1, v0, v1

    if-gez v1, :cond_5

    invoke-direct {p0, v5}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->e()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
