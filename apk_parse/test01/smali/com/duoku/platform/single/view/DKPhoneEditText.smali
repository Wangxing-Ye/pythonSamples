.class public Lcom/duoku/platform/single/view/DKPhoneEditText;
.super Landroid/widget/EditText;


# static fields
.field private static final a:I = 0xb


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/DKPhoneEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/view/DKPhoneEditText;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/DKPhoneEditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/view/DKPhoneEditText;->setInputType(I)V

    return-void
.end method
