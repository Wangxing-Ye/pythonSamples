.class public Lcom/duoku/platform/single/j/c/f;
.super Lcom/duoku/platform/single/j/c/b;


# instance fields
.field private A:Landroid/widget/TableLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/LinearLayout;

.field private I:Lcom/duoku/platform/single/item/GamePropsInfo;

.field private J:Lcom/duoku/platform/single/item/DKCMMdoData;

.field private K:Lcom/duoku/platform/single/item/DKCMMMData;

.field private L:Lcom/duoku/platform/single/item/DKCMYBKData;

.field private M:Lcom/duoku/platform/single/i/c;

.field private N:Lcom/duoku/platform/single/j/a/a;

.field private O:Lcom/duoku/platform/single/ui/DKContainerActivity;

.field private P:Z

.field private Q:Lcom/duoku/platform/single/util/H;

.field private R:Lcom/duoku/platform/single/item/DKCMGBData;

.field private S:Z

.field d:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/ViewStub;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/PopupWindow;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/c/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->P:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->Q:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->S:Z

    check-cast p1, Lcom/duoku/platform/single/ui/DKContainerActivity;

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/f;->O:Lcom/duoku/platform/single/ui/DKContainerActivity;

    iput-boolean p2, p0, Lcom/duoku/platform/single/j/c/f;->P:Z

    sput-object p0, Lcom/duoku/platform/single/util/j;->b:Lcom/duoku/platform/single/j/c/f;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/c/f;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/f;->r:Landroid/widget/PopupWindow;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/j/c/f;->d(Z)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->e()V

    sget v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string v0, "dkPayThirdPart"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->l:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->l:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v0, "dkTxtGoodsName"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->m:Landroid/widget/TextView;

    const-string v0, "dkTxtGoodsPrice"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "dkTxtRecentPaymethod"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->v:Landroid/widget/TextView;

    const-string v0, "dkTxtOtherPaymethod"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->w:Landroid/widget/TextView;

    const-string v0, "pay_recent_linearlayout"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->x:Landroid/widget/LinearLayout;

    const-string v0, "pay_other_linearlayout"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->y:Landroid/widget/LinearLayout;

    const-string v0, "pay_recent_tablelayout"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->z:Landroid/widget/TableLayout;

    const-string v0, "pay_other_tablelayout"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->A:Landroid/widget/TableLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->w:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->y:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->x:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->y:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v3, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "include_id"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "pay_other_"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_icon"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "channel_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v6, "item_img"

    invoke-static {v1, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v6, "item_name"

    invoke-static {v2, v6}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v5, "item_main"

    invoke-static {v2, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/duoku/platform/single/util/R;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "tencentmm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v4, "pay_other_tencentmm_icon_unable"

    invoke-static {v0, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setClickable(Z)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Landroid/widget/TableLayout;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/TableLayout;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x2

    sget v1, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v1, :cond_5

    const/4 v0, 0x3

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v2

    move v3, v0

    :goto_1
    move v7, v6

    :goto_2
    if-lt v7, v3, :cond_1

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    new-instance v8, Landroid/widget/TableRow;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int v1, v7, v2

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_2

    move v4, v2

    :goto_3
    move v5, v6

    :goto_4
    if-lt v5, v4, :cond_3

    invoke-virtual {p2, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int v1, v7, v2

    sub-int/2addr v0, v1

    move v4, v0

    goto :goto_3

    :cond_3
    mul-int v0, v7, v2

    add-int/2addr v0, v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v9, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v10, "dk_new_payment_item"

    invoke-static {v9, v10}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pay_other_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_icon"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "channel_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v12, "item_img"

    invoke-static {v1, v12}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v10, "item_name"

    invoke-static {v1, v10}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v10, "item_main"

    invoke-static {v1, v10}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_4

    :cond_5
    move v2, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v1, "share_last_thirdpay_success"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/duoku/platform/single/j/c/f;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->r:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/j/c/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/j/c/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/single/j/c/f;)Lcom/duoku/platform/single/item/GamePropsInfo;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/j/c/f;)Lcom/duoku/platform/single/j/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    return-object v0
.end method

.method private w()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->Q:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DKPaycenterMainView viewType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const-string v0, "dkMainViewLayout"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->e()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->d()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->k:Lcom/duoku/platform/single/d/d;

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "order"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "channel_view_value"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/d/d;->k:Lcom/duoku/platform/single/d/d;

    sget-object v4, Lcom/duoku/platform/single/d/c;->t:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->j:Lcom/duoku/platform/single/d/d;

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "order"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "channel_view_value"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/d/d;->j:Lcom/duoku/platform/single/d/d;

    sget-object v4, Lcom/duoku/platform/single/d/c;->s:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    const-string v2, "share_last_thirdpay_success"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alipay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->e:Lcom/duoku/platform/single/d/c;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const-string v2, "quickpay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->P:Z

    if-nez v0, :cond_5

    const-string v0, ""

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "cp_to_duoku_data"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "channel_view_value"

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->i:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "tencentmm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "tencentmm"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->u:Lcom/duoku/platform/single/d/c;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/j;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/j;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->d()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "yeepay"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "yeepay"

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/single/util/R;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "tencentmm"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "tencentmm"

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->b(Z)V

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/duoku/platform/single/e/k;->a:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_a

    const-string v0, "yeepay"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "yeepay"

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct {p0, v2}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_a
    aget-object v1, v3, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    invoke-direct {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v1, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v1, Lcom/duoku/platform/single/d/d;->c:Lcom/duoku/platform/single/d/d;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v1, Lcom/duoku/platform/single/d/d;->d:Lcom/duoku/platform/single/d/d;

    if-ne v0, v1, :cond_10

    :cond_d
    const-string v0, "mdo"

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "mdo"

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/f;->y()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/f;->x()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v1, Lcom/duoku/platform/single/d/d;->l:Lcom/duoku/platform/single/d/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/j/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/f;->x()V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/duoku/platform/single/j/c/f;->c(Z)V

    :cond_0
    const-string v0, "dkPaySMSTip"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->l:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->l:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v0, "dkTxtGoodsName"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->m:Landroid/widget/TextView;

    const-string v0, "dkTxtGameName"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->n:Landroid/widget/TextView;

    const-string v0, "dkTxtGoodsPrice"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    const-string v0, "dkTxtWarning"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->p:Landroid/widget/TextView;

    const-string v0, "dkBtnConfirmPay"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "dk_pay_dropdown"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v2, "new_bg_popup1"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/J;->g(Landroid/content/Context;)Lcom/duoku/platform/single/util/J$a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/util/J$a;->a:Lcom/duoku/platform/single/util/J$a;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_iv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v2, "pay_sms_cm_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_tv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v3, "dk_payment_sms_cm"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_arrow_iv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/duoku/platform/single/j/c/g;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/c/g;-><init>(Lcom/duoku/platform/single/j/c/f;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    new-instance v2, Lcom/duoku/platform/single/j/c/h;

    invoke-direct {v2, p0, v0}, Lcom/duoku/platform/single/j/c/h;-><init>(Lcom/duoku/platform/single/j/c/f;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->c:Lcom/duoku/platform/single/util/J$a;

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_iv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v2, "pay_sms_ct_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_tv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v3, "dk_payment_sms_ct"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/duoku/platform/single/util/J$a;->b:Lcom/duoku/platform/single/util/J$a;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_iv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v2, "pay_sms_cu_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->q:Landroid/view/View;

    const-string v1, "dropdown_tv"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v3, "dk_payment_sms_cu"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private y()V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/duoku/platform/single/j/c/f;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v1, "dk_pay_dialog_pane"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v1, "dk_dialog_tv_main"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "     \u60a8\u5c06\u8d2d\u4e70    \"%s\"  %s,\u4fe1\u606f\u8d39%s\u5143,\u9700\u8981\u53d1\u9001\u4e00\u6761\u77ed\u4fe1%s\u5143/\u6761(\u4e0d\u542b\u901a\u4fe1\u8d39),\u662f\u5426\u786e\u8ba4\uff1f"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v3}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v1, "dk_dialog_btn1"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v1, "dk_dialog_btn2"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private z()V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8f7d\u5165,\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/g/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getQuickpayBindinglist"

    const/16 v3, 0x87

    new-instance v4, Lcom/duoku/platform/single/j/c/j;

    invoke-direct {v4, p0}, Lcom/duoku/platform/single/j/c/j;-><init>(Lcom/duoku/platform/single/j/c/f;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/d/c;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/d/c;->q:Lcom/duoku/platform/single/d/c;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/d/c;->r:Lcom/duoku/platform/single/d/c;

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cp_to_duoku_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "cm_mdo_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->J:Lcom/duoku/platform/single/item/DKCMMdoData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "cm_mm_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->K:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "cm_gb_data"

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->R:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v1, Lcom/duoku/platform/single/j/a/a;

    invoke-direct {v1}, Lcom/duoku/platform/single/j/a/a;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->e()Lcom/duoku/platform/single/item/DKCMMdoData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMdoData;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->f()Lcom/duoku/platform/single/item/DKCMMMData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/item/DKCMMMData;)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Z)V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v2}, Lcom/duoku/platform/single/j/a/a;->c()Lcom/duoku/platform/single/k/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/k/n;)V

    sget-object v2, Lcom/duoku/platform/single/d/c;->q:Lcom/duoku/platform/single/d/c;

    if-ne v2, p1, :cond_2

    new-instance v1, Lcom/duoku/platform/single/d/a/k;

    invoke-direct {v1}, Lcom/duoku/platform/single/d/a/k;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v1

    const-string v2, "channel_view_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/duoku/platform/single/d/c;->r:Lcom/duoku/platform/single/d/c;

    if-ne v2, p1, :cond_1

    sget-object v2, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/j/a/a;->a(Lcom/duoku/platform/single/d/d;)V

    const-string v2, "channel_view_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/GamePropsInfo;)V
    .locals 3

    new-instance v0, Lcom/duoku/platform/single/i/c;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getUserdata()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/duoku/platform/single/i/c;->k:J

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Landroid/content/Intent;

    const-string v0, "cp_to_duoku_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/GamePropsInfo;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    const-string v0, "cm_mdo_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/DKCMMdoData;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->J:Lcom/duoku/platform/single/item/DKCMMdoData;

    const-string v0, "cm_mm_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/DKCMMMData;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->K:Lcom/duoku/platform/single/item/DKCMMMData;

    const-string v0, "cm_gb_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/DKCMGBData;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->R:Lcom/duoku/platform/single/item/DKCMGBData;

    const-string v0, "cm_ybk_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/DKCMYBKData;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->L:Lcom/duoku/platform/single/item/DKCMYBKData;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/f;->a(Lcom/duoku/platform/single/item/GamePropsInfo;)V

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->P:Z

    if-eqz v0, :cond_0

    const-string v0, "channel_view_value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/j/a/a;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/a/a;->a()Lcom/duoku/platform/single/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    const-string v2, "dk_new_main_payview"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->f:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/f;->w()V

    return-void

    :cond_0
    new-instance v0, Lcom/duoku/platform/single/d/a/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/d/a/k;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPropsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/single/item/GamePropsInfo;->getPrice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->J:Lcom/duoku/platform/single/item/DKCMMdoData;

    iget-object v4, p0, Lcom/duoku/platform/single/j/c/f;->K:Lcom/duoku/platform/single/item/DKCMMMData;

    iget-object v5, p0, Lcom/duoku/platform/single/j/c/f;->R:Lcom/duoku/platform/single/item/DKCMGBData;

    iget-object v6, p0, Lcom/duoku/platform/single/j/c/f;->L:Lcom/duoku/platform/single/item/DKCMYBKData;

    iget-object v7, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v7}, Lcom/duoku/platform/single/item/GamePropsInfo;->getThirdPay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/d/a/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/item/DKCMMdoData;Lcom/duoku/platform/single/item/DKCMMMData;Lcom/duoku/platform/single/item/DKCMGBData;Lcom/duoku/platform/single/item/DKCMYBKData;Ljava/lang/String;)Lcom/duoku/platform/single/j/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/d/d;->a:Lcom/duoku/platform/single/d/d;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    return-void
