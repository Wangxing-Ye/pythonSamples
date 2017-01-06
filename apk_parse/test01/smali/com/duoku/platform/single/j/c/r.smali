.class public Lcom/duoku/platform/single/j/c/r;
.super Lcom/duoku/platform/single/j/c/b;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static synthetic B:[I


# instance fields
.field private A:Lcom/duoku/platform/single/util/H;

.field private d:[I

.field private l:[I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Lcom/duoku/platform/single/item/GamePropsInfo;

.field private y:Lcom/duoku/platform/single/i/c;

.field private z:Lcom/duoku/platform/single/j/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/c/b;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->d:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->l:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->A:Lcom/duoku/platform/single/util/H;

    return-void

    nop

    :array_0
    .array-data 4
        0x11
        0xf
        0x13
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x13
        0x12
    .end array-data
.end method

.method private a(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeYidong"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "cu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeLiantong"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "ct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeDianxin"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/j/c/r;->B:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/util/J$a;->values()[Lcom/duoku/platform/single/util/J$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->a:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->c:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->b:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->e:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->d:Lcom/duoku/platform/single/util/J$a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/duoku/platform/single/j/c/r;->B:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v6}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->h:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/r;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/r;->e()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/r;->d()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeYidong"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeLiantong"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnCardRechargeDianxin"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "btnRecharge"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "tvRechargeTip"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "etCardNumber"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "etCardPassword"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "dk_payment_hint_yuan"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/J;->g(Landroid/content/Context;)Lcom/duoku/platform/single/util/J$a;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/j/c/r;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/J$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iput v5, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    :goto_0
    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->h()V

    return-void

    :pswitch_0
    iput v5, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/j;->e()Lcom/duoku/platform/single/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, v0, Lcom/duoku/platform/single/k/a;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/k/n;

    invoke-virtual {v0}, Lcom/duoku/platform/single/k/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-ge v0, v6, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_6

    const-string v0, "cm"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    if-ne v0, v6, :cond_4

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/j/c/r;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->w()V

    :cond_4
    :goto_2
    const-string v0, "cu"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/j/c/r;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->w()V

    :cond_5
    :goto_3
    const-string v0, "ct"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/j/c/r;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->w()V

    goto/16 :goto_0

    :cond_6
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    goto/16 :goto_0
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private w()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "tab_selected"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->d:[I

    aget v3, v3, v4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->l:[I

    aget v3, v3, v4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "tab_selected"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->d:[I

    aget v3, v3, v5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->l:[I

    aget v3, v3, v5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "tab_selected"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->d:[I

    aget v3, v3, v6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/r;->l:[I

    aget v3, v3, v6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private x()V
    .locals 5

    const/16 v4, 0x3e8

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "alert_card_num_cannot_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "alert_card_pwd_cannot_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/duoku/platform/single/j/c/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "dk_incorrect_type_of_card_num_or_pwd"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, "\u5145\u503c\u65f6\u95f4\u8f83\u957f\u8bf7\u8010\u5fc3\u7b49\u5019..."

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->y()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duoku/platform/single/i/c;->o:Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/r;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private y()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private z()V
    .locals 9

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/r;->p:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    iget-object v8, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->j:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/r;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->i()V

    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/j/c/r;->n:I

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/single/j/c/r;->o:I

    :cond_3
    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->w()V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/d/c;I)V
    .locals 5

    const/16 v4, 0x3e8

    sget-object v0, Lcom/duoku/platform/single/d/c;->k:Lcom/duoku/platform/single/d/c;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "dk_payment_yeepay_timeout"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/d/c;->h:Lcom/duoku/platform/single/d/c;

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "dk_payment_yeepay_net_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0xbc3

    sget-object v0, Lcom/duoku/platform/single/d/c;->i:Lcom/duoku/platform/single/d/c;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/duoku/platform/single/h/a/u;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errormessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->n()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/u;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/r;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->n()Z

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->z()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v3, "dk_payment_error_1001"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/duoku/platform/single/d/c;->k:Lcom/duoku/platform/single/d/c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/duoku/platform/single/h/a/q;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "errormessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderprice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v1}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v2, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_YEEPAY:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/duoku/platform/single/l/a;->a()Lcom/duoku/platform/single/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v0, Lcom/duoku/platform/single/util/a;->a:Lcom/duoku/platform/single/o/c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/duoku/platform/single/o/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/o/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/util/a;->a:Lcom/duoku/platform/single/o/c;

    :cond_5
    sget-object v0, Lcom/duoku/platform/single/util/a;->a:Lcom/duoku/platform/single/o/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/o/c;->a()Lcom/duoku/platform/single/o/c$a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/o/c$a;->d:Lcom/duoku/platform/single/o/c$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/o/c$a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/duoku/platform/single/util/a;->a:Lcom/duoku/platform/single/o/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/duoku/platform/single/g/a;->b(ILcom/duoku/platform/single/item/DKOrderInfoData;)Ljava/lang/String;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/GamePropsInfo;)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const-string v1, "yeepay"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->y:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "share_last_thirdpay"

    const-string v2, "yeepay"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    check-cast p1, Lcom/duoku/platform/single/item/GamePropsInfo;

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->x:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(Lcom/duoku/platform/single/item/GamePropsInfo;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "dk_payment_channel_rechargecard"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->g()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/r;->c()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->w:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/d/d;->f:Lcom/duoku/platform/single/d/d;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/r;->e:Lcom/duoku/platform/single/d/d;

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->e:Lcom/duoku/platform/single/d/d;

    sget-object v1, Lcom/duoku/platform/single/d/d;->f:Lcom/duoku/platform/single/d/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->s:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->t:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->u:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/r;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->v:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "dk_payment_error_2003"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/r;->x()V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/r;->g:Landroid/content/Context;

    const-string v2, "dk_payment_error_2003"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
