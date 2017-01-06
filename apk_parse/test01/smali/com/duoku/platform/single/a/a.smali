.class public Lcom/duoku/platform/single/a/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/a/a$a;,
        Lcom/duoku/platform/single/a/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/duoku/platform/single/a/a$b;

.field private d:Lcom/duoku/platform/single/util/H;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-class v0, Lcom/duoku/platform/single/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/a/a;->d:Lcom/duoku/platform/single/util/H;

    iput-object p1, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoku/platform/single/a/a;->e:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/a/a;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/a/a;)Lcom/duoku/platform/single/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->c:Lcom/duoku/platform/single/a/a$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/a/a;->c:Lcom/duoku/platform/single/a/a$b;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/duoku/platform/single/a/a$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/a/a$a;-><init>(Lcom/duoku/platform/single/a/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v3, "dk_draw_historyrecord_listitem"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v2, "id_tv_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/a/a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v2, "id_tv_validtime"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/single/a/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v2, "id_btn_exe"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/a/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/k;

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->d()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5931\u6548\u671f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->d()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_2
    iget-object v1, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/a/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/duoku/platform/single/a/b;-><init>(Lcom/duoku/platform/single/a/a;ILcom/duoku/platform/single/item/k;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/a/a$a;

    const-string v1, "adapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertView id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6709\u6548\u671f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9886\u5956\u65f6\u95f4:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/duoku/platform/single/item/k;->a()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "\u9886\u53d6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "#f88a21"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v4, "dk_draw_historyrecord_btn_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "\u67e5\u770b"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "#448bdc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v4, "dk_draw_historyrecord_btn_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "\u67e5\u770b"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    const-string v3, "#448bdc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v4, "dk_draw_historyrecord_btn_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/duoku/platform/single/a/a$a;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/single/a/a;->a:Landroid/content/Context;

    const-string v4, "dk_draw_icon_timepassed"

    invoke-static {v3, v4}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