.end method

.method public b_()V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "tencentmm"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->u:Lcom/duoku/platform/single/d/c;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->e:Lcom/duoku/platform/single/d/c;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/j/c/f;->z()V

    return-void
.end method

.method public i()V
    .locals 5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8f7d\u5165,\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/e/b;->a(Landroid/content/Context;)Lcom/duoku/platform/single/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/e/b;->c()I

    move-result v0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/g/a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryRechargeCardList"

    const/16 v3, 0x92

    new-instance v4, Lcom/duoku/platform/single/j/c/i;

    invoke-direct {v4, p0}, Lcom/duoku/platform/single/j/c/i;-><init>(Lcom/duoku/platform/single/j/c/f;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->s:Landroid/widget/Button;

    if-ne v0, p1, :cond_6

    iget-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->S:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/single/j/c/f;->S:Z

    :cond_0
    new-instance v0, Lcom/duoku/platform/single/j/a/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/j/a/b;-><init>()V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/a/b;->a(Lcom/duoku/platform/single/i/c;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->N:Lcom/duoku/platform/single/j/a/a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/a/b;->a(Lcom/duoku/platform/single/j/a/a;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->d:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->c:Lcom/duoku/platform/single/d/d;

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->g:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->d:Lcom/duoku/platform/single/d/d;

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->f:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/d;->l:Lcom/duoku/platform/single/d/d;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u8d2d\u4e70,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v3, Lcom/duoku/platform/single/d/c;->v:Lcom/duoku/platform/single/d/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->t:Landroid/widget/LinearLayout;

    if-eq v0, p1, :cond_7

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_7
    const-string v1, "alipay"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->g()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "yeepay"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/d;->f:Lcom/duoku/platform/single/d/d;

    iget-object v2, p0, Lcom/duoku/platform/single/j/c/f;->I:Lcom/duoku/platform/single/item/GamePropsInfo;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "quickpay"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->h()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "tencentmm"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    const-string v1, "tencentmm"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/i/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->c()Lcom/duoku/platform/single/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/f;->e:Lcom/duoku/platform/single/d/d;

    sget-object v2, Lcom/duoku/platform/single/d/c;->u:Lcom/duoku/platform/single/d/c;

    iget-object v3, p0, Lcom/duoku/platform/single/j/c/f;->M:Lcom/duoku/platform/single/i/c;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "gamecard"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/f;->i()V

    goto/16 :goto_0
.end method
