.class public Lcom/duoku/platform/single/util/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/util/j$a;,
        Lcom/duoku/platform/single/util/j$b;,
        Lcom/duoku/platform/single/util/j$c;,
        Lcom/duoku/platform/single/util/j$d;,
        Lcom/duoku/platform/single/util/j$e;
    }
.end annotation


# static fields
.field public static a:Lcom/duoku/platform/single/view/c;

.field public static b:Lcom/duoku/platform/single/j/c/f;

.field public static c:Z

.field public static d:Lcom/duoku/platform/single/item/e;

.field public static e:Lcom/duoku/platform/single/suspend/q;

.field static f:Landroid/widget/ListView;

.field static g:Landroid/app/Dialog;

.field public static h:Ljava/lang/String;

.field private static i:Lcom/duoku/platform/single/util/H;

.field private static j:Landroid/content/Context;

.field private static k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static l:Z

.field private static m:I

.field private static n:Z

.field private static o:Landroid/widget/AbsListView$OnScrollListener;

.field private static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/i;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Z

.field private static r:Lcom/duoku/platform/single/h/h;

.field private static s:Landroid/widget/AdapterView$OnItemClickListener;

.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Landroid/widget/BaseAdapter;

.field private static w:Landroid/app/Dialog;

.field private static x:Landroid/widget/LinearLayout;

