.class public Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;
.super Lcom/duoku/platform/single/ui/DKBaseActivity;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;,
        Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;
    }
.end annotation


# static fields
.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field private static final u:Ljava/lang/String; = "dk_draw_icon_timepassed"


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/TextView;

.field private final C:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

.field private D:Landroid/app/Dialog;

.field private E:Landroid/view/View;

.field private F:Landroid/widget/RelativeLayout;

.field private G:I

.field private H:Lcom/duoku/platform/single/view/PullToRefreshListView;

.field a:[Ljava/lang/String;

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Lcom/duoku/platform/single/draw/a;

.field i:I

.field j:Ljava/lang/StringBuilder;

.field k:I

.field l:Z

.field m:I

.field n:Lcom/duoku/platform/single/h/a/f;

.field o:Lcom/duoku/platform/single/a/a;

.field p:Lcom/duoku/platform/single/a/c;

.field private v:Landroid/os/Handler;

.field private w:Landroid/app/Dialog;

.field private x:Lcom/duoku/platform/single/view/j;

.field private y:Lcom/duoku/platform/single/draw/DKDrawTurntableView;

.field private z:Lcom/duoku/platform/single/draw/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->v:Landroid/os/Handler;

    new-instance v0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    invoke-direct {v0, p0, v3}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->C:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    const/16 v0, 0x168

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b:I

    iput v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    iput v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->i:I

    iput v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    iput-boolean v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->l:Z

    iput v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->G:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->A:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_draw_pannel_gamesolo"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "dk_draw_title_tv"

    aput-object v1, v3, v2

    const/4 v1, 0x1

    const-string v4, "dk_draw_icon_iv"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "dk_draw_name_tv"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "dk_draw_des_tv"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "dk_draw_download_btn"

    aput-object v4, v3, v1

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    aget-object v5, v3, v1

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/widget/LinearLayout;ZLjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_draw_lvheader"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez p2, :cond_0

    const-string v1, "dk_draw_decorate_view1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dk_draw_decorate_view2"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "dk_draw_title_tv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;)Lcom/duoku/platform/single/view/PullToRefreshListView;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;)Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "dk_draw_pannel_listview"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    if-nez v2, :cond_1

    new-instance v2, Lcom/duoku/platform/single/a/c;

    invoke-direct {v2, p0, v1}, Lcom/duoku/platform/single/a/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m()V

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    new-instance v2, Lcom/duoku/platform/single/ui/x;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/ui/x;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/a/c;->a(Lcom/duoku/platform/single/a/c$a;)V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->d()V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/duoku/platform/single/ui/z;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/z;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/a/c;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2}, Lcom/duoku/platform/single/g/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotteryHistory"

    const/16 v3, 0x35

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(III)V
    .locals 0

    iput p3, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->G:I

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(II)V

    return-void
.end method

