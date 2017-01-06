.class public Lcom/duoku/platform/single/view/PullRefreshListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/view/PullRefreshListView$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final h:I = 0x2


# instance fields
.field private A:Z

.field private f:Z

.field private g:Z

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/view/animation/RotateAnimation;

.field private o:Landroid/view/animation/RotateAnimation;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->x:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->y:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->x:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->y:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->x:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->y:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->b()V

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

.method private b()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/PullRefreshListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->i:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->i:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v2, "dk_draw_progress"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->c()V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->d()V

    invoke-virtual {p0, p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v2, "dk_pb_loading"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->m:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v2, "dk_tv_loading"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/PullRefreshListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/duoku/platform/single/view/PullRefreshListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private d()V
    .locals 12

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->n:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->n:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->n:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->n:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->o:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->o:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->o:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->o:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private e()V
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v3, "dk_rank_release_refresh"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v3, "dk_rank_pullup_refresh"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v3, "dk_rank_pullup_refresh"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v3, "dk_rank_refreshing"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->j:Landroid/content/Context;

    const-string v3, "dk_rank_pullup_refresh"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

    invoke-interface {v0}, Lcom/duoku/platform/single/view/PullRefreshListView$a;->b()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

    invoke-interface {v0}, Lcom/duoku/platform/single/view/PullRefreshListView$a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->e()V

    :cond_0
    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    :cond_1
    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/view/PullRefreshListView$a;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->w:Lcom/duoku/platform/single/view/PullRefreshListView$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->z:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->x:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->y:Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->t:I

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->p:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->p:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    goto :goto_0

    :pswitch_1
    const-string v0, "listview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRefreshState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v0, v3, :cond_2

    iput v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    :cond_1
    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->e()V

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-nez v0, :cond_4

    iput v6, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->h()V

    :cond_3
    iget-boolean v0, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->e()V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->g()V

    :cond_4
    iput-boolean v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->p:Z

    iput-boolean v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    if-gez v1, :cond_b

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->x:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iput-boolean v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->p:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v1, v7, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    if-ge v1, v2, :cond_9

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_9

    iput v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    :cond_5
    :goto_1
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    if-lt v1, v2, :cond_a

    iput v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    :cond_6
    :goto_2
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v1, v5, :cond_7

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_7

    iput v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    :cond_7
    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->A:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_8
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->k:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->r:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    if-gtz v1, :cond_5

    iput v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    goto :goto_1

    :cond_a
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v1, v0

    if-gtz v1, :cond_6

    iput v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->f()V

    goto :goto_2

    :cond_b
    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->y:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->g:Z

    iput-boolean v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->f:Z

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->p:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-eq v1, v7, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-nez v1, :cond_c

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->q:I

    if-ge v1, v2, :cond_e

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    if-lez v1, :cond_e

    iput v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->e()V

    :cond_c
    :goto_3
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->q:I

    if-lt v1, v2, :cond_f

    iput v4, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    iput-boolean v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->v:Z

    :cond_d
    :goto_4
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iput v3, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_c

    iput v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    invoke-direct {p0}, Lcom/duoku/platform/single/view/PullRefreshListView;->e()V

    goto :goto_3

    :cond_f
    iget v1, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->s:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_d

    iput v5, p0, Lcom/duoku/platform/single/view/PullRefreshListView;->u:I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