.field private static y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/duoku/platform/single/util/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    sput-object v1, Lcom/duoku/platform/single/util/j;->a:Lcom/duoku/platform/single/view/c;

    sput-object v1, Lcom/duoku/platform/single/util/j;->b:Lcom/duoku/platform/single/j/c/f;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/single/util/j;->c:Z

    sput-object v1, Lcom/duoku/platform/single/util/j;->d:Lcom/duoku/platform/single/item/e;

    sput-object v1, Lcom/duoku/platform/single/util/j;->e:Lcom/duoku/platform/single/suspend/q;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/util/j;->n:Z

    new-instance v0, Lcom/duoku/platform/single/util/k;

    invoke-direct {v0}, Lcom/duoku/platform/single/util/k;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/j;->o:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/j;->p:Ljava/util/List;

    new-instance v0, Lcom/duoku/platform/single/util/u;

    invoke-direct {v0}, Lcom/duoku/platform/single/util/u;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/j;->r:Lcom/duoku/platform/single/h/h;

    new-instance v0, Lcom/duoku/platform/single/util/v;

    invoke-direct {v0}, Lcom/duoku/platform/single/util/v;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/j;->s:Landroid/widget/AdapterView$OnItemClickListener;

    const-string v0, "\u6b21\u4e0b\u8f7d    "

    sput-object v0, Lcom/duoku/platform/single/util/j;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/util/j;->t:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Landroid/content/DialogInterface$OnDismissListener;Lcom/duoku/platform/single/item/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dk_layout_award_dialog"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    const-string v1, "dk_dialog_linear_content"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "dk_dialog_tv_sendphone_tip"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "dk_dialog_phone_linear"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v7, "dk_dialog_tv_value"

    invoke-static {p0, v7}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    :goto_0
    const-string v1, "dk_dialog_baiduid_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dk_dialog_tv_value"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    const-string v1, "dk_dialog_tv_userinfo_tip"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    :goto_2
    const/4 v1, 0x5

    if-le v2, v1, :cond_8

    :cond_2
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const-string v1, "dk_suspension_progress_load"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    const-string v1, "dkMainHeadClose"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "dkMainHeadBack"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/duoku/platform/single/util/n;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v6, p0}, Lcom/duoku/platform/single/util/n;-><init>(Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "dkMainHeadTxt"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tv_other_text"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const-string v2, "tv_noaward_text"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const-string v2, "dk_btn_return_game"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_b

    const-string v1, "\u590d\u5236\u5e76\u8fd4\u56de\u6e38\u620f"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_4
    new-instance v1, Lcom/duoku/platform/single/util/o;

    move-object/from16 v2, p3

    move-object v3, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/duoku/platform/single/util/o;-><init>(Lcom/duoku/platform/single/item/p;Landroid/app/Activity;Ljava/lang/StringBuilder;Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "dk_btn_pointer_game_recommend"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/util/p;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/util/p;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "dk_games_scrollview"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    const-string v2, "dk_game_recomend_arrays"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "dk_game_pointer_area_layout"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->a()I

    move-result v5

    sget-object v9, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "----------exit flag is = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->d()Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    if-nez v5, :cond_d

    if-eqz p5, :cond_4

    const-string v4, ""

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const-string v1, "dk_dialog_stub_view"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_6
    return-object v6

    :cond_6
    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "dk_dialog_phone_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    const-string v1, "dk_dialog_baiduid_linear"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x1

    if-ne v2, v1, :cond_a

    const-string v1, "dk_dialog_tv_drawsuccess_tip"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Lcom/duoku/platform/single/item/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dk_dialog_tv_value"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/item/p;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_b
    if-nez p3, :cond_3

    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    :cond_d
    const/4 v9, 0x1

    if-ne v9, v5, :cond_14

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_13

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/item/g;

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v2

    const-string v5, "statistics_single_pointer_game_show"

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x2

    invoke-virtual {v2, v5, v7, v8, v9}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "game"

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->f()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v2, "dk_layout_pointer_game_style_vertical"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {p0, v7}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "dk_pointer_game_bglayout"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/duoku/platform/single/util/q;

    invoke-direct {v4, p0, v1}, Lcom/duoku/platform/single/util/q;-><init>(Landroid/app/Activity;Lcom/duoku/platform/single/item/g;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/duoku/platform/single/util/r;

    invoke-direct {v8, v3}, Lcom/duoku/platform/single/util/r;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_e
    :goto_9
    const-string v3, "dk_game_content_txt"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "dk_btn_download_game"

    invoke-static {p0, v4}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/duoku/platform/single/util/s;

    invoke-direct {v4, v1, p0}, Lcom/duoku/platform/single/util/s;-><init>(Lcom/duoku/platform/single/item/g;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    if-eqz p5, :cond_10

    const-string v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_10
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v7, v8, v9, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_8

    :cond_12
    const-string v3, "-----isNetConnect is false----"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_13
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_14
    sget-object v4, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    sget-object v4, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    const/16 v4, 0x50

    :cond_15
    :goto_a
    sget-object v5, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_b
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    int-to-float v1, v4

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v1

    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v1, v3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/duoku/platform/single/a/g;

    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/single/a/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/duoku/platform/single/util/t;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/util/t;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_c
    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    if-eqz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-lt v2, v4, :cond_1d

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v2

    const-string v3, "statistics_recommend_game_show"

    const-string v4, ""

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_16
    sget-object v4, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_17

    const/16 v4, 0x50

    goto/16 :goto_a

    :cond_17
    sget-object v4, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_18

    const/16 v4, 0x46

    goto/16 :goto_a

    :cond_18
    const/16 v4, 0x46

    sget-object v5, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x4

    if-le v5, v9, :cond_15

    sget-object v5, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {v5, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    sget-object v9, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    :cond_19
    if-eqz p5, :cond_1a

    const-string v5, ""

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_1c
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1d
    sget-object v1, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/item/g;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "game"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/single/item/g;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_d

    :cond_1e
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public static a(Landroid/app/Activity;Lcom/duoku/platform/single/item/e;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)Landroid/app/Dialog;
    .locals 10

    const-string v0, "dk_layout_dialog"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v0, "dk_suspension_progress_load"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    const-string v0, "dkMainHeadClose"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "dkMainHeadBack"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/util/w;

    invoke-direct {v1, v4}, Lcom/duoku/platform/single/util/w;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "dk_dialog_title"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "dk_text_quit_game_confirm_txt"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/duoku/platform/single/util/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "dk_btn_pointer_game_recommend"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "dk_btn_quit_game"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/single/util/x;

    invoke-direct {v2, p0}, Lcom/duoku/platform/single/util/x;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/duoku/platform/single/util/y;

    invoke-direct {v2, v0, p0, v4, p2}, Lcom/duoku/platform/single/util/y;-><init>(Landroid/widget/Button;Landroid/app/Activity;Landroid/app/Dialog;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "dk_games_scrollview"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "dk_game_recomend_arrays"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "dk_game_pointer_area_layout"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->a()I

    move-result v6

    sget-object v7, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "----------exit flag is = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->d()Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    if-nez v6, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const-string v0, "dk_dialog_stub_view"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v7, 0x1

    if-ne v7, v6, :cond_5

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/e;->d()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v6, "statistics_single_pointer_game_show"

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x2

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "game"

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->f()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v1, "dk_layout_pointer_game_style_vertical"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "dk_pointer_game_bglayout"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/duoku/platform/single/util/z;

    invoke-direct {v3, p0, v0}, Lcom/duoku/platform/single/util/z;-><init>(Landroid/app/Activity;Lcom/duoku/platform/single/item/g;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/duoku/platform/single/util/A;

    invoke-direct {v7, v2}, Lcom/duoku/platform/single/util/A;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_2
    :goto_1
    const-string v2, "dk_game_title_txt"

    invoke-static {p0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "dk_game_content_txt"

    invoke-static {p0, v3}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "dk_btn_download_game"

    invoke-static {p0, v5}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/duoku/platform/single/util/B;

    invoke-direct {v5, v0, p0}, Lcom/duoku/platform/single/util/B;-><init>(Lcom/duoku/platform/single/item/g;Landroid/app/Activity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "-----isNetConnect is false----"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    const/16 v3, 0x50

    :cond_6
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    int-to-float v0, v3

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/J;->d(Landroid/content/Context;F)I

    move-result v0

    sget-object v2, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v0, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/duoku/platform/single/a/g;

    sget-object v2, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/duoku/platform/single/a/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/duoku/platform/single/util/l;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/util/l;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_recommend_game_show"

    const-string v3, ""

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    const/16 v3, 0x50

    goto/16 :goto_2

    :cond_8
    sget-object v3, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    const/16 v3, 0x46

    goto/16 :goto_2

    :cond_9
    const/16 v3, 0x46

    sget-object v5, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_6

    sget-object v5, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    sget-object v6, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_a
    sget-object v0, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "game"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/g;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_b
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "DK.Theme.NoBackground.NoAnimation"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v1, "dk_new_draw_dialog"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "dk_recommend_dialog_style"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {p0, p1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->c(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/util/j;->c(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e07"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_0

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u4ebf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/duoku/platform/single/util/j;->m:I

    return-void
.end method

.method static synthetic a(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->b(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/item/i;)V
    .locals 0

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->b(Lcom/duoku/platform/single/item/i;)V

    return-void
.end method

.method public static a(Lcom/duoku/platform/single/item/i;Z)V
    .locals 8

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v6

    sget v7, Lcom/duoku/platform/single/util/a;->iY:I

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v1

    const-string v2, "statistics_boutique_download"

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Lcom/duoku/platform/single/item/i;ZLandroid/content/Context;)V
    .locals 0

    sput-object p2, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/duoku/platform/single/util/j;->a(Lcom/duoku/platform/single/item/i;Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/duoku/platform/single/util/j;->l:Z

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "DK.Theme.NoBackGround.NoAnimation"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v1, "dk_new_payment_dialog"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0
.end method

.method private static b(Landroid/widget/AbsListView;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static b(Lcom/duoku/platform/single/item/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/j;->a(Lcom/duoku/platform/single/item/i;Z)V

    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lcom/duoku/platform/single/util/j;->n:Z

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/duoku/platform/single/util/j;->l:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

.method public static c(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "dk_recommend_dialog_style"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x1

    sput-object p0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const-string v1, "dk_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const-string v1, "dk_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const-string v1, "dk_recommend_game_bg_default"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/j;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    const-string v1, "dk_exit_good_games_dialog"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    const-string v2, "dkMainHeadClose"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    const-string v2, "dkMainHeadBack"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/single/util/m;

    invoke-direct {v1}, Lcom/duoku/platform/single/util/m;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    sget-object v1, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    const-string v2, "dk_good_game_lv"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/util/j;->p:Ljava/util/List;

    sget-object v1, Lcom/duoku/platform/single/suspend/DKSuspensionView;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/duoku/platform/single/util/j;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->r()V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->a()V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/single/item/i;

    sget-object v2, Lcom/duoku/platform/single/util/j;->t:Ljava/util/List;

    invoke-virtual {v0}, Lcom/duoku/platform/single/item/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    sget v2, Lcom/duoku/platform/single/suspend/DKSuspensionView;->g:I

    aput v2, v1, v3

    const/4 v2, 0x2

    const/16 v3, 0xa

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->a([I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-request tag 46 data is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/util/j;->p()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/getGameRecommendHotorBest"

    const/16 v3, 0x2e

    sget-object v4, Lcom/duoku/platform/single/util/j;->r:Lcom/duoku/platform/single/h/h;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    goto :goto_1
.end method

.method static synthetic e()Lcom/duoku/platform/single/util/H;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_suspension_progress_load"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "statistics_boutique_show"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sput-boolean v4, Lcom/duoku/platform/single/util/j;->n:Z

    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->d(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/duoku/platform/single/util/j;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/duoku/platform/single/util/j;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v0, "dk_payment_error_2003"

    invoke-static {p0, v0}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/duoku/platform/single/util/j;->m:I

    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "dk_dialog_style"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v1, "dk_layout_download_dialog"

    invoke-static {p0, v1}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()Lcom/duoku/platform/single/h/h;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->r:Lcom/duoku/platform/single/h/h;

    return-object v0
.end method

.method static synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcom/duoku/platform/single/util/j;->q:Z

    return v0
.end method

.method static synthetic k()Landroid/widget/BaseAdapter;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->v:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic l()V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->r()V

    return-void
.end method

.method static synthetic m()V
    .locals 0

    invoke-static {}, Lcom/duoku/platform/single/util/j;->q()V

    return-void
.end method

.method static synthetic n()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic o()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->y:Ljava/util/List;

    return-object v0
.end method

.method private static p()Landroid/app/Dialog;
    .locals 2

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    const-string v1, "dk_suspension_progress_load"

    invoke-static {v0, v1}, Lcom/duoku/platform/single/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/util/j;->w:Landroid/app/Dialog;

    sget-object v0, Lcom/duoku/platform/single/util/j;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->a(Landroid/content/Context;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->e()V

    sget-object v0, Lcom/duoku/platform/single/util/j;->w:Landroid/app/Dialog;

    return-object v0
.end method

.method private static q()V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->w:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->w:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static r()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/util/j;->q:Z

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/util/j$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duoku/platform/single/util/j$d;-><init>(Lcom/duoku/platform/single/util/j$d;)V

    sput-object v0, Lcom/duoku/platform/single/util/j;->v:Landroid/widget/BaseAdapter;

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->v:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->s:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/duoku/platform/single/util/j;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/duoku/platform/single/util/j;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/util/j;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "-exit dialog gridView and listView both nil"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
