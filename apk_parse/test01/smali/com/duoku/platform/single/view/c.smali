.class public Lcom/duoku/platform/single/view/c;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/view/c$a;,
        Lcom/duoku/platform/single/view/c$b;,
        Lcom/duoku/platform/single/view/c$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/duoku/platform/single/view/c$a;

.field private m:Lcom/duoku/platform/single/view/c$a;

.field private n:Lcom/duoku/platform/single/view/c$a;

.field private o:Lcom/duoku/platform/single/view/c$a;

.field private p:Landroid/content/SharedPreferences;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/duoku/platform/single/h/a/b;

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/duoku/platform/single/view/c;->f:I

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/c;->g:Z

    new-instance v0, Lcom/duoku/platform/single/view/d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/view/d;-><init>(Lcom/duoku/platform/single/view/c;)V

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->u:Landroid/os/Handler;

    iput-object p1, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/duoku/platform/single/view/c;->g:Z

    iput-object p2, p0, Lcom/duoku/platform/single/view/c;->s:Ljava/util/List;

    invoke-direct {p0}, Lcom/duoku/platform/single/view/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/view/c;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->j:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/view/c;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/view/c;->f:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/view/c;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/c;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/view/c;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/view/c;->f:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/view/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/view/c;->h:Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/view/c;->requestWindowFeature(I)Z

    iget-boolean v0, p0, Lcom/duoku/platform/single/view/c;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/view/c;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v2, "dk_banner_insert_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/c;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->a()V

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/c;->d(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/duoku/platform/single/view/c;->setCancelable(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v2, "vp_banner_insert_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->j:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->j:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/duoku/platform/single/a/e;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1, p0}, Lcom/duoku/platform/single/a/e;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/duoku/platform/single/view/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->j:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/duoku/platform/single/view/c$b;

    invoke-direct {v1, p0, v5}, Lcom/duoku/platform/single/view/c$b;-><init>(Lcom/duoku/platform/single/view/c;Lcom/duoku/platform/single/view/c$b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "inads_show"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/c;->b(Ljava/util/List;)V

    sget-boolean v0, Lcom/duoku/platform/single/util/j;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->show()V

    sput-boolean v4, Lcom/duoku/platform/single/util/j;->c:Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/single/view/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v2, "iv_banner_insert_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v3, "v_dot0"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v4, "v_dot1"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v5, "v_dot2"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v6, "v_dot3"

    invoke-static {v5, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/duoku/platform/single/view/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/view/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/single/view/c;)Lcom/duoku/platform/single/h/a/b;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->t:Lcom/duoku/platform/single/h/a/b;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/single/view/c;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/duoku/platform/single/view/c;->g:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;I)V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/view/f;

    invoke-direct {v0, p0, p2, p1}, Lcom/duoku/platform/single/view/f;-><init>(Lcom/duoku/platform/single/view/c;ILandroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/duoku/platform/single/view/c;->b(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/duoku/platform/single/view/c;->a(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    new-instance v2, Lcom/duoku/platform/single/view/c$a;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/duoku/platform/single/view/c$a;-><init>(Lcom/duoku/platform/single/view/c;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/duoku/platform/single/view/c;->l:Lcom/duoku/platform/single/view/c$a;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->l:Lcom/duoku/platform/single/view/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v2, Lcom/duoku/platform/single/view/c$a;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/duoku/platform/single/view/c$a;-><init>(Lcom/duoku/platform/single/view/c;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/duoku/platform/single/view/c;->m:Lcom/duoku/platform/single/view/c$a;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->m:Lcom/duoku/platform/single/view/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    new-instance v2, Lcom/duoku/platform/single/view/c$a;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/duoku/platform/single/view/c$a;-><init>(Lcom/duoku/platform/single/view/c;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/duoku/platform/single/view/c;->n:Lcom/duoku/platform/single/view/c$a;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->n:Lcom/duoku/platform/single/view/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    new-instance v2, Lcom/duoku/platform/single/view/c$a;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/duoku/platform/single/view/c$a;-><init>(Lcom/duoku/platform/single/view/c;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/duoku/platform/single/view/c;->o:Lcom/duoku/platform/single/view/c$a;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/duoku/platform/single/view/c;->o:Lcom/duoku/platform/single/view/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->dismiss()V

    sput-boolean v2, Lcom/duoku/platform/single/util/j;->c:Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public b(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/view/e;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/duoku/platform/single/view/e;-><init>(Lcom/duoku/platform/single/view/c;Lcom/duoku/platform/single/item/d;ILandroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->r:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/d;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/duoku/platform/single/util/g;->d:Ljava/lang/String;

    sget-object v1, Lcom/duoku/platform/single/util/g;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/b;

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->t:Lcom/duoku/platform/single/h/a/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->l:Lcom/duoku/platform/single/view/c$a;

    invoke-virtual {p0, v0, v4, v2}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->m:Lcom/duoku/platform/single/view/c$a;

    invoke-virtual {p0, v0, v4, v5}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->n:Lcom/duoku/platform/single/view/c$a;

    invoke-virtual {p0, v0, v4, v6}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/d;

    iget-object v4, p0, Lcom/duoku/platform/single/view/c;->o:Lcom/duoku/platform/single/view/c$a;

    invoke-virtual {p0, v0, v4, v7}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/item/d;Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/c;->a:Landroid/content/Context;

    const-string v2, "iv_banner_insert_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->b()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/duoku/platform/single/view/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/single/view/c$c;-><init>(Lcom/duoku/platform/single/view/c;Lcom/duoku/platform/single/view/c$c;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/view/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/c;->a()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
