.class public Lcom/cynosure/paymentsdk/customerservice/JYDialog;
.super Landroid/app/Dialog;
.source "JYDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private close:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private edittext:Landroid/widget/EditText;

.field height:F

.field isPortrait:Z

.field private layout:Landroid/widget/AbsoluteLayout;

.field mult:F

.field private phone:Landroid/widget/EditText;

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    .line 47
    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->requestWindowFeature(I)Z

    .line 53
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->activity:Landroid/app/Activity;

    .line 55
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->initDialog()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initDialog()V
    .locals 10

    .prologue
    const/high16 v9, 0x44480000    # 800.0f

    const/high16 v8, 0x43f00000    # 480.0f

    .line 532
    :try_start_0
    const-string v4, "Custom Dialog"

    invoke-virtual {p0, v4}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 535
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 537
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 538
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 545
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_0

    .line 547
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    .line 552
    :goto_0
    iget-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v4, :cond_3

    .line 554
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x44c

    if-ge v4, v5, :cond_1

    .line 555
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    .line 563
    :goto_1
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    .line 564
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    .line 587
    :goto_2
    invoke-virtual {p0, v3}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 593
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    return-void

    .line 549
    .restart local v0    # "d":Landroid/util/DisplayMetrics;
    .restart local v1    # "dialogWindow":Landroid/view/Window;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v2

    .line 591
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 557
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Landroid/util/DisplayMetrics;
    .restart local v1    # "dialogWindow":Landroid/view/Window;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :try_start_1
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x6a4

    if-ge v4, v5, :cond_2

    .line 558
    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    goto :goto_1

    .line 561
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    goto :goto_1

    .line 570
    :cond_3
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_4

    .line 571
    const v4, 0x3f666666    # 0.9f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    .line 582
    :goto_4
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    .line 583
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    goto :goto_2

    .line 573
    :cond_4
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x2bc

    if-ge v4, v5, :cond_5

    .line 574
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    goto :goto_4

    .line 576
    :cond_5
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_6

    .line 577
    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    goto :goto_4

    .line 580
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private setCloseButton()V
    .locals 10

    .prologue
    const/high16 v4, 0x43100000    # 144.0f

    const/high16 v5, 0x42640000    # 57.0f

    .line 495
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    .line 496
    const/4 v7, 0x0

    .line 498
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "cancel.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v8

    .line 502
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v7, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 506
    .local v6, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 510
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    const/high16 v0, 0x43870000    # 270.0f

    iget v2, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v2, v0

    const v0, 0x441d8000    # 630.0f

    iget v3, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 513
    :goto_1
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/JYDialog$2;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$2;-><init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    return-void

    .line 499
    .end local v6    # "d":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v9

    .line 500
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "d":Landroid/util/DisplayMetrics;
    :cond_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    const/high16 v0, 0x43d40000    # 424.0f

    iget v2, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v2, v0

    const v0, 0x43ba8000    # 373.0f

    iget v3, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v4, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float/2addr v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setViewPos(Landroid/view/View;FFFF)V

    goto :goto_1
.end method

