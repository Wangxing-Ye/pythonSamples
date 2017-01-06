.class public Lcom/duoku/platform/single/suspend/q;
.super Lcom/duoku/platform/single/suspend/f;


# static fields
.field private static j:Lcom/duoku/platform/single/suspend/q; = null

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:I = 0x5


# instance fields
.field private A:I

.field private B:[I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Landroid/view/View$OnTouchListener;

.field private K:Landroid/view/View$OnTouchListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/view/View$OnTouchListener;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Landroid/os/Handler;

.field private n:Landroid/app/Activity;

.field private o:Landroid/view/Display;

.field private p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/view/LayoutInflater;

.field private s:Landroid/view/WindowManager;

.field private t:Landroid/view/WindowManager$LayoutParams;

.field private u:Lcom/duoku/platform/single/suspend/h;

.field private v:Lcom/duoku/platform/single/item/e;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/f;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->w:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->x:Z

    iput-boolean v2, p0, Lcom/duoku/platform/single/suspend/q;->y:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->B:[I

    iput v1, p0, Lcom/duoku/platform/single/suspend/q;->E:F

    iput v1, p0, Lcom/duoku/platform/single/suspend/q;->F:F

    iput v2, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    new-instance v0, Lcom/duoku/platform/single/suspend/r;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/r;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->J:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/s;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/s;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->K:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/t;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/t;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->L:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/u;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/u;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->M:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/w;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/w;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->N:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/x;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/x;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->O:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/suspend/y;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/y;-><init>(Lcom/duoku/platform/single/suspend/q;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->P:Landroid/os/Handler;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/single/suspend/q;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/suspend/q;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    sput-object v0, Lcom/duoku/platform/single/util/j;->e:Lcom/duoku/platform/single/suspend/q;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;F)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/q;->E:F

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/q;->A:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/q;->d(Lcom/duoku/platform/single/item/e;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/suspend/h;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/q;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/q;->I:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/q;F)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/q;->F:F

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/q;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/q;->y:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->G:Z

    return v0
.end method

.method private c(Lcom/duoku/platform/single/item/e;)V
    .locals 4

    const/4 v3, -0x1

    sget-boolean v0, Lcom/duoku/platform/single/suspend/k;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->o()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/q;->z:I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v2, "dk_suspend_icon_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->r:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v2, "dk_su_lottery_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/q;->d(Lcom/duoku/platform/single/item/e;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/q;->b(Lcom/duoku/platform/single/item/e;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/q;F)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/q;->C:F

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/q;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/q;->x:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/item/e;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->v:Lcom/duoku/platform/single/item/e;

    return-object v0
.end method

.method private d(Lcom/duoku/platform/single/item/e;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    sput v0, Lcom/duoku/platform/single/suspend/q;->h:I

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->G:Z

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v1, "dk_suspension_btn_left_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/duoku/platform/single/suspend/q;->a:I

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->G:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    sget-boolean v0, Lcom/duoku/platform/single/util/a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->q()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->G:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->H:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->G:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/duoku/platform/single/util/a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->q()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/duoku/platform/single/suspend/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/duoku/platform/single/suspend/k;->a()Lcom/duoku/platform/single/suspend/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/k;->b()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/duoku/platform/single/suspend/q;F)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/q;->D:F

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/suspend/q;)F
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->E:F

    return v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/suspend/q;)F
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->F:F

    return v0
.end method

.method static synthetic g(Lcom/duoku/platform/single/suspend/q;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/duoku/platform/single/suspend/q;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/duoku/platform/single/suspend/q;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->A:I

    return v0
.end method

.method static synthetic i(Lcom/duoku/platform/single/suspend/q;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->M:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/single/suspend/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/q;->g()V

    return-void
.end method

.method static synthetic l(Lcom/duoku/platform/single/suspend/q;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/single/suspend/q;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->o:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/single/suspend/q;)F
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->C:F

    return v0
.end method

.method static synthetic o(Lcom/duoku/platform/single/suspend/q;)F
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->D:F

    return v0
.end method

.method static synthetic p(Lcom/duoku/platform/single/suspend/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->x:Z

    return v0
.end method

.method static synthetic q(Lcom/duoku/platform/single/suspend/q;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic r(Lcom/duoku/platform/single/suspend/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->y:Z

    return v0
.end method

.method static synthetic s(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->L:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic t(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/h;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    return-object v0
.end method

.method static synthetic u(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/suspend/DKSuspensionView;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    return-object v0
.end method

.method static synthetic v(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->N:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic w(Lcom/duoku/platform/single/suspend/q;)[I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->B:[I

    return-object v0
.end method

.method static synthetic x(Lcom/duoku/platform/single/suspend/q;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->O:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lcom/duoku/platform/single/suspend/q;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->z:I

    return v0
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/item/e;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/q;->v:Lcom/duoku/platform/single/item/e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->r:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->o:Landroid/view/Display;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x13

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->t:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x5a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/q;->c(Lcom/duoku/platform/single/item/e;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->w:Z

    :goto_0
    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->w:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/q;->w:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->P:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/duoku/platform/single/item/e;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->z:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->r:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v2, "dk_suspension_left_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-virtual {v0, p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/q;->g()V

    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/suspend/q;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->r:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->n:Landroid/app/Activity;

    const-string v2, "dk_suspension_view2"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->p:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-virtual {v0, p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->P:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sput-object v2, Lcom/duoku/platform/single/suspend/q;->c:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/h;->o()V

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/q;->q:Landroid/widget/LinearLayout;

    :cond_3
    iput-object v2, p0, Lcom/duoku/platform/single/suspend/q;->s:Landroid/view/WindowManager;

    :cond_4
    sget-object v0, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    if-eqz v0, :cond_5

    sput-object v2, Lcom/duoku/platform/single/suspend/q;->j:Lcom/duoku/platform/single/suspend/q;

    sput-object v2, Lcom/duoku/platform/single/util/j;->e:Lcom/duoku/platform/single/suspend/q;

    :cond_5
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/h;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/q;->u:Lcom/duoku/platform/single/suspend/h;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/single/suspend/q;->b:Z

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/q;->g()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/q;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/q;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
