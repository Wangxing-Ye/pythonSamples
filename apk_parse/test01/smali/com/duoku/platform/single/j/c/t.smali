.class public Lcom/duoku/platform/single/j/c/t;
.super Lcom/duoku/platform/single/j/c/b;


# static fields
.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private l:Landroid/view/ViewStub;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/PopupWindow;

.field private s:Lcom/duoku/platform/single/item/GamePropsInfo;

.field private t:Lcom/duoku/platform/single/i/c;

.field private u:Lcom/duoku/platform/single/j/a/a;

.field private v:Lcom/duoku/platform/single/j/b/I;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Lcom/duoku/platform/single/util/H;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->x:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/c/t;->y:Z

    iput-boolean p2, p0, Lcom/duoku/platform/single/j/c/t;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/b/I;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->v:Lcom/duoku/platform/single/j/b/I;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/c/t;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/t;->r:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/d/d;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->e:Lcom/duoku/platform/single/d/d;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/item/GamePropsInfo;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/single/j/c/t;)Lcom/duoku/platform/single/j/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->u:Lcom/duoku/platform/single/j/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/j/c/t;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->r:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/single/j/c/t;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/t;->e()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/t;->d()V

    new-instance v0, Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/j/b/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/duoku/platform/single/j/b/I;

    invoke-direct {v1}, Lcom/duoku/platform/single/j/b/I;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->v:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->v:Lcom/duoku/platform/single/j/b/I;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/I;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/i/c;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/RelativeLayout;)V

    iget-boolean v1, p0, Lcom/duoku/platform/single/j/c/t;->y:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/t;->h()V

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/b/a;->b()V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/j/c/u;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/c/u;-><init>(Lcom/duoku/platform/single/j/c/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lcom/duoku/platform/single/j/c/t;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/duoku/platform/single/j/c/t;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->q:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x1

    sget v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/duoku/platform/single/j/c/t;->c(Z)V

    :cond_0
    const-string v0, "dkPaySMSTip"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->l:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->l:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v0, "dkBtnConfirmPay"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "dkTxtGoodsName"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->m:Landroid/widget/TextView;

    const-string v1, "dkTxtGameName"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->n:Landroid/widget/TextView;

    const-string v1, "dkTxtGoodsPrice"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->o:Landroid/widget/TextView;

    const-string v1, "dkTxtWarning"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/t;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v5}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const-string v1, "dk_pay_dropdown"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/t;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/j/c/t;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->q:Landroid/view/View;

    const-string v2, "dropdown_iv"

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->q:Landroid/view/View;

    const-string v2, "dropdown_tv"

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/j/c/t;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/duoku/platform/single/j/c/v;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/c/v;-><init>(Lcom/duoku/platform/single/j/c/t;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/t;->q:Landroid/view/View;

    new-instance v3, Lcom/duoku/platform/single/j/c/w;

    invoke-direct {v3, p0, v1, v0}, Lcom/duoku/platform/single/j/c/w;-><init>(Lcom/duoku/platform/single/j/c/t;Landroid/view/View$OnClickListener;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/item/GamePropsInfo;)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    const-string v1, "quickpay"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->t:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "share_last_thirdpay"

    const-string v2, "quickpay"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    check-cast p1, Landroid/content/Intent;

    const-string v0, "cp_to_duoku_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/GamePropsInfo;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    const-string v0, "channel_view_value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/j/a/a;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->u:Lcom/duoku/platform/single/j/a/a;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->s:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/t;->a(Lcom/duoku/platform/single/item/GamePropsInfo;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    const-string v2, "dk_new_main_payview"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->g:Landroid/content/Context;

    const-string v2, "hintContainer"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/c/t;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/t;->g()V

    return-void
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/d/d;->h:Lcom/duoku/platform/single/d/d;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/t;->e:Lcom/duoku/platform/single/d/d;

    return-void
.end method

.method public c_()Z
    .locals 2

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/c/t;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->v:Lcom/duoku/platform/single/j/b/I;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/b/I;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/t;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/t;->v:Lcom/duoku/platform/single/j/b/I;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/b/I;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
