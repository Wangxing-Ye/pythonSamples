.class public Lcom/duoku/platform/single/j/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/j/b/a$a;,
        Lcom/duoku/platform/single/j/b/a$b;,
        Lcom/duoku/platform/single/j/b/a$c;,
        Lcom/duoku/platform/single/j/b/a$d;,
        Lcom/duoku/platform/single/j/b/a$e;,
        Lcom/duoku/platform/single/j/b/a$f;,
        Lcom/duoku/platform/single/j/b/a$g;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String; = "DKCreditPayView"

.field private static final T:Ljava/lang/String; = "card_bind"

.field private static final U:Ljava/lang/String; = "credit_input"

.field private static final V:Ljava/lang/String; = "debit_input"

.field private static final W:Ljava/lang/String; = "card_number_input"

.field private static final Y:I = 0x0

.field private static final Z:I = 0x3

.field public static final a:Ljava/lang/String; = "bindid"

.field private static final aa:I = 0x2

.field private static final ab:I = 0x3c

.field public static final b:Ljava/lang/String; = "bankname"

.field public static final c:Ljava/lang/String; = "lastnum"

.field public static final d:Ljava/lang/String; = "paytype"

.field public static final e:Ljava/lang/String; = "cardtype"

.field public static final f:Ljava/lang/String; = "display"

.field public static final g:I = 0x3


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/ListView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/EditText;

.field private J:Ljava/util/Timer;

.field private K:Lcom/duoku/platform/single/j/b/a$e;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/o;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/lang/String;

.field private ac:Lcom/duoku/platform/single/j/b/a$g;

.field private ad:Landroid/view/View$OnClickListener;

.field private ae:Landroid/view/View$OnClickListener;

.field private af:Landroid/view/View$OnClickListener;

.field private ag:Landroid/view/View$OnClickListener;

.field private ah:Lcom/duoku/platform/single/view/j;

.field public h:I

.field public i:Z

.field protected j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View;

.field private l:Landroid/app/Activity;

.field private m:Lcom/duoku/platform/single/j/b/I;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/os/Handler;

.field private p:Lcom/duoku/platform/single/i/c;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/duoku/platform/single/item/o;

.field private w:Landroid/app/Dialog;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duoku/platform/single/j/b/a;->h:I

    iput v0, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    iput v0, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    iput-object v1, p0, Lcom/duoku/platform/single/j/b/a;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/single/j/b/a;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/duoku/platform/single/j/b/a;->v:Lcom/duoku/platform/single/item/o;

    iput-boolean v2, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    iput-boolean v2, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->O:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->P:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->i:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v0, "TAG"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    new-instance v0, Lcom/duoku/platform/single/j/b/a$g;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/a$g;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ac:Lcom/duoku/platform/single/j/b/a$g;

    new-instance v0, Lcom/duoku/platform/single/j/b/b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/b;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ad:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/j/b/m;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/m;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ae:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/j/b/u;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/u;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->af:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/j/b/v;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/v;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ag:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/duoku/platform/single/j/b/w;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/w;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->j:Landroid/view/View$OnClickListener;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    return-void
.end method

