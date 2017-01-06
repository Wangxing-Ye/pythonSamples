.class public Lcom/duoku/platform/single/view/h;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/content/SharedPreferences;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/duoku/platform/single/item/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/duoku/platform/single/item/f;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/duoku/platform/single/view/h;->k:Z

    iput-object p1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/duoku/platform/single/view/h;->k:Z

    iput-object p2, p0, Lcom/duoku/platform/single/view/h;->l:Lcom/duoku/platform/single/item/f;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p2}, Lcom/duoku/platform/single/view/h;->a(Lcom/duoku/platform/single/item/f;)V

    return-void
.end method

.method private f(Lcom/duoku/platform/single/item/f;)Lcom/duoku/platform/single/item/i;
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/item/i;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->b(I)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 11

    const/16 v10, 0x23a

    const/16 v9, 0x1e0

    const/16 v8, 0x190

    const/16 v7, 0x10e

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/duoku/platform/single/view/h;->k:Z

    if-eqz v3, :cond_3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/16 v4, 0x320

    if-ne v3, v4, :cond_1

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-ne v3, v9, :cond_2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v3, 0x4ac

    if-ne v0, v3, :cond_0

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-ne v3, v9, :cond_4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/16 v4, 0x140

    if-ne v3, v4, :cond_5

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v3, 0x2d0

    if-ne v0, v3, :cond_0

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/f;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/h;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "dk_notice_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "tv_notice_des"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "iv_notice_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "iv_notice_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/h;->f(Lcom/duoku/platform/single/item/f;)Lcom/duoku/platform/single/item/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/h;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/h;->b(Lcom/duoku/platform/single/item/f;)V

    return-void
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

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?i)http://[^\u4e00-\u9fa5]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(Lcom/duoku/platform/single/item/f;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/h;->c(Lcom/duoku/platform/single/item/f;)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/h;->d(Lcom/duoku/platform/single/item/f;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/h;->c(Lcom/duoku/platform/single/item/f;)V

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/view/h;->e(Lcom/duoku/platform/single/item/f;)V

    goto :goto_0
.end method

.method public c(Lcom/duoku/platform/single/item/f;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/view/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/single/view/h;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/duoku/platform/single/view/h;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->a()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->show()V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "notice_show"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public d(Lcom/duoku/platform/single/item/f;)V
    .locals 2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/view/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e(Lcom/duoku/platform/single/item/f;)V
    .locals 3

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "notice_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "tv_notice_des"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "notice_pv"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "iv_notice_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->b()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    const-string v2, "iv_notice_icon"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->l:Lcom/duoku/platform/single/item/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/f;->m()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/view/i;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/view/i;-><init>(Lcom/duoku/platform/single/view/h;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/single/item/i;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/duoku/platform/single/item/i;

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

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

    sget v7, Lcom/duoku/platform/single/util/a;->iU:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/view/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->b()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "notice_pv"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/single/view/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->b()V

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/duoku/platform/single/view/h;->a()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
