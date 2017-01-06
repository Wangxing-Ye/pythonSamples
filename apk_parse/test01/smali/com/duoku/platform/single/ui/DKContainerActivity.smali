.class public Lcom/duoku/platform/single/ui/DKContainerActivity;
.super Lcom/duoku/platform/single/ui/DKBaseActivity;

# interfaces
.implements Lcom/duoku/platform/single/callback/b;
.implements Lcom/duoku/platform/single/d/a;


# static fields
.field private static final g:Ljava/lang/String; = "DKContainerActivity"

.field private static h:Lcom/duoku/platform/single/util/H;

.field private static synthetic k:[I


# instance fields
.field public a:I

.field private b:Lcom/duoku/platform/single/view/a;

.field private c:Z

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/duoku/platform/single/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/RelativeLayout;

.field private f:I

.field private i:Lcom/duoku/platform/single/view/j;

.field private j:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->c:Z

    return-void
.end method

.method private a(I)Lcom/duoku/platform/single/view/a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/duoku/platform/single/view/a;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic j()[I
    .locals 3

    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/duoku/platform/single/d/d;->values()[Lcom/duoku/platform/single/d/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/duoku/platform/single/d/d;->k:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/duoku/platform/single/d/d;->j:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/duoku/platform/single/d/d;->a:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/duoku/platform/single/d/d;->g:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/duoku/platform/single/d/d;->e:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/duoku/platform/single/d/d;->f:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/duoku/platform/single/d/d;->b:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/duoku/platform/single/d/d;->i:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/duoku/platform/single/d/d;->h:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/duoku/platform/single/d/d;->d:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/duoku/platform/single/d/d;->c:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/duoku/platform/single/d/d;->l:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private l()Lcom/duoku/platform/single/view/a;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/view/a;

    :cond_0
    return-object v0
.end method

.method private m()Lcom/duoku/platform/single/view/a;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/view/a;

    :cond_0
    return-object v0
.end method

.method private n()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/duoku/platform/single/view/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->b()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V
    .locals 2

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(I)Lcom/duoku/platform/single/view/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/single/view/a;->a(Lcom/duoku/platform/single/d/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "update view failed because couldn\'t find view by viewid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    sget-object v0, Lcom/duoku/platform/single/d/c;->c:Lcom/duoku/platform/single/d/c;

    if-ne v0, p2, :cond_3

    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    iget-object v2, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->l()Lcom/duoku/platform/single/view/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v1}, Lcom/duoku/platform/single/view/a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->f()V

    :goto_0
    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->k()V

    :goto_1
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->g()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v2, "payment_not_finish_tip"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/duoku/platform/single/ui/a;

    invoke-direct {v6, p0}, Lcom/duoku/platform/single/ui/a;-><init>(Lcom/duoku/platform/single/ui/DKContainerActivity;)V

    const-string v8, "DKContainerActivity.onUICommend"

    iget-object v4, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v4}, Lcom/duoku/platform/single/view/a;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    move v9, v7

    :goto_3
    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    iput p4, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->f:I

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method public a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/duoku/platform/single/ui/DKContainerActivity;->j()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/single/d/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {p0, p2, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Ljava/lang/Object;Lcom/duoku/platform/single/view/a;)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/duoku/platform/single/j/c/f;

    invoke-direct {v0, p0, v3}, Lcom/duoku/platform/single/j/c/f;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/duoku/platform/single/j/c/f;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/single/j/c/f;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/duoku/platform/single/j/c/f;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/single/j/c/f;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/duoku/platform/single/j/c/r;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/c/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/duoku/platform/single/j/c/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/j/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/duoku/platform/single/j/c/t;

    invoke-direct {v0, p0, v3}, Lcom/duoku/platform/single/j/c/t;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/duoku/platform/single/j/c/t;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/single/j/c/t;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Lcom/duoku/platform/single/view/a;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/duoku/platform/single/view/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/view/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/duoku/platform/single/view/a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/duoku/platform/single/view/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->f()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/duoku/platform/single/view/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/view/a;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->g()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/single/view/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/j;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public e()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-static {p0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/c/k;->c()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->i()V

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->finish()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void
.end method

.method public h()Lcom/duoku/platform/single/view/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    return-object v0
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->c()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/ui/DKContainerActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/d/a/o;->a:Lcom/duoku/platform/single/i/c;

    new-instance v2, Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-direct {v2}, Lcom/duoku/platform/single/item/DKOrderInfoData;-><init>()V

    sget-object v3, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->DK_ORDER_CHANNEL_CMMM_CP:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V

    iget-object v3, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderPrice(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderProductId(Ljava/lang/String;)V

    sget-object v3, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---weixin pay Result msg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,orderId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "[success]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_SUCCESS:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v1, 0xbc2

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "[fail]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/item/DKOrderStatus;->DK_ORDER_STATUS_FAIL:Lcom/duoku/platform/single/item/DKOrderStatus;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/single/item/DKOrderInfoData;->setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v1, 0xbc3

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    const-string v0, "dk_payment_order_failed"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v1, 0xbc4

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->a:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DKContainerActivity"

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/c;->dismiss()V

    :cond_0
    const-string v0, "dk_container"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->setContentView(I)V

    const-string v0, "isShow"

    invoke-virtual {p0, v0, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "dk_viewcontainer"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/d/b;->a(Lcom/duoku/platform/single/ui/DKContainerActivity;)V

    new-instance v0, Lcom/duoku/platform/single/view/j;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/view/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->i:Lcom/duoku/platform/single/view/j;

    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sdk_view_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/duoku/platform/single/d/d;->a:Lcom/duoku/platform/single/d/d;

    invoke-virtual {v2}, Lcom/duoku/platform/single/d/d;->a()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/duoku/platform/single/d/d;->a:Lcom/duoku/platform/single/d/d;

    invoke-virtual {p0, v1, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/single/m/a;->a()Lcom/duoku/platform/single/m/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/m/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/duoku/platform/single/m/a;->a()Lcom/duoku/platform/single/m/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/m/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isInsertView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onDestroy()V

    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v10

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v10, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->m()Lcom/duoku/platform/single/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->k()Lcom/duoku/platform/single/d/d;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/d/c;->c:Lcom/duoku/platform/single/d/c;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->l()I

    move-result v0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->a(Lcom/duoku/platform/single/d/d;Lcom/duoku/platform/single/d/c;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-static {p0}, Lcom/duoku/platform/single/j/c/k;->b(Landroid/content/Context;)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v2, "payment_not_finish_tip"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/single/ui/DKContainerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ee7\u7eed\u8d2d\u4e70"

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    new-instance v6, Lcom/duoku/platform/single/ui/b;

    invoke-direct {v6, p0}, Lcom/duoku/platform/single/ui/b;-><init>(Lcom/duoku/platform/single/ui/DKContainerActivity;)V

    const-string v8, "DKContainerActivity.onKeyDown"

    iget-object v4, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v4}, Lcom/duoku/platform/single/view/a;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    move v9, v7

    :goto_1
    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/duoku/platform/single/j/c/k;

    move-result-object v0

    const-string v1, "{\"isButtonStyleFlip\":true}"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/c/k;->a(Ljava/lang/String;)Lcom/duoku/platform/single/j/c/k;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->t()V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onRestart()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->q()V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->s()V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onStart()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->r()V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/duoku/platform/single/ui/DKBaseActivity;->onStop()V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/ui/DKContainerActivity;->b:Lcom/duoku/platform/single/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/a;->u()V

    :cond_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->d()V

    sget-object v0, Lcom/duoku/platform/single/ui/DKContainerActivity;->h:Lcom/duoku/platform/single/util/H;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    return-void
.end method