.method static synthetic A(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->n()V

    return-void
.end method

.method static synthetic B(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/view/j;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    return-object v0
.end method

.method static synthetic C(Lcom/duoku/platform/single/j/b/a;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    return v0
.end method

.method static synthetic D(Lcom/duoku/platform/single/j/b/a;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    return v0
.end method

.method static synthetic E(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->s()V

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_edittext_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method private a(Lcom/duoku/platform/single/i/c;Z)V
    .locals 8

    const-string v5, ""

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p1, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p1, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p1, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p1, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/i/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/i/c;Z)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Lcom/duoku/platform/single/h/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Lcom/duoku/platform/single/h/h;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/duoku/platform/single/h/h;)V
    .locals 4

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/g/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getCardInfo"

    const/16 v3, 0x86

    invoke-interface {v1, v2, v3, v0, p2}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_tip_progress_pay_info"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/unbindQuickpayCard"

    const/16 v3, 0x85

    new-instance v4, Lcom/duoku/platform/single/j/b/a$c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/single/j/b/a$c;-><init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/b/a$c;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/i/c;Z)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->h()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/duoku/platform/single/j/b/a;->q:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/doCreditQuickpay"

    const/16 v3, 0x88

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->ac:Lcom/duoku/platform/single/j/b/a$g;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/i/c;Z)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->h()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/doBindingQuickpay"

    const/16 v3, 0x8a

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->ac:Lcom/duoku/platform/single/j/b/a$g;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/i/c;Z)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->h()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/duoku/platform/single/j/b/a;->q:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/doDebitQuickpay"

    const/16 v3, 0x89

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->ac:Lcom/duoku/platform/single/j/b/a$g;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    new-instance v1, Lcom/duoku/platform/single/j/b/p;

    invoke-direct {v1, p0, p2, p1}, Lcom/duoku/platform/single/j/b/p;-><init>(Lcom/duoku/platform/single/j/b/a;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Z)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/j;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_layout_dialog_bind"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_dialog_tv_tip_content"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_dialog_btn_cancel"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_dialog_linear_content"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/duoku/platform/single/j/b/a;->E:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    new-instance v1, Lcom/duoku/platform/single/j/b/g;

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/single/j/b/g;-><init>(Lcom/duoku/platform/single/j/b/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_dialog_view_divider"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->B:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->B:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->y()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->B:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/EditText;)Z
    .locals 5

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

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_bank_number"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_bank_number"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    return v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/single/j/b/a;->b(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/single/j/b/a;->b(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->t()V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v0, Lcom/duoku/platform/single/j/b/a$e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/a$e;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payment_credit_input"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    const-string v1, "credit_input"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_et_credit_number"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_et_credit_phone"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_et_credit_date"

    invoke-static {v2, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_et_credit_cvv2"

    invoke-static {v2, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v6, "dk_btn_credit_card_pay"

    invoke-static {v2, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v0, Lcom/duoku/platform/single/j/b/C;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/C;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/duoku/platform/single/j/b/c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/c;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/duoku/platform/single/j/b/d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/d;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/duoku/platform/single/j/b/a$b;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/single/j/b/a$b;-><init>(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "credit_input"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->j()V

    return-void
.end method

.method private b(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v6, p2, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_card_phone"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v6, p2, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_credit_phone_length"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/duoku/platform/single/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v6, p2, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_phonenum_rule_error"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, v6, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_credit_date"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, v6}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_credit_code"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, v6, p3}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_credit_date"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, v6}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_credit_code"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, v7, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_card_phone"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, v7, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_credit_phone_length"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/duoku/platform/single/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, v7, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_phonenum_rule_error"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v7, p2, p3, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_debit_name"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, v7, p3, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_debit_userid"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, v7, p3, p4}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_debit_userid"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_input_debig_password"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    invoke-virtual {p4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/duoku/platform/single/j/b/a;->a(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_editview_pay_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_toast_error_debit_password"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/single/j/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/j/b/a;->O:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v0, Lcom/duoku/platform/single/j/b/a$e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/a$e;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payment_debit_input"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    const-string v1, "debit_input"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_et_debit_number"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_et_debit_username"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_et_debit_userid"

    invoke-static {v2, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_et_debit_phone"

    invoke-static {v2, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v6, "dk_et_debit_password"

    invoke-static {v2, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v7, "dk_btn_debit_card_pay"

    invoke-static {v2, v7}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v0, Lcom/duoku/platform/single/j/b/e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/e;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/duoku/platform/single/j/b/f;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/f;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/duoku/platform/single/j/b/a$d;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/duoku/platform/single/j/b/a$d;-><init>(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "debit_input"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->j()V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/single/j/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/g/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/againGetVerifycode"

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/j/b/I;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/j/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/g/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryYibaoPay"

    const/16 v3, 0x83

    new-instance v4, Lcom/duoku/platform/single/j/b/a$f;

    invoke-direct {v4, p0}, Lcom/duoku/platform/single/j/b/a$f;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->l()V

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/single/j/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->k()V

    :goto_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->j()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->l()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_text_view_support_bank"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "tv_customer_number"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_layout_support_bank"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->F:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_btn_bank_manage"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->G:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_text_view_fangxin"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_text_view_credit_pay_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_tv_tip_select_content"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payemnt_dialog_cc"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->F:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->G:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->p()V

    return-void
.end method

.method private k()V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v0, Lcom/duoku/platform/single/j/b/a$e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/a$e;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_payment_credit_bind"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    const-string v1, "card_bind"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_layout_link_credit_card"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "bindid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/o;->a(Z)V

    iput v2, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    iput v2, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    :cond_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->x()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_btn_quickpay_dopay"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_layout_other_credit_card"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "card_bind"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/item/o;->a(Z)V

    iput v1, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    iput v1, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->w()V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payment_cardnumber_input"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    const-string v1, "card_number_input"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_et_card_number"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_btn_input_next_step"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/j/b/y;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/j/b/y;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v2, Lcom/duoku/platform/single/j/b/z;

    invoke-direct {v2, p0, v0}, Lcom/duoku/platform/single/j/b/z;-><init>(Lcom/duoku/platform/single/j/b/a;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "card_number_input"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->j()V

    return-void
.end method

.method static synthetic l(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->i()V

    return-void
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_tip_progress_pay_info"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/g/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getQuickpayBindinglist"

    const/16 v3, 0x87

    new-instance v4, Lcom/duoku/platform/single/j/b/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/single/j/b/a$a;-><init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/b/a$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method static synthetic m(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->q()V

    return-void
.end method

.method private n()V
    .locals 8

    const-string v0, "credit_input"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strCreditCardNum"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v2, "strCreditCardValidDate"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v3, "strCreditCardCvv2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strCreditBindPhone"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v5, "strCreditPayAmount"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v6, "strCreditVerifyCode"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "debit_input"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strDebitCardNum"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v2, "strDebitUserName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v3, "strDebitUserid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strDebitBindPhone"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v5, "strDebitPassword"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v6, "strDebitPayAmount"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v7, "strDebitVerifyCode"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "card_bind"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strBindBindId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v2, "strBindPayAmount"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v3, "strBindVerifyCode"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strBindBankName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v5, "strBindLastNumber"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v6, "strBindPayType"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v7, "intBindCardType"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method static synthetic n(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->u()V

    return-void
.end method

.method static synthetic o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->O:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/duoku/platform/single/j/b/a;->O:Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a$e;->a(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private p()V
    .locals 12

    const/4 v11, 0x0

    const-string v3, ""

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget v1, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget v4, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget v5, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget v6, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget v7, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->f()I

    move-result v7

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindBindId"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindPayAmount"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindVerifyCode"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindBankName"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindLastNumber"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "strBindPayType"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v8, "intBindCardType"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "bindid"

    invoke-virtual {v0, v8, v1}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "bankname"

    invoke-virtual {v0, v8, v4}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "lastnum"

    invoke-virtual {v0, v8, v5}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "paytype"

    invoke-virtual {v0, v8, v6}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "cardtype"

    invoke-virtual {v0, v8, v7}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v8, "display"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "******"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    iput-boolean v11, p0, Lcom/duoku/platform/single/j/b/a;->O:Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v8, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v9, "dk_tip_progress_pay_info"

    invoke-static {v8, v9}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Z)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic p(Lcom/duoku/platform/single/j/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    return v0
.end method

.method private q()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/o;->a(Z)V

    iput v2, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    iput v2, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    :cond_2
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->x()V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->y()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    const-string v2, "card_bind"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/b/I;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/I;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->t:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic q(Lcom/duoku/platform/single/j/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    return v0
.end method

.method static synthetic r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    return-object v0
.end method

.method private r()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "card_bind"

    iget-object v5, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strBindVerifyCode"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string v4, "credit_input"

    iget-object v5, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strCreditVerifyCode"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const-string v4, "debit_input"

    iget-object v5, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v4, "strDebitVerifyCode"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_tip_input_message"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    :goto_0
    return v0

    :cond_3
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "card_bind"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strBindVerifyCode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "credit_input"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strCreditVerifyCode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "debit_input"

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strDebitVerifyCode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/duoku/platform/single/j/b/a;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/j/b/a;->h:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_tip_typewrong_timeleft"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/duoku/platform/single/j/b/a;->h:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_editview_pay_wrong"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->v()V

    goto :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic s(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/j/b/a$e;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    return-object v0
.end method

.method private s()V
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v2, "\u89e3\u9664\u7ed1\u5b9a\u540e,\u60a8\u5c06\u65e0\u6cd5\u4f7f\u7528\u4e00\u952e\u652f\u4ed8"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    new-instance v6, Lcom/duoku/platform/single/j/b/h;

    invoke-direct {v6, p0, v0}, Lcom/duoku/platform/single/j/b/h;-><init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/c/k;)V

    const-string v8, "DKQuickpayView.showCreditUnBindConfirmDialog"

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/duoku/platform/single/j/c/k;

    return-void
.end method

.method static synthetic t(Lcom/duoku/platform/single/j/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method private t()V
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/util/j;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_layout_dialog_bind"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_dialog_iv_close"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_dialog_btn_cancel"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/duoku/platform/single/j/b/i;

    invoke-direct {v2, p0, v1}, Lcom/duoku/platform/single/j/b/i;-><init>(Lcom/duoku/platform/single/j/b/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_dialog_tv_tip_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u94f6\u884c\u652f\u6301\u5217\u8868"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_dialog_view_divider"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_dialog_tv_tip_content"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "[{\"name\":\"\u5de5\u5546\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u5efa\u8bbe\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u519c\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u4e2d\u56fd\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u5149\u5927\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u534e\u590f\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u5174\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":true},{\"name\":\"\u90ae\u653f\u50a8\u84c4\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4ea4\u901a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e2d\u4fe1\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6c11\u751f\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u62db\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6d66\u53d1\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6df1\u5733\u53d1\u5c55\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e0a\u6d77\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5317\u4eac\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e1c\u4e9a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5e7f\u53d1\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5e73\u5b89\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u957f\u6c99\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u627f\u5fb7\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6210\u90fd\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u91cd\u5e86\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u91cd\u5e86\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5927\u8fde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e1c\u8425\u5e02\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u9102\u5c14\u591a\u65af\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u798f\u5efa\u519c\u6751\u4fe1\u7528\u793e\",\"credit\":true,\"debit\":false},{\"name\":\"\u8d35\u9633\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5e7f\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5e7f\u5dde\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6e56\u5357\u7701\u519c\u6751\u4fe1\u7528\u793e\",\"credit\":true,\"debit\":false},{\"name\":\"\u5fbd\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6cb3\u5317\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u676d\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5e38\u719f\u519c\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6c5f\u82cf\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6c5f\u9634\u519c\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e5d\u6c5f\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5170\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u9f99\u6c5f\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5357\u660c\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5357\u4eac\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u9752\u6d77\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u9f50\u9c81\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e0a\u6d77\u519c\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e0a\u9976\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u987a\u5fb7\u519c\u5546\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u53f0\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5a01\u6d77\u5e02\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5eca\u574a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6e29\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u4e4c\u9c81\u6728\u9f50\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u65e0\u9521\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5b9c\u660c\u5e02\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u911e\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5434\u6c5f\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5c27\u90fd\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6d59\u6c5f\u7a20\u5dde\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6d59\u6c5f\u6cf0\u9686\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6d59\u6c5f\u6c11\u6cf0\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u8d63\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u91d1\u534e\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u6c5f\u82cf\u7701\u519c\u6751\u4fe1\u7528\u793e\u8054\u5408\u793e\",\"credit\":true,\"debit\":false},{\"name\":\"\u5c71\u897f\u5c27\u90fd\u519c\u6751\u5546\u4e1a\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u9526\u5dde\u94f6\u884c\",\"credit\":true,\"debit\":false},{\"name\":\"\u5b81\u590f\u94f6\u884c\",\"credit\":true,\"debit\":false}]"

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_dialog_list_view_bind_credit"

    invoke-static {v0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_payment_item_banklist_head"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "banklist_bg"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    new-instance v3, Lcom/duoku/platform/single/j/b/j;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/single/j/b/j;-><init>(Lcom/duoku/platform/single/j/b/a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/duoku/platform/single/j/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private u()V
    .locals 9

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "payment_dialog_style"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_layout_dialog_mobile"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_dialog_btn_pay"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_dialog_btn_cancel"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_dialog_iv_close"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_et_bind_mobile_message"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_dialog_btn_bind_message"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_dialog_tv_tip_code"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    const-string v3, "card_bind"

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/duoku/platform/single/j/b/a;->r:I

    iput v3, p0, Lcom/duoku/platform/single/j/b/a;->s:I

    iput-boolean v6, p0, Lcom/duoku/platform/single/j/b/a;->P:Z

    :cond_1
    iget-boolean v3, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->o()V

    :cond_2
    iget-boolean v3, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_color_9c9c9c"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v5, "dk_dialog_string_geting"

    invoke-static {v4, v5}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    :cond_3
    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_4

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v5, v7

    double-to-int v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setWidth(I)V

    :cond_4
    new-instance v3, Lcom/duoku/platform/single/j/b/k;

    invoke-direct {v3, p0}, Lcom/duoku/platform/single/j/b/k;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/duoku/platform/single/j/b/l;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/j/b/l;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->H:Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/j/b/n;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/j/b/n;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/duoku/platform/single/j/b/o;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/b/o;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_5
    return-void
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strBindVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strCreditVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->R:Ljava/util/HashMap;

    const-string v1, "strDebitVerifyCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    iput-boolean v3, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->v()V

    return-void
.end method

.method static synthetic w(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    return-object v0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method private x()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payment_item_credit_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    invoke-virtual {v0, v5}, Lcom/duoku/platform/single/item/o;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_item_tv_credit_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v6, "dk_item_ck_credit_bind"

    invoke-static {v2, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " , ********"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->a()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/duoku/platform/single/j/b/s;

    invoke-direct {v0, p0, v3, v2}, Lcom/duoku/platform/single/j/b/s;-><init>(Lcom/duoku/platform/single/j/b/a;ILandroid/widget/CheckBox;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0
.end method

.method private y()V
    .locals 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v4, v5

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_payment_item_dialog_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/o;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dk_item_dialog_tv_credit_name"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_item_dialog_tv_credit_number"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v7, "dk_item_ck_credit_bind"

    invoke-static {v3, v7}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/o;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/duoku/platform/single/j/b/t;

    invoke-direct {v1, p0, v0}, Lcom/duoku/platform/single/j/b/t;-><init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/item/o;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method static synthetic y(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->o()V

    return-void
.end method

.method static synthetic z(Lcom/duoku/platform/single/j/b/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->r()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;D)Landroid/app/Dialog;
    .locals 5

    new-instance v2, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "payment_dialog_style"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_payment_layout_dialog"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v1, "dk_tv_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v3, "dk_tv_dialog_tip_info"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v4, "dk_tip"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, p3

    double-to-int v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected a(IIILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;IIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p3, :sswitch_data_0

    const-string v0, "\u5361\u4fe1\u606f\u6709\u8bef,\u8bf7\u91cd\u65b0\u586b\u5199\u540e\u652f\u4ed8!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    goto :goto_0

    :sswitch_0
    const-string v0, "\u9a8c\u8bc1\u7801"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->I:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-interface {p5, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u8ba2\u5355\u5931\u8d25!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    if-eqz p5, :cond_4

    invoke-interface {p5, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u8ba2\u5355\u5931\u8d25!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "\u5361\u6821\u9a8c\u4fe1\u606f\u5931\u8d25,\u8bf7\u91cd\u65b0\u6838\u5bf9\u5361\u4fe1\u606f!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p4}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :sswitch_4
    const-string v0, "\u94f6\u884c\u5361\u4e0d\u652f\u6301,\u8bf7\u53c2\u7167\u652f\u6301\u94f6\u884c\u5361\u5217\u8868\u8fdb\u884c\u652f\u4ed8!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef,\u8bf7\u91cd\u65b0\u63d0\u4ea4!"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_3
        0x40e -> :sswitch_1
        0x927f1 -> :sswitch_5
        0x927f2 -> :sswitch_5
        0x927f5 -> :sswitch_4
        0x92834 -> :sswitch_0
        0xaae61 -> :sswitch_1
        0xaae62 -> :sswitch_2
        0xaae63 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_QUICKPAY:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/j/b/I;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->m:Lcom/duoku/platform/single/j/b/I;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    :goto_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/b/a;->i()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->L:Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->n:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    new-instance v0, Lcom/duoku/platform/single/j/b/a$e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/b/a$e;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    const-string v1, "card_bind"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    const-string v2, "dkBtnConfirmPay"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/single/j/b/x;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/b/x;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "card_bind"

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->X:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->J:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->J:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/duoku/platform/single/j/b/a;->J:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->dismiss()V

    iput-object v2, p0, Lcom/duoku/platform/single/j/b/a;->ah:Lcom/duoku/platform/single/view/j;

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->K:Lcom/duoku/platform/single/j/b/a$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iput-object v2, p0, Lcom/duoku/platform/single/j/b/a;->o:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    new-instance v0, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_QUICKPAY:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->p:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a;->l:Landroid/app/Activity;

    invoke-static {v1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    const-string v2, "share_last_thirdpay_success"

    const-string v3, "quickpay"

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v1

    const/16 v2, 0xbc2

    invoke-interface {v1, v2, v0}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->h()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/b/a;->f()V

    return-void
.end method

.method public f()V
    .locals 7

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    new-instance v4, Lcom/duoku/platform/single/j/b/q;

    invoke-direct {v4, p0, v0}, Lcom/duoku/platform/single/j/b/q;-><init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/c/k;)V

    new-instance v1, Lcom/duoku/platform/single/j/b/r;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/b/r;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/duoku/platform/single/j/c/k;->a(Landroid/view/View$OnClickListener;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const-string v2, "\u652f\u4ed8\u6210\u529f\u4e86,\u60a8\u5c06\u83b7\u5f97\u66f4\u591a\u6e38\u620f\u4f53\u9a8c,\u8d76\u5feb\u8fd4\u56de\u6e38\u620f\u5427\uff01"

    const-string v3, "\u8fd4\u56de\u6e38\u620f"

    const/4 v5, 0x0

    const-string v6, "DKQuickpayView.showSuccessDialog"

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->k:Landroid/view/View;

    return-object v0
.end method

.method protected h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/j/b/a;->w:Landroid/app/Dialog;

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/duoku/platform/single/j/b/a;->M:Z

    iput-boolean v1, p0, Lcom/duoku/platform/single/j/b/a;->N:Z

    :cond_0
    return-void
.end method
