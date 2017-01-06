.class public Lcom/duoku/platform/single/j/c/a;
.super Lcom/duoku/platform/single/j/c/b;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private d:[I

.field private l:[I

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/duoku/platform/single/item/GamePropsInfo;

.field private q:Lcom/duoku/platform/single/i/c;

.field private r:[Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:I

.field private u:I

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/c/b;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->d:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->l:[I

    iput v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    return-void
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

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v6}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "4"

    const-string v2, "JUNNET"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "5"

    const-string v2, "SNDACARD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "6"

    const-string v2, "NETEASE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "7"

    const-string v2, "ZHENGTU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "8"

    const-string v2, "SOHU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "9"

    const-string v2, "WANMEI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "10"

    const-string v2, "QQCARD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "11"

    const-string v2, "JIUYOU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "12"

    const-string v2, "TIANXIA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "13"

    const-string v2, "ZONGYOU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    const-string v1, "14"

    const-string v2, "TIANHONG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private h()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->e()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->d()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v1, "btnRecharge"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v1, "tvRechargeTip"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v1, "etCardNumber"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v1, "etCardPassword"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v4, "dk_payment_hint_yuan"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "btnGameCard"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "cardname"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    aget-object v0, v0, v1

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v2, "tab_selected"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->r:[Landroid/widget/Button;

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    aget-object v0, v0, v1

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget v0, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->m:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/a;->d:[I

    iget v4, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    aget v3, v3, v4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/a;->l:[I

    iget v4, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    aget v3, v3, v4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method

.method private w()V
    .locals 5

    const/16 v4, 0x3e8

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v3, "alert_card_num_cannot_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v3, "alert_card_pwd_cannot_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/duoku/platform/single/j/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->x()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duoku/platform/single/i/c;->o:Z

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

.method private y()V
    .locals 9

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/a;->m:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v7}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v8

    move v7, v2

    invoke-virtual/range {v0 .. v8}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->n:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/d/c;I)V
    .locals 5

    const/16 v4, 0x3e8

    sget-object v0, Lcom/duoku/platform/single/d/c;->o:Lcom/duoku/platform/single/d/c;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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
    sget-object v0, Lcom/duoku/platform/single/d/c;->l:Lcom/duoku/platform/single/d/c;

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

    sget-object v0, Lcom/duoku/platform/single/d/c;->m:Lcom/duoku/platform/single/d/c;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/duoku/platform/single/h/a/u;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/duoku/platform/single/util/N;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/a;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/i/c;->n()Z

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->y()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v3, "dk_payment_error_1001"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/T;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/duoku/platform/single/d/c;->o:Lcom/duoku/platform/single/d/c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/duoku/platform/single/h/a/q;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

    const-string v2, "orderprice:"

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

    sget-object v2, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_GAMECARD:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

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

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/l/a;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v0, Lcom/duoku/platform/single/util/a;->a:Lcom/duoku/platform/single/o/c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/duoku/platform/single/o/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

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

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/h;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/h;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/e/h;->b(Lcom/duoku/platform/single/i/c;)V

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

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

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v1, "gamecard"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "share_last_thirdpay"

    const-string v2, "gamecard"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    check-cast p1, Lcom/duoku/platform/single/item/GamePropsInfo;

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->p:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/a;->a(Lcom/duoku/platform/single/item/GamePropsInfo;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/b;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/e/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v2, "dk_payment_channel_gamecard"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->g()V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->h()V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->i()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->a_()V

    return-void
.end method

.method public a_()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->v:Ljava/util/Map;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->w:Ljava/util/List;

    iget v2, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->q:Lcom/duoku/platform/single/i/c;

    const-string v1, "gamecard"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/d/d;->g:Lcom/duoku/platform/single/d/d;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/a;->e:Lcom/duoku/platform/single/d/d;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->s:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    const-string v2, "dk_payment_error_2003"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/util/T;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->w()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    iget v2, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    iput v1, p0, Lcom/duoku/platform/single/j/c/a;->u:I

    iput v0, p0, Lcom/duoku/platform/single/j/c/a;->t:I

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/a;->i()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/a;->a_()V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/a;->g:Landroid/content/Context;

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