.method private a(ILcom/duoku/platform/single/h/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->v:Landroid/os/Handler;

    new-instance v1, Lcom/duoku/platform/single/ui/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/duoku/platform/single/ui/w;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;ILcom/duoku/platform/single/h/a/a;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    const-string v2, "dk_draw_title_tv"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->G:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/duoku/platform/single/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotteryConfirmaward"

    const/16 v3, 0x30

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/a/c;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p:Lcom/duoku/platform/single/a/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/a/c;->notifyDataSetChanged()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->q()V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/EditText;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "dk_editview_pay_wrong"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u624b\u673a\u53f7"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "dk_editview_pay_wrong"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v1, "dk_toast_error_credit_phone_length"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/duoku/platform/single/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "dk_editview_pay_wrong"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v1, "dk_phonenum_rule_error"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_draw_pannel_resultreminder"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "dk_draw_title_iv"

    aput-object v1, v3, v2

    const/4 v1, 0x1

    const-string v4, "dk_draw_title_main_tv"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "dk_draw_group_alert"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "dk_draw_alert_line1_tv"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "dk_draw_alert_line2_tv"

    aput-object v4, v3, v1

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    aget-object v5, v3, v1

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->C:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotterySendVerifycode"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private b(Landroid/widget/EditText;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "dk_editview_pay_wrong"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_draw_pannel_verifyinput"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "dk_dialog_tv_drawtype_tip"

    aput-object v1, v3, v2

    const/4 v1, 0x1

    const-string v4, "dk_dialog_et_phone"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "dk_dialog_cleartext_iv"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "dk_dialog_et_verifycode"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "dk_dialog_btn_getverify"

    aput-object v4, v3, v1

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    aget-object v5, v3, v1

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j()V

    return-void
.end method

.method private d(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_draw_pannel_txtdetail"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "dk_dialog_tv_userinfo_tip"

    aput-object v1, v3, v2

    const/4 v1, 0x1

    const-string v4, "dk_dialog_baiduid_linear"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "dk_dialog_phone_linear"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "dk_dialog_tv_drawsuccess_tip"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "dk_dialog_tv_sendphone_tip"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "dk_dialog_tv_value1"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "dk_dialog_tv_value2"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "dk_dialog_tv_value3"

    aput-object v4, v3, v1

    const-string v1, "dk_dialog_tv_value4"

    aput-object v1, v3, v6

    const/16 v1, 0x9

    const-string v4, "dk_dialog_tv_value5"

    aput-object v4, v3, v1

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    aget-object v5, v3, v1

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p()V

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "isShow"

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v4}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_new_draw_dialog"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e()V

    new-instance v0, Lcom/duoku/platform/single/view/j;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/view/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/view/j;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h()V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->i()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    if-eqz v0, :cond_0

    const-string v0, "dk_draw_turnableview"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->y:Lcom/duoku/platform/single/draw/DKDrawTurntableView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->y:Lcom/duoku/platform/single/draw/DKDrawTurntableView;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/draw/a;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 3

    const-string v0, "dk_draw_startdraw_btn"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->A:Landroid/widget/Button;

    const-string v0, "dk_draw_close_btn"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->A:Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/ui/c;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/ui/c;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/duoku/platform/single/ui/n;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/n;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "dk_draw_historyrecord_tv"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->B:Landroid/widget/TextView;

    new-instance v1, Lcom/duoku/platform/single/ui/y;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/y;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/draw/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/draw/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    new-instance v1, Lcom/duoku/platform/single/ui/C;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/C;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/draw/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/draw/a;->b()V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->l()V

    return-void
.end method

.method private k()V
    .locals 4

    const-string v0, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/g/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotteryInitChosenItems"

    const/16 v3, 0x33

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotteryDrawOnce"

    const/16 v3, 0x34

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/g/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/lotteryRecommend"

    const/16 v3, 0x36

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private n()Landroid/widget/RelativeLayout;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_layout_dialog_draw"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->setContentView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private o()Landroid/app/Dialog;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "DK.Theme.NoBackGround.NoAnimation"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v1, "dk_layout_dialog_draw"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    new-instance v1, Lcom/duoku/platform/single/ui/v;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/v;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    return-object v0
.end method

.method private p()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->w:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->dismiss()V

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->finish()V

    return-void
.end method

.method private q()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_unfixed_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v2, "dk_dialog_draw_container2"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_main_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "btnContainer2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dk_draw_pannel_recommendbuttons"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "dk_dialog_btn1"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "dk_dialog_btn2"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "btnContainer"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "dk_dialog_btn1"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, "dk_dialog_btn2"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/duoku/platform/single/ui/A;

    invoke-direct {v4, p0, v3}, Lcom/duoku/platform/single/ui/A;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoku/platform/single/ui/B;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/single/ui/B;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    iget v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->g:I

    if-ne v2, v0, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    const-string v1, ""

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(IIILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c()V

    if-eqz p4, :cond_0

    const-string v0, "\u9a8c\u8bc1\u7801\u9519"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef,\u8bf7\u91cd\u65b0\u586b\u5199"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x33

    if-ne p1, v0, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x34

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/draw/a;->c()V

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->A:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->C:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    const-string v1, "\u8bbf\u95ee\u5931\u8d25\u6062\u590d\u7528\u6237\u64cd\u4f5c"

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a(ZLjava/lang/String;)V

    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    goto :goto_0
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Lcom/duoku/platform/single/h/a/g;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->h()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    iget v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "lottery_show"

    const-string v3, ""

    const-string v4, ""

    iget v5, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->i()I

    move-result v1

    if-nez v1, :cond_2

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    iget v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->k:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(III)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c()V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const-string v0, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->p()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->y:Lcom/duoku/platform/single/draw/DKDrawTurntableView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/duoku/platform/single/h/a/g;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    move v1, v0

    :cond_5
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->b()Lcom/duoku/platform/single/item/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->b()Lcom/duoku/platform/single/item/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/a;->a()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c:I

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->b()Lcom/duoku/platform/single/item/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->b()Lcom/duoku/platform/single/item/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/a;->d()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->g:I

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    rsub-int/lit8 v0, v1, 0x6

    mul-int/lit8 v0, v0, 0x3c

    add-int/lit16 v0, v0, 0x2d0

    iput v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b:I

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->h:Lcom/duoku/platform/single/draw/a;

    iget v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/draw/a;->a(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/g;->b()Lcom/duoku/platform/single/item/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c()V

    check-cast p2, Lcom/duoku/platform/single/h/a/e;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/e;->a()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\u624b\u673a\u53f7\u7ed1\u5b9a\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/e;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/e;->b()Lcom/duoku/platform/single/item/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/e;->b()Lcom/duoku/platform/single/item/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/item/p;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/e;->b()Lcom/duoku/platform/single/item/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/item/p;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c()V

    sput-boolean v1, Lcom/duoku/platform/single/draw/c;->b:Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->z:Lcom/duoku/platform/single/draw/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->z:Lcom/duoku/platform/single/draw/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c()V

    check-cast p2, Lcom/duoku/platform/single/h/a/f;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->m:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/f;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v1}, Lcom/duoku/platform/single/h/a/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->d()V

    :goto_3
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o:Lcom/duoku/platform/single/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/a/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->c()V

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->G:I

    packed-switch v0, :pswitch_data_1

    :goto_4
    iput v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->G:I

    goto/16 :goto_0

    :pswitch_6
    iput-object p2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    goto :goto_4

    :pswitch_7
    iput-object p2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c(Lcom/duoku/platform/single/h/a/f;)V

    goto :goto_4

    :pswitch_8
    iput-object p2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/h/a/f;)V

    goto :goto_4

    :pswitch_9
    iput-object p2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Lcom/duoku/platform/single/h/a/f;)V

    goto :goto_4

    :pswitch_a
    check-cast p2, Lcom/duoku/platform/single/h/a/b;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/b;->a()Lcom/duoku/platform/single/item/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/a/f;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Lcom/duoku/platform/single/h/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8d2d\u4e70\u6e38\u620f\u9053\u5177\u53ef\u4ee5\u589e\u52a0\u62bd\u5956\u673a\u4f1a"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\u62bd\u5956\u8be6\u60c5"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "dk_draw_title_iv"

    aput-object v0, v4, v2

    const-string v0, "dk_draw_title_main_tv"

    aput-object v0, v4, v3

    const/4 v0, 0x2

    const-string v5, "dk_draw_group_alert"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "dk_draw_alert_line1_tv"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "dk_draw_alert_line2_tv"

    aput-object v5, v4, v0

    new-instance v5, Lcom/duoku/platform/single/ui/G;

    invoke-direct {v5, p0, v6, v7}, Lcom/duoku/platform/single/ui/G;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;)V

    return-void

    :cond_0
    const-string v0, "\u5269\u4f59\u62bd\u5956\u6b21\u6570:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "\u4e0b\u6b21\u62bd\u5956\u65f6\u95f4\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/p;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/duoku/platform/single/item/i;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/i;-><init>()V

    const-string v3, "game_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    const-string v3, "game_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    const-string v3, "game_icon_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    const-string v3, "game_download_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    const-string v3, "apk_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    const-string v3, "apk_size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    const-string v3, "packagename"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    const-string v3, "vercode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->a(I)V

    const-string v3, "downloaded"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    const-string v3, "hdown_flag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->b(I)V

    const-string v3, "hdown_apkname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    const-string v3, "dldesc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/single/item/i;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n()Landroid/widget/RelativeLayout;

    const-string v1, "\u62bd\u5956\u8be6\u60c5"

    invoke-virtual {p0, v9, v1, v9}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dk_draw_title_iv"

    invoke-virtual {v4, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dk_draw_title_main_tv"

    invoke-virtual {v4, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dk_draw_group_alert"

    invoke-virtual {v4, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dk_draw_alert_line1_tv"

    invoke-virtual {v4, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v5, "dk_dialog_draw_container1"

    invoke-static {p0, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v4}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    const-string v1, "dk_draw_title_iv"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v5, "dk_draw_icon_pleased"

    invoke-static {p0, v5}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "\u597d\u8d5e\uff01\u83b7\u5f97\u7531\'%s\'\u63d0\u4f9b\u7684%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "dk_draw_title_main_tv"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    move v1, v2

    :goto_0
    const/4 v5, 0x5

    if-le v1, v5, :cond_4

    :cond_1
    const-string v1, "dk_draw_alert_line1_tv"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dk_dialog_draw_container2"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v8}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_6

    const-string v1, "dk_draw_title_tv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string v1, "dk_draw_icon_iv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    const-string v1, "dk_draw_name_tv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v4, v1, 0x2710

    div-int/lit16 v5, v4, 0x2710

    if-lez v5, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u4ebf\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v1, "dk_draw_des_tv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "dk_draw_download_btn"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/single/ui/q;

    invoke-direct {v2, p0, v0}, Lcom/duoku/platform/single/ui/q;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/item/i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;)Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "btnContainer"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dk_draw_pannel_recommendbuttons"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_btn1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v2, "dk_dialog_btn2"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/ui/r;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/ui/r;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoku/platform/single/ui/s;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/ui/s;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/item/p;)V

    goto :goto_3

    :cond_4
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/duoku/platform/single/item/p;->a(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-string v1, "dk_draw_title_tv"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "\u4e0b\u8f7d\u300a%s\u300b,\u53ca\u65f6\u4eab\u7528\u5956\u54c1\u5427\uff01"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    if-lez v4, :cond_8

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u4e07\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    const/16 v4, 0x3e8

    if-le v1, v4, :cond_9

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/duoku/platform/single/util/g;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/i;->h(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Lcom/duoku/platform/single/item/p;)V

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/view/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    new-instance v0, Lcom/duoku/platform/single/item/a;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v1, "\u5f88\u9057\u61be1"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/item/a;

    invoke-direct {v1}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v1, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v2, "\u5f88\u9057\u61be2"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/duoku/platform/single/item/a;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v2, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v3, "\u5f88\u9057\u61be3"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/duoku/platform/single/item/a;

    invoke-direct {v3}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v3, v7}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v4, "\u4e2d\u59564"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v4, "1234567"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/duoku/platform/single/item/a;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v4, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v5, "\u5f88\u9057\u61be5"

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v5, "5"

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/duoku/platform/single/item/a;

    invoke-direct {v5}, Lcom/duoku/platform/single/item/a;-><init>()V

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/a;->a(I)V

    const-string v6, "\u5f88\u9057\u61be6"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/a;->a(Ljava/lang/String;)V

    const-string v6, "6"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/single/item/a;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/duoku/platform/single/h/a/g;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/g;-><init>()V

    const-string v1, "2014"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/g;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/h/a/g;->a(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/duoku/platform/single/h/a/g;->a(Lcom/duoku/platform/single/item/a;)V

    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ILcom/duoku/platform/single/h/a/a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/duoku/platform/single/item/p;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/p;-><init>()V

    const-string v1, "baiduxmosijfijsoidf"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/String;)V

    const-string v1, "13812341234"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/p;->b(Ljava/lang/String;)V

    const-string v1, "\u6d88\u706d\u661f\u661f\u6fc0\u6d3b\u7801"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/p;->c(Ljava/lang/String;)V

    const-string v1, "XMOSDFJIWOIEJ"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/p;->f(Ljava/lang/String;)V

    new-instance v1, Lcom/duoku/platform/single/h/a/e;

    invoke-direct {v1}, Lcom/duoku/platform/single/h/a/e;-><init>()V

    invoke-virtual {v1, v7}, Lcom/duoku/platform/single/h/a/e;->a(I)V

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/h/a/e;->a(Lcom/duoku/platform/single/item/p;)V

    invoke-direct {p0, p2, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ILcom/duoku/platform/single/h/a/a;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/duoku/platform/single/h/a/g;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/g;-><init>()V

    const-string v1, "2014"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/g;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/duoku/platform/single/h/a/g;->a(Ljava/util/List;)V

    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ILcom/duoku/platform/single/h/a/a;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/duoku/platform/single/h/a/f;

    invoke-direct {v0}, Lcom/duoku/platform/single/h/a/f;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "15629291459"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/duoku/platform/single/h/a/f;->a(I)V

    new-instance v2, Lcom/duoku/platform/single/h/a/f$a;

    invoke-direct {v2}, Lcom/duoku/platform/single/h/a/f$a;-><init>()V

    iput v7, v2, Lcom/duoku/platform/single/h/a/f$a;->a:I

    const-string v3, "2015-03-16 00:00:00"

    iput-object v3, v2, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    const-string v3, "2015-03-16 18:03:83"

    iput-object v3, v2, Lcom/duoku/platform/single/h/a/f$a;->c:Ljava/lang/String;

    new-instance v3, Lcom/duoku/platform/single/h/a/f$a;

    invoke-direct {v3}, Lcom/duoku/platform/single/h/a/f$a;-><init>()V

    iput v8, v3, Lcom/duoku/platform/single/h/a/f$a;->a:I

    const-string v4, "2015-03-17 00:00:00"

    iput-object v4, v3, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    const-string v4, "2015-03-17 18:03:83"

    iput-object v4, v3, Lcom/duoku/platform/single/h/a/f$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/f;->a(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/duoku/platform/single/item/k;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/k;-><init>()V

    const-string v3, "1001"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->b(Ljava/lang/String;)V

    const-string v3, "\u518d\u6765\u4e00\u74f6"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Ljava/lang/String;)V

    const-string v3, "2015-12-30"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/duoku/platform/single/item/k;->a(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->b(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/duoku/platform/single/item/k;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/k;-><init>()V

    const-string v3, "1002"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->b(Ljava/lang/String;)V

    const-string v3, "\u6d88\u706d\u661f\u661f\u9a8c\u8bc1\u7801"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Ljava/lang/String;)V

    const-string v3, "2015-2-23"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/duoku/platform/single/item/k;->a(I)V

    invoke-virtual {v2, v7}, Lcom/duoku/platform/single/item/k;->b(I)V

    new-instance v3, Lcom/duoku/platform/single/item/p;

    invoke-direct {v3}, Lcom/duoku/platform/single/item/p;-><init>()V

    const-string v4, "sdfsafsadfsdfsdaf"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/String;)V

    const-string v4, "\u60a8\u83b7\u5f97\u7684\u9a8c\u8bc1\u7801\u662f"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->c(Ljava/lang/String;)V

    const-string v4, "wawawaawawawaawa"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->f(Ljava/lang/String;)V

    const-string v4, "hahahhahahahahahh"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->d(Ljava/lang/String;)V

    const-string v4, "doodododo"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->g(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Lcom/duoku/platform/single/item/p;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/duoku/platform/single/item/k;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/k;-><init>()V

    const-string v3, "1003"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->b(Ljava/lang/String;)V

    const-string v3, "\u53c8\u6765\u4e00\u74f6"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Ljava/lang/String;)V

    const-string v3, "2013-12-14"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/duoku/platform/single/item/k;->a(I)V

    invoke-virtual {v2, v8}, Lcom/duoku/platform/single/item/k;->b(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/duoku/platform/single/item/k;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/k;-><init>()V

    const-string v3, "1004"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->b(Ljava/lang/String;)V

    const-string v3, "\u6e38\u620f\u6fc0\u6d3b\u7801"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Ljava/lang/String;)V

    const-string v3, "2013-12-14"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/duoku/platform/single/item/k;->a(I)V

    invoke-virtual {v2, v8}, Lcom/duoku/platform/single/item/k;->b(I)V

    new-instance v3, Lcom/duoku/platform/single/item/p;

    invoke-direct {v3}, Lcom/duoku/platform/single/item/p;-><init>()V

    const-string v4, "sdfsafsadfsdfsdaf"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/String;)V

    const-string v4, "\u60a8\u83b7\u5f97\u7684\u6e38\u620f\u5185\u5151\u6362\u7801\u662f"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->c(Ljava/lang/String;)V

    const-string v4, "wawawaawawawaawa"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->f(Ljava/lang/String;)V

    const-string v4, "hahahhahahahahahh"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->d(Ljava/lang/String;)V

    const-string v4, "doodododo"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->g(Ljava/lang/String;)V

    new-instance v4, Lcom/duoku/platform/single/item/i;

    invoke-direct {v4}, Lcom/duoku/platform/single/item/i;-><init>()V

    const-string v4, "\u6211\u53bb"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/single/item/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/k;->a(Lcom/duoku/platform/single/item/p;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/h/a/f;->b(Ljava/util/List;)V

    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ILcom/duoku/platform/single/h/a/a;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n()Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, p1, p2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p4

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dk_dialog_draw_container1"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dk_dialog_draw_container2"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;)Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "btnContainer"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "dk_draw_pannel_recommendbuttons"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_btn1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dk_dialog_btn2"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "dk_dialog_btn1"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dk_dialog_btn2"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;->a(Ljava/util/Map;)V

    new-instance v2, Lcom/duoku/platform/single/ui/I;

    invoke-direct {v2, p0, p5, p3}, Lcom/duoku/platform/single/ui/I;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoku/platform/single/ui/d;

    invoke-direct {v0, p0, p5, p3}, Lcom/duoku/platform/single/ui/d;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;Z)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    aget-object v3, p4, v0

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public a(ZLjava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v1, "dkMainHeadTxt"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v2, "dk_draw_historyrecord_btn"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dkMainHeadClose"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/duoku/platform/single/ui/E;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/ui/E;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v0, Lcom/duoku/platform/single/ui/F;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/single/ui/F;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dkMainHeadTxt"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v2, "dk_draw_historyrecord_btn"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dkMainHeadClose"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public b()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n()Landroid/widget/RelativeLayout;

    const-string v0, "\u62bd\u5956\u8be6\u60c5"

    invoke-virtual {p0, v6, v0, v6}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "dk_draw_title_iv"

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dk_draw_title_main_tv"

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v2, "dk_dialog_draw_container1"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    const-string v0, "dk_draw_title_iv"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "dk_draw_icon_pleased"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "dk_draw_title_main_tv"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u624b\u6c14\u771f\u8d5e,\u83b7\u5f97%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "\u8f93\u5165\u624b\u673a\u53f7\u3001\u9a8c\u8bc1\u7801\u53bb\u9886\u53d6"

    invoke-direct {p0, v0, v8, v1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v7}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->c(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "btnContainer"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v0, "dk_dialog_et_phone"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "dk_dialog_et_verifycode"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "dk_dialog_btn_getverify"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/duoku/platform/single/draw/c;

    invoke-direct {v4, p0}, Lcom/duoku/platform/single/draw/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/duoku/platform/single/draw/c;->a(Landroid/widget/Button;)Lcom/duoku/platform/single/draw/c;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->v:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/duoku/platform/single/draw/c;->a(Landroid/os/Handler;)Lcom/duoku/platform/single/draw/c;

    move-result-object v4

    iput-object v4, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->z:Lcom/duoku/platform/single/draw/c;

    sput-boolean v6, Lcom/duoku/platform/single/draw/c;->b:Z

    new-instance v4, Lcom/duoku/platform/single/ui/k;

    invoke-direct {v4, p0, v0}, Lcom/duoku/platform/single/ui/k;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "dk_dialog_tv_drawtype_tip"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "dk_dialog_cleartext_iv"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Lcom/duoku/platform/single/ui/l;

    invoke-direct {v3, p0, v0}, Lcom/duoku/platform/single/ui/l;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/duoku/platform/single/ui/m;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/single/ui/m;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v3, "dk_dialog_btn1"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v4, "dk_dialog_btn2"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/duoku/platform/single/ui/o;

    invoke-direct {v4, p0}, Lcom/duoku/platform/single/ui/o;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/duoku/platform/single/ui/p;

    invoke-direct {v2, p0, v0, v1}, Lcom/duoku/platform/single/ui/p;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Lcom/duoku/platform/single/h/a/f;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Lcom/duoku/platform/single/h/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6728\u6709\u62bd\u5956\u673a\u4f1a\u4e86,\n\u8fc7\u6bb5\u65f6\u95f4\u518d\u6765\u5427\uff01"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u8d2d\u4e70\u6e38\u620f\u9053\u5177\u53ef\u4ee5\u589e\u52a0\u62bd\u5956\u673a\u4f1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\u62bd\u5956\u8be6\u60c5"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "dk_draw_title_iv"

    aput-object v0, v4, v8

    const-string v0, "dk_draw_title_main_tv"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v5, "dk_draw_group_alert"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "dk_draw_alert_line1_tv"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "dk_draw_alert_line2_tv"

    aput-object v5, v4, v0

    new-instance v5, Lcom/duoku/platform/single/ui/H;

    invoke-direct {v5, p0, v3, v6, v7}, Lcom/duoku/platform/single/ui/H;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;)V

    return-void

    :cond_0
    const-string v0, "\u5269\u4f59\u62bd\u5956\u6b21\u6570:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "\u4e0b\u6b21\u62bd\u5956\u65f6\u95f4"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n:Lcom/duoku/platform/single/h/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public b(Lcom/duoku/platform/single/item/p;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->n()Landroid/widget/RelativeLayout;

    const-string v0, "\u62bd\u5956\u8be6\u60c5"

    invoke-virtual {p0, v2, v0, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v7}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->d(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v0, "dk_dialog_tv_sendphone_tip"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "dk_dialog_phone_linear"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dk_dialog_phone_tv_value"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v4, "dk_dialog_baiduid_linear"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "dk_dialog_baiduid_tv_value"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_tv_userinfo_tip"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    move v1, v3

    :goto_2
    const/4 v0, 0x5

    if-le v1, v0, :cond_4

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;)Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "btnContainer"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v3, "dk_draw_pannel_recommendbuttons"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_btn1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v2, "dk_dialog_btn2"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/ui/t;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/ui/t;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoku/platform/single/ui/u;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/ui/u;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v1, "dk_dialog_phone_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v4, "dk_dialog_baiduid_linear"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    const-string v4, "dk_dialog_tv_drawsuccess_tip"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dk_dialog_tv_value"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcom/duoku/platform/single/item/p;->a(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->j:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public b(Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o()Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p4

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dk_dialog_draw_container1"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Landroid/widget/LinearLayout;Ljava/util/Map;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dk_dialog_draw_container2"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(Landroid/widget/LinearLayout;)Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "btnContainer"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "dk_draw_pannel_recommendbuttons"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v1, "dk_dialog_btn1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dk_dialog_btn2"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "dk_dialog_btn1"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dk_dialog_btn2"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;->a(Ljava/util/Map;)V

    new-instance v2, Lcom/duoku/platform/single/ui/e;

    invoke-direct {v2, p0, p5, p3}, Lcom/duoku/platform/single/ui/e;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoku/platform/single/ui/f;

    invoke-direct {v0, p0, p5, p3}, Lcom/duoku/platform/single/ui/f;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;Z)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e()V

    return-void

    :cond_1
    aget-object v3, p4, v0

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->x:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->dismiss()V

    :cond_0
    return-void
.end method

.method public c(Lcom/duoku/platform/single/h/a/f;)V
    .locals 6

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "\u4e2d\u5956\u8bb0\u5f55"

    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "dk_draw_title_iv"

    aput-object v0, v4, v2

    const-string v0, "dk_draw_title_main_tv"

    aput-object v0, v4, v3

    new-instance v5, Lcom/duoku/platform/single/ui/g;

    invoke-direct {v5, p0}, Lcom/duoku/platform/single/ui/g;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->b(Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o()Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    new-instance v1, Lcom/duoku/platform/single/ui/h;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/h;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "\u4e2d\u5956\u8bb0\u5f55"

    invoke-virtual {p0, v3, v0, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v1, "dk_dialog_draw_container1"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v1, "dk_dialog_draw_container2"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dk_dialog_draw_foot_wrap"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "btnContainer"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5171"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6761\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x19

    const/16 v4, 0xf

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/duoku/platform/single/a/a;

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/single/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o:Lcom/duoku/platform/single/a/a;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v3, "dk_draw_pannel_listview"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/view/PullToRefreshListView;

    iput-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o:Lcom/duoku/platform/single/a/a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/PullToRefreshListView;->d()V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->o:Lcom/duoku/platform/single/a/a;

    new-instance v1, Lcom/duoku/platform/single/ui/i;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/single/ui/i;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/h/a/f;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/a/a;->a(Lcom/duoku/platform/single/a/a$b;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->H:Lcom/duoku/platform/single/view/PullToRefreshListView;

    new-instance v1, Lcom/duoku/platform/single/ui/j;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/ui/j;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/view/PullToRefreshListView;->a(Lcom/duoku/platform/single/view/PullToRefreshListView$a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->e()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->D:Landroid/app/Dialog;

    const-string v3, "dk_dialog_draw_foot_wrap"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(Lcom/duoku/platform/single/h/a/f;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v3, "00:01"

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "23:59"

    invoke-virtual {p1}, Lcom/duoku/platform/single/h/a/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/h/a/f$a;

    iget-object v0, v0, Lcom/duoku/platform/single/h/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->e(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->l:Z

    const-string v0, "isShow"

    invoke-virtual {p0, v0, v2}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->C:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