.method private setConfirmButton()V
    .locals 15

    .prologue
    const v14, 0x42666667    # 57.600002f

    const/high16 v13, 0x42640000    # 57.0f

    const v12, 0x4239999a    # 46.4f

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 326
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->confirm:Landroid/widget/Button;

    .line 327
    const/4 v7, 0x0

    .line 329
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "send.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v8

    .line 333
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v7, :cond_0

    .line 334
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :cond_0
    const/4 v4, 0x0

    .line 337
    .local v4, "sizex":F
    const/4 v5, 0x0

    .line 338
    .local v5, "sizey":F
    const/4 v2, 0x0

    .line 339
    .local v2, "posx":F
    const/4 v3, 0x0

    .line 341
    .local v3, "posy":F
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 343
    const v4, 0x42accccd    # 86.4f

    .line 344
    const v5, 0x420b3334    # 34.800003f

    .line 345
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    div-float/2addr v0, v10

    const v1, 0x422ccccd    # 43.2f

    sub-float v2, v0, v1

    .line 346
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const v1, 0x420b3334    # 34.800003f

    sub-float/2addr v0, v1

    sub-float v3, v0, v11

    .line 390
    :goto_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->confirm:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 394
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->confirm:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog$1;-><init>(Lcom/cynosure/paymentsdk/customerservice/JYDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    return-void

    .line 330
    .end local v2    # "posx":F
    .end local v3    # "posy":F
    .end local v4    # "sizex":F
    .end local v5    # "sizey":F
    :catch_0
    move-exception v9

    .line 331
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "posx":F
    .restart local v3    # "posy":F
    .restart local v4    # "sizex":F
    .restart local v5    # "sizey":F
    :cond_1
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 350
    const v4, 0x42e66667    # 115.200005f

    .line 351
    const v5, 0x4239999a    # 46.4f

    .line 352
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    div-float/2addr v0, v10

    sub-float v2, v0, v14

    .line 353
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    sub-float/2addr v0, v12

    sub-float v3, v0, v11

    .line 354
    goto :goto_1

    .line 355
    :cond_2
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 357
    const v4, 0x42e66667    # 115.200005f

    .line 358
    const v5, 0x4239999a    # 46.4f

    .line 359
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    div-float/2addr v0, v10

    sub-float v2, v0, v14

    .line 360
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    sub-float/2addr v0, v12

    sub-float v3, v0, v11

    .line 361
    goto :goto_1

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 369
    .local v6, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v0, :cond_4

    .line 377
    const/high16 v0, 0x43100000    # 144.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v0, v1

    .line 378
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v13, v0

    .line 379
    const/high16 v0, 0x428c0000    # 70.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v2, v0, v1

    .line 380
    const v0, 0x441d8000    # 630.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v0, v1

    .line 381
    goto :goto_1

    .line 384
    :cond_4
    const/high16 v0, 0x43100000    # 144.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v0, v1

    .line 385
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v13, v0

    .line 386
    const/high16 v0, 0x43640000    # 228.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v2, v0, v1

    .line 387
    const v0, 0x43ba8000    # 373.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v0, v1

    goto/16 :goto_1
.end method

.method private setLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 321
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    .line 322
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    return-void
.end method

.method private setNameEditText()V
    .locals 17

    .prologue
    .line 77
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u5efa\u8bae"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0x80

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v2, v14

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 88
    const/4 v10, 0x0

    .line 90
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v1, :cond_3

    .line 91
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "textedit.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v11, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v10, v11

    .line 97
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v10, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 101
    .local v4, "posy":F
    const/4 v3, 0x0

    .line 102
    .local v3, "posx":F
    const/4 v6, 0x0

    .line 103
    .local v6, "sizey":F
    const/4 v5, 0x0

    .line 104
    .local v5, "sizex":F
    const/high16 v13, 0x41400000    # 12.0f

    .line 105
    .local v13, "fontsize":F
    const/16 v7, 0x18b

    .line 106
    .local v7, "bmpsizex":I
    const/16 v8, 0x108

    .line 107
    .local v8, "bmpsizey":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-nez v1, :cond_1

    .line 108
    const/16 v7, 0x291

    .line 109
    const/16 v8, 0x7f

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4041666666666666L    # 34.8

    sub-double/2addr v1, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    sub-double/2addr v1, v14

    const-wide v14, 0x4051800000000000L    # 70.0

    add-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 114
    const/high16 v6, 0x42a00000    # 80.0f

    .line 158
    :goto_1
    const/high16 v1, 0x41600000    # 14.0f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_2

    .line 159
    const/high16 v13, 0x41600000    # 14.0f

    .line 160
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    float-to-int v2, v13

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 162
    return-void

    .line 93
    .end local v3    # "posx":F
    .end local v4    # "posy":F
    .end local v5    # "sizex":F
    .end local v6    # "sizey":F
    .end local v7    # "bmpsizex":I
    .end local v8    # "bmpsizey":I
    .end local v13    # "fontsize":F
    :cond_3
    :try_start_1
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "textedit1.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v10, v11

    .line 94
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    :catch_0
    move-exception v12

    .line 95
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v3    # "posx":F
    .restart local v4    # "posy":F
    .restart local v5    # "sizex":F
    .restart local v6    # "sizey":F
    .restart local v7    # "bmpsizex":I
    .restart local v8    # "bmpsizey":I
    .restart local v13    # "fontsize":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 118
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4047333333333334L    # 46.400000000000006

    sub-double/2addr v1, v14

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    sub-double/2addr v1, v14

    const-wide v14, 0x4051800000000000L    # 70.0

    add-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 119
    const/high16 v6, 0x42c80000    # 100.0f

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 123
    const/high16 v13, 0x41500000    # 13.0f

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4047333333333334L    # 46.400000000000006

    sub-double/2addr v1, v14

    const-wide v14, 0x406cc00000000000L    # 230.0

    sub-double/2addr v1, v14

    const-wide/high16 v14, 0x4054000000000000L    # 80.0

    add-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 125
    const/high16 v6, 0x42f00000    # 120.0f

    .line 126
    goto :goto_1

    .line 129
    :cond_6
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v13, v1, v2

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 133
    .local v9, "d":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v1, :cond_8

    .line 135
    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x44c

    if-ge v1, v2, :cond_7

    .line 136
    const v4, 0x43a28000    # 325.0f

    .line 137
    const/high16 v3, 0x42200000    # 40.0f

    .line 139
    int-to-float v5, v7

    .line 140
    int-to-float v6, v8

    .line 141
    goto/16 :goto_1

    .line 142
    :cond_7
    const v1, 0x43a28000    # 325.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v1, v2

    .line 143
    const/high16 v1, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v1, v2

    .line 145
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v1, v2

    .line 146
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v6, v1, v2

    .line 148
    goto/16 :goto_1

    .line 151
    :cond_8
    const/high16 v1, 0x43660000    # 230.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v1, v2

    .line 152
    const/high16 v1, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v1, v2

    .line 154
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v1, v2

    .line 155
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v6, v1, v2

    goto/16 :goto_1
.end method

.method private setPhoneEditText()V
    .locals 17

    .prologue
    .line 165
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v14, 0x0

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    const/16 v16, 0xb

    invoke-direct/range {v15 .. v16}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v2, v14

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 178
    const/4 v10, 0x0

    .line 180
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "phoneedit.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v11, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v10, v11

    .line 184
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v10, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_0
    const/4 v4, 0x0

    .line 189
    .local v4, "posy":F
    const/4 v5, 0x0

    .line 190
    .local v5, "sizex":F
    const/4 v6, 0x0

    .line 191
    .local v6, "sizey":F
    const/high16 v13, 0x41400000    # 12.0f

    .line 192
    .local v13, "fontsize":F
    const/4 v3, 0x0

    .line 194
    .local v3, "posx":F
    const/16 v7, 0x18b

    .line 195
    .local v7, "bmpsizex":I
    const/16 v8, 0x33

    .line 197
    .local v8, "bmpsizey":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4041666666666666L    # 34.8

    sub-double/2addr v1, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    sub-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 200
    const/high16 v6, 0x42480000    # 50.0f

    .line 245
    :goto_1
    const/high16 v1, 0x41600000    # 14.0f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_1

    .line 246
    const/high16 v13, 0x41600000    # 14.0f

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    float-to-int v2, v13

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 250
    return-void

    .line 181
    .end local v3    # "posx":F
    .end local v4    # "posy":F
    .end local v5    # "sizex":F
    .end local v6    # "sizey":F
    .end local v7    # "bmpsizex":I
    .end local v8    # "bmpsizey":I
    .end local v13    # "fontsize":F
    :catch_0
    move-exception v12

    .line 182
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v3    # "posx":F
    .restart local v4    # "posy":F
    .restart local v5    # "sizex":F
    .restart local v6    # "sizey":F
    .restart local v7    # "bmpsizex":I
    .restart local v8    # "bmpsizey":I
    .restart local v13    # "fontsize":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4047333333333334L    # 46.400000000000006

    sub-double/2addr v1, v14

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    sub-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 205
    const/high16 v6, 0x42480000    # 50.0f

    .line 206
    goto :goto_1

    .line 207
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 209
    const/high16 v13, 0x41500000    # 13.0f

    .line 210
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    float-to-double v1, v1

    const-wide v14, 0x4047333333333334L    # 46.400000000000006

    sub-double/2addr v1, v14

    const-wide v14, 0x406cc00000000000L    # 230.0

    sub-double/2addr v1, v14

    double-to-int v1, v1

    int-to-float v4, v1

    .line 211
    const/high16 v6, 0x42700000    # 60.0f

    .line 212
    goto :goto_1

    .line 215
    :cond_4
    const/high16 v1, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v13, v1, v2

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 218
    .local v9, "d":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v1, :cond_6

    .line 220
    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x44c

    if-ge v1, v2, :cond_5

    .line 221
    const/high16 v4, 0x432b0000    # 171.0f

    .line 222
    const/high16 v3, 0x42200000    # 40.0f

    .line 224
    int-to-float v5, v7

    .line 225
    int-to-float v6, v8

    .line 226
    goto/16 :goto_1

    .line 227
    :cond_5
    const/high16 v1, 0x432b0000    # 171.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v1, v2

    .line 228
    const/high16 v1, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v1, v2

    .line 230
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v1, v2

    .line 231
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v6, v1, v2

    .line 233
    goto/16 :goto_1

    .line 235
    :cond_6
    const/high16 v1, 0x42fc0000    # 126.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v4, v1, v2

    .line 236
    const/high16 v1, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v3, v1, v2

    .line 238
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v5, v1, v2

    .line 239
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->mult:F

    mul-float v6, v1, v2

    goto/16 :goto_1
.end method

.method private setViewPos(Landroid/view/View;FFFF)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "uix"    # F
    .param p3, "uiy"    # F
    .param p4, "sizew"    # F
    .param p5, "sizeh"    # F

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 270
    move v2, p2

    .line 271
    .local v2, "converX":F
    move v3, p3

    .line 272
    .local v3, "converY":F
    move v1, p4

    .line 273
    .local v1, "converW":F
    move v0, p5

    .line 275
    .local v0, "converH":F
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 276
    float-to-int v5, v1

    float-to-int v6, v0

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 275
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    float-to-int v4, v2

    float-to-int v5, v3

    .line 278
    add-float v6, v2, v1

    float-to-int v6, v6

    add-float v7, v3, v0

    float-to-int v7, v7

    .line 277
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 280
    .end local v0    # "converH":F
    .end local v1    # "converW":F
    .end local v2    # "converX":F
    .end local v3    # "converY":F
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setLayout()V

    .line 64
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setPhoneEditText()V

    .line 65
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setNameEditText()V

    .line 66
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setConfirmButton()V

    .line 67
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setCloseButton()V

    .line 68
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->phone:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->edittext:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->close:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->layout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->updateWindow()V

    .line 74
    return-void
.end method

.method public updateWindow()V
    .locals 7

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 298
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 299
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v5, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->width:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 300
    iget v5, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->height:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    iget-boolean v5, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->isPortrait:Z

    if-eqz v5, :cond_1

    .line 306
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "custom_service_no_btn_2.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v0, v1

    .line 312
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 313
    :try_start_2
    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 318
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    return-void

    .line 308
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "window":Landroid/view/Window;
    .restart local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/cynosure/paymentsdk/customerservice/JYDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "custom_service_no_btn_4.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v0, v1

    .line 309
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 315
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v2

    .line 316
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
