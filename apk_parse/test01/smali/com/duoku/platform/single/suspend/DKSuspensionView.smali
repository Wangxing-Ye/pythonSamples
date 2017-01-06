.class public Lcom/duoku/platform/single/suspend/DKSuspensionView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/suspend/DKSuspensionView$a;,
        Lcom/duoku/platform/single/suspend/DKSuspensionView$b;,
        Lcom/duoku/platform/single/suspend/DKSuspensionView$c;,
        Lcom/duoku/platform/single/suspend/DKSuspensionView$d;,
        Lcom/duoku/platform/single/suspend/DKSuspensionView$e;,
        Lcom/duoku/platform/single/suspend/DKSuspensionView$f;
    }
.end annotation


# static fields
.field public static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/i;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/i;",
            ">;"
        }
    .end annotation
.end field

.field public static f:I = 0x0

.field public static g:I = 0x0

.field private static final k:Ljava/lang/String; = "dk_recommend_game_item"

.field private static final q:I = 0x0

.field private static final r:I = 0x1


# instance fields
.field private A:Lcom/duoku/platform/single/util/H;

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/widget/AdapterView$OnItemClickListener;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/duoku/platform/single/h/h;

.field private H:I

.field private I:I

.field private J:I

.field a:Lcom/duoku/platform/single/item/e;

.field protected d:Landroid/widget/ListView;

.field protected e:Landroid/widget/ListView;

.field protected h:I

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/ProgressBar;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Landroid/content/Context;

.field private o:Landroid/view/LayoutInflater;

.field private p:Lcom/duoku/platform/single/suspend/q;

.field private s:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

.field private t:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    sput v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "dk_suspension_circle_normal"

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->l:Ljava/lang/String;

    const-string v0, "dk_suspension_circle_selected"

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->w:Z

    iput v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->D:I

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/duoku/platform/single/suspend/l;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/l;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->E:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->F:Ljava/util/List;

    new-instance v0, Lcom/duoku/platform/single/suspend/m;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/m;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->G:Lcom/duoku/platform/single/h/h;

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-class v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->A:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x2710
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/duoku/platform/single/item/i;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->o:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_recommend_game_item"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_recommend_game_icon"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_recommend_game_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v4, "dk_recommend_game_num_tv"

    invoke-static {v2, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->F:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/util/H;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->A:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/16 v0, 0x1f

    const/16 v1, 0x8c

    const/16 v2, 0xf8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->J:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->o:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d()V

    return-void
.end method

.method private a(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_suspension_item_left_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->J:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_suspension_item_right_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_suspension_item_right_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->J:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_suspension_item_left_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/duoku/platform/single/item/i;Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->p:Lcom/duoku/platform/single/suspend/q;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->e()V

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v6

    sget v7, Lcom/duoku/platform/single/util/a;->iX:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->p:Lcom/duoku/platform/single/suspend/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_suspend2_download"

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->B:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->z:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/item/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b(Lcom/duoku/platform/single/item/i;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/item/i;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/item/i;Z)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/suspend/DKSuspensionView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->t:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->u:Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/i;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->s:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->t:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/item/i;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/item/i;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_suspension_new_bt"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_suspension_good_bt"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->y:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/single/suspend/n;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/n;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->x:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/single/suspend/o;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/o;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Lcom/duoku/platform/single/item/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/item/i;Z)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->C:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->v:Z

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/suspend/DKSuspensionView$c;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->t:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    return-object v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->h:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xa

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->A:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request pageNum is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/duoku/platform/single/suspend/DKSuspensionView;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    iget-object v4, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->G:Lcom/duoku/platform/single/h/h;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/DKSuspensionView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/DKSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->w:Z

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->o:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_suspension_progress_load"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_loadingImageView"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->j:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->o:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->w:Z

    return v0
.end method

.method static synthetic g(Lcom/duoku/platform/single/suspend/DKSuspensionView;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->B:I

    return v0
.end method

.method static synthetic h(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Lcom/duoku/platform/single/h/h;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->G:Lcom/duoku/platform/single/h/h;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/single/suspend/DKSuspensionView;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->C:I

    return v0
.end method

.method static synthetic k(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->F:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V
    .locals 3

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->p:Lcom/duoku/platform/single/suspend/q;

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b()V

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    sget v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->o()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->D:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_suspension_item_lv"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_suspension_item_lv2"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    new-instance v0, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    sget-object v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView$c;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->s:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->s:Lcom/duoku/platform/single/suspend/DKSuspensionView$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->H:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->I:I

    new-instance v0, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView$b;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/suspend/DKSuspensionView$b;)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->E:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->E:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(I)V

    return-void

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c()V

    goto/16 :goto_0
.end method

.method public b(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->p:Lcom/duoku/platform/single/suspend/q;

    iput-object p2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a:Lcom/duoku/platform/single/item/e;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v1, "dk_suspension_vp"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->o()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->D:I

    invoke-virtual {p2}, Lcom/duoku/platform/single/item/e;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x4

    rem-int/lit8 v0, v3, 0x4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v2, v1, v0

    new-instance v0, Lcom/duoku/platform/single/suspend/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/suspend/p;-><init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;IILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/suspend/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    const-string v2, "dk_recommend_game_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/single/item/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/duoku/platform/single/item/i;

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v6

    sget v7, Lcom/duoku/platform/single/util/a;->iV:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->p:Lcom/duoku/platform/single/suspend/q;

    const/4 v2, 0x0

    iget v3, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->D:I

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;ZI)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a()V

    return-void
.end method
