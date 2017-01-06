.class public Lcom/cynosure/paymentsdk/customerservice/KFDialog;
.super Landroid/app/Dialog;
.source "KFDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private close:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private email:Landroid/widget/Button;

.field private feedback:Landroid/widget/Button;

.field height:F

.field isPortrait:Z

.field private layout:Landroid/widget/AbsoluteLayout;

.field mult:F

.field private phone:Landroid/widget/Button;

.field private qq:Landroid/widget/Button;

.field private text:Landroid/widget/TextView;

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    .line 51
    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->requestWindowFeature(I)Z

    .line 57
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;

    .line 59
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->initDialog()V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 962
    const/4 v5, 0x0

    .line 963
    .local v5, "r":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 966
    .local v4, "id":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 968
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 969
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 971
    .local v1, "desireClass":Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_1

    .line 980
    :goto_1
    if-eqz v1, :cond_0

    .line 981
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 999
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :cond_0
    :goto_2
    return v4

    .line 973
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v1    # "desireClass":Ljava/lang/Class;
    .restart local v3    # "i":I
    :cond_1
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 975
    aget-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 976
    goto :goto_1

    .line 971
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v1    # "desireClass":Ljava/lang/Class;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 984
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 985
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 988
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 990
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 991
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 993
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 994
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 996
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2
.end method

.method private initDialog()V
    .locals 10

    .prologue
    const/high16 v9, 0x44480000    # 800.0f

    const/high16 v8, 0x43f00000    # 480.0f

    .line 885
    :try_start_0
    const-string v4, "Custom Dialog"

    invoke-virtual {p0, v4}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 887
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 888
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 890
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 891
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 898
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_0

    .line 900
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    .line 905
    :goto_0
    iget-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v4, :cond_3

    .line 909
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x44c

    if-ge v4, v5, :cond_1

    .line 910
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    .line 918
    :goto_1
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    .line 919
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    .line 942
    :goto_2
    invoke-virtual {p0, v3}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 957
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    return-void

    .line 902
    .restart local v0    # "d":Landroid/util/DisplayMetrics;
    .restart local v1    # "dialogWindow":Landroid/view/Window;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 954
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v2

    .line 955
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 912
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Landroid/util/DisplayMetrics;
    .restart local v1    # "dialogWindow":Landroid/view/Window;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :try_start_1
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x6a4

    if-ge v4, v5, :cond_2

    .line 913
    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    goto :goto_1

    .line 916
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    goto :goto_1

    .line 925
    :cond_3
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_4

    .line 926
    const v4, 0x3f666666    # 0.9f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    .line 937
    :goto_4
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v4, v9

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    .line 938
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    goto :goto_2

    .line 928
    :cond_4
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x2bc

    if-ge v4, v5, :cond_5

    .line 929
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    goto :goto_4

    .line 931
    :cond_5
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_6

    .line 932
    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    goto :goto_4

    .line 935
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private setCloseButton()V
    .locals 11

    .prologue
    const/high16 v10, 0x42640000    # 57.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x43100000    # 144.0f

    .line 415
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    .line 416
    const/4 v7, 0x0

    .line 418
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "back.png"

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

    .line 422
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v7, :cond_0

    .line 423
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 428
    .local v6, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    div-float/2addr v0, v3

    iget v2, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v3, 0x43160000    # 150.0f

    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v5, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$5;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$5;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-void

    .line 419
    .end local v6    # "d":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v9

    .line 420
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "d":Landroid/util/DisplayMetrics;
    :cond_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v2, 0x434d0000    # 205.0f

    iget v3, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v3, 0x42a00000    # 80.0f

    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v5, v0

    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v10, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    goto :goto_1
.end method

.method private setConfirmButton()V
    .locals 6

    .prologue
    .line 396
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->confirm:Landroid/widget/Button;

    .line 398
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->confirm:Landroid/widget/Button;

    const/high16 v2, 0x43130000    # 147.0f

    const/high16 v3, 0x43330000    # 179.0f

    const/high16 v4, 0x43640000    # 228.0f

    const/high16 v5, 0x42880000    # 68.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 400
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->confirm:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$4;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$4;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    return-void
.end method

.method private setEmail()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const-wide v8, 0x4047333333333334L    # 46.400000000000006

    const/4 v12, 0x0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 305
    const-string v2, "\u5ba2\u670d\u90ae\u7bb1\uff1akefu@cyngame.com"

    .line 306
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 309
    .local v0, "ch":[C
    const/4 v4, 0x0

    .line 310
    .local v4, "posy":I
    const/high16 v3, 0x41400000    # 12.0f

    .line 311
    .local v3, "fontsize":F
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43960000    # 300.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 312
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x4041666666666666L    # 34.8

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    .line 325
    :goto_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 326
    const/16 v8, 0xa

    invoke-direct {v7, v13, v13, v8, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 325
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    array-length v7, v0

    invoke-virtual {v6, v0, v12, v7}, Landroid/widget/Button;->setText([CII)V

    .line 329
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 330
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 332
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 333
    .local v5, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$3;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    .line 384
    .local v1, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v1, v12, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 385
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 387
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setFocusable(Z)V

    .line 388
    return-void

    .line 313
    .end local v1    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v5    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43af0000    # 350.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 314
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    goto :goto_0

    .line 315
    :cond_1
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43c80000    # 400.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 317
    const/high16 v3, 0x41500000    # 13.0f

    .line 318
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    const/high16 v3, 0x41600000    # 14.0f

    .line 323
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x404a19999999999aL    # 52.2

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    sub-double/2addr v6, v8

    double-to-int v4, v6

    goto :goto_0
.end method

.method private setEmailButton()V
    .locals 13

    .prologue
    .line 540
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    .line 541
    const/4 v9, 0x0

    .line 543
    .local v9, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "email.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 547
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v9, :cond_0

    .line 548
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    :cond_0
    const/4 v4, 0x0

    .line 551
    .local v4, "sizex":F
    const/4 v5, 0x0

    .line 552
    .local v5, "sizey":F
    const/4 v2, 0x0

    .line 553
    .local v2, "posx":F
    const/4 v3, 0x0

    .line 555
    .local v3, "posy":F
    const/16 v6, 0x87

    .line 556
    .local v6, "bmpsizex":I
    const/16 v7, 0x29

    .line 558
    .local v7, "bmpsizey":I
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 560
    int-to-float v0, v6

    const v1, 0x3f19999a    # 0.6f

    mul-float v4, v0, v1

    .line 561
    int-to-float v0, v7

    const v1, 0x3f19999a    # 0.6f

    mul-float v5, v0, v1

    .line 562
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 563
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 606
    :goto_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 607
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$7;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$7;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    return-void

    .line 544
    .end local v2    # "posx":F
    .end local v3    # "posy":F
    .end local v4    # "sizex":F
    .end local v5    # "sizey":F
    .end local v6    # "bmpsizex":I
    .end local v7    # "bmpsizey":I
    :catch_0
    move-exception v11

    .line 545
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 565
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "posx":F
    .restart local v3    # "posy":F
    .restart local v4    # "sizex":F
    .restart local v5    # "sizey":F
    .restart local v6    # "bmpsizex":I
    .restart local v7    # "bmpsizey":I
    :cond_1
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 567
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 568
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 569
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 570
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 571
    goto :goto_1

    .line 572
    :cond_2
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 574
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 575
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 576
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 577
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 578
    goto :goto_1

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 582
    .local v8, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 584
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_4

    .line 585
    int-to-float v4, v6

    .line 586
    int-to-float v5, v7

    .line 587
    const/high16 v2, 0x439b0000    # 310.0f

    .line 588
    const v3, 0x44038000    # 526.0f

    .line 589
    goto/16 :goto_1

    .line 590
    :cond_4
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 591
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 592
    const/high16 v0, 0x439b0000    # 310.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 593
    const v0, 0x44038000    # 526.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    .line 595
    goto/16 :goto_1

    .line 598
    :cond_5
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 599
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 600
    const/high16 v0, 0x43d60000    # 428.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 601
    const/high16 v0, 0x43a90000    # 338.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    goto/16 :goto_1
.end method

.method private setFeedbackButton()V
    .locals 13

    .prologue
    .line 714
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->feedback:Landroid/widget/Button;

    .line 715
    const/4 v9, 0x0

    .line 717
    .local v9, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 718
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "zxly.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 724
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v9, :cond_0

    .line 725
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->feedback:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    :cond_0
    const/4 v4, 0x0

    .line 728
    .local v4, "sizex":F
    const/4 v5, 0x0

    .line 729
    .local v5, "sizey":F
    const/4 v2, 0x0

    .line 730
    .local v2, "posx":F
    const/4 v3, 0x0

    .line 732
    .local v3, "posy":F
    const/16 v6, 0xe4

    .line 733
    .local v6, "bmpsizex":I
    const/16 v7, 0x44

    .line 734
    .local v7, "bmpsizey":I
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-nez v0, :cond_1

    .line 736
    const/16 v6, 0xa8

    .line 737
    const/16 v7, 0x32

    .line 740
    :cond_1
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 742
    int-to-float v0, v6

    const v1, 0x3f19999a    # 0.6f

    mul-float v4, v0, v1

    .line 743
    int-to-float v0, v7

    const v1, 0x3f19999a    # 0.6f

    mul-float v5, v0, v1

    .line 744
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 745
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 788
    :goto_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->feedback:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 789
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->feedback:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$9;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-void

    .line 720
    .end local v2    # "posx":F
    .end local v3    # "posy":F
    .end local v4    # "sizex":F
    .end local v5    # "sizey":F
    .end local v6    # "bmpsizex":I
    .end local v7    # "bmpsizey":I
    :cond_2
    :try_start_1
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "zxly1.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 721
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    :catch_0
    move-exception v11

    .line 722
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 747
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "posx":F
    .restart local v3    # "posy":F
    .restart local v4    # "sizex":F
    .restart local v5    # "sizey":F
    .restart local v6    # "bmpsizex":I
    .restart local v7    # "bmpsizey":I
    :cond_3
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 749
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 750
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 751
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 752
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 753
    goto :goto_1

    .line 754
    :cond_4
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 756
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 757
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 758
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 759
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 760
    goto/16 :goto_1

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 764
    .local v8, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_7

    .line 766
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_6

    .line 767
    int-to-float v0, v6

    const v1, 0x3f666666    # 0.9f

    mul-float v4, v0, v1

    .line 768
    int-to-float v0, v7

    const v1, 0x3f666666    # 0.9f

    mul-float v5, v0, v1

    .line 769
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 770
    const/high16 v3, 0x43cd0000    # 410.0f

    .line 771
    goto/16 :goto_1

    .line 773
    :cond_6
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 774
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 775
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    iget v12, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 776
    const/high16 v0, 0x43cd0000    # 410.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    .line 778
    goto/16 :goto_1

    .line 781
    :cond_7
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 782
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 783
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    iget v12, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 784
    const/high16 v0, 0x43660000    # 230.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    goto/16 :goto_1
.end method

.method private setLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 391
    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    .line 392
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    return-void
.end method

.method private setPhone()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x2

    const-wide v10, 0x405b800000000000L    # 110.0

    const-wide v8, 0x4047333333333334L    # 46.400000000000006

    .line 224
    const-string v2, "\u5ba2\u670d\u7535\u8bdd\uff1a4006008066"

    .line 225
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 228
    .local v0, "ch":[C
    const/4 v4, 0x0

    .line 229
    .local v4, "posy":I
    const/high16 v3, 0x41400000    # 12.0f

    .line 230
    .local v3, "fontsize":F
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43960000    # 300.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 231
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x4041666666666666L    # 34.8

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    .line 244
    :goto_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 245
    const/16 v8, 0xa

    invoke-direct {v7, v12, v12, v8, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 244
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 251
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 252
    .local v5, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$2;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$2;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    .line 298
    .local v1, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v1, v13, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 301
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setFocusable(Z)V

    .line 302
    return-void

    .line 232
    .end local v1    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v5    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43af0000    # 350.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 233
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    goto :goto_0

    .line 234
    :cond_1
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43c80000    # 400.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 236
    const/high16 v3, 0x41500000    # 13.0f

    .line 237
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    sub-double/2addr v6, v8

    double-to-int v4, v6

    .line 238
    goto :goto_0

    .line 241
    :cond_2
    const/high16 v3, 0x41600000    # 14.0f

    .line 242
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x404a19999999999aL    # 52.2

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    sub-double/2addr v6, v8

    double-to-int v4, v6

    goto :goto_0
.end method

.method private setPhoneButton()V
    .locals 13

    .prologue
    .line 627
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    .line 628
    const/4 v9, 0x0

    .line 630
    .local v9, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "phone.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 634
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v9, :cond_0

    .line 635
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    :cond_0
    const/4 v4, 0x0

    .line 638
    .local v4, "sizex":F
    const/4 v5, 0x0

    .line 639
    .local v5, "sizey":F
    const/4 v2, 0x0

    .line 640
    .local v2, "posx":F
    const/4 v3, 0x0

    .line 642
    .local v3, "posy":F
    const/16 v6, 0x87

    .line 643
    .local v6, "bmpsizex":I
    const/16 v7, 0x29

    .line 645
    .local v7, "bmpsizey":I
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 647
    int-to-float v0, v6

    const v1, 0x3f19999a    # 0.6f

    mul-float v4, v0, v1

    .line 648
    int-to-float v0, v7

    const v1, 0x3f19999a    # 0.6f

    mul-float v5, v0, v1

    .line 649
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 650
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 693
    :goto_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 694
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$8;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$8;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    return-void

    .line 631
    .end local v2    # "posx":F
    .end local v3    # "posy":F
    .end local v4    # "sizex":F
    .end local v5    # "sizey":F
    .end local v6    # "bmpsizex":I
    .end local v7    # "bmpsizey":I
    :catch_0
    move-exception v11

    .line 632
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "posx":F
    .restart local v3    # "posy":F
    .restart local v4    # "sizex":F
    .restart local v5    # "sizey":F
    .restart local v6    # "bmpsizex":I
    .restart local v7    # "bmpsizey":I
    :cond_1
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 654
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 655
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 656
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 657
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 658
    goto :goto_1

    .line 659
    :cond_2
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 661
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 662
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 663
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 664
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 665
    goto :goto_1

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 669
    .local v8, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 671
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_4

    .line 672
    int-to-float v4, v6

    .line 673
    int-to-float v5, v7

    .line 674
    const/high16 v2, 0x439b0000    # 310.0f

    .line 675
    const v3, 0x43f18000    # 483.0f

    .line 676
    goto/16 :goto_1

    .line 678
    :cond_4
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 679
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 680
    const/high16 v0, 0x439b0000    # 310.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 681
    const v0, 0x43f18000    # 483.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    .line 683
    goto/16 :goto_1

    .line 685
    :cond_5
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 686
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 687
    const/high16 v0, 0x43d60000    # 428.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 688
    const v0, 0x43938000    # 295.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    goto/16 :goto_1
.end method

.method private setQQ()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x2

    const-wide v10, 0x4055400000000000L    # 85.0

    const-wide v8, 0x4047333333333334L    # 46.400000000000006

    .line 142
    const-string v2, "\u5ba2\u670dQQ\uff1a599348647"

    .line 143
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 146
    .local v0, "ch":[C
    const/4 v4, 0x0

    .line 147
    .local v4, "posy":I
    const/high16 v3, 0x41400000    # 12.0f

    .line 148
    .local v3, "fontsize":F
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43960000    # 300.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 149
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x4041666666666666L    # 34.8

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    .line 162
    :goto_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    new-instance v7, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 163
    const/16 v8, 0xa

    invoke-direct {v7, v12, v12, v8, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 162
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 169
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v5, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$1;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    .line 217
    .local v1, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v1, v13, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 218
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 220
    iget-object v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setFocusable(Z)V

    .line 221
    return-void

    .line 150
    .end local v1    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v5    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43af0000    # 350.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 151
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    sub-double/2addr v6, v10

    double-to-int v4, v6

    goto :goto_0

    .line 152
    :cond_1
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v7, 0x43c80000    # 400.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 154
    const/high16 v3, 0x41500000    # 13.0f

    .line 155
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v6, v8

    double-to-int v4, v6

    .line 156
    goto :goto_0

    .line 159
    :cond_2
    const/high16 v3, 0x41600000    # 14.0f

    .line 160
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v6, v6

    const-wide v8, 0x404a19999999999aL    # 52.2

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    sub-double/2addr v6, v8

    double-to-int v4, v6

    goto :goto_0
.end method

.method private setQQButton()V
    .locals 13

    .prologue
    .line 451
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    .line 452
    const/4 v9, 0x0

    .line 454
    .local v9, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "lxkf.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 458
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v9, :cond_0

    .line 459
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :cond_0
    const/4 v4, 0x0

    .line 462
    .local v4, "sizex":F
    const/4 v5, 0x0

    .line 463
    .local v5, "sizey":F
    const/4 v2, 0x0

    .line 464
    .local v2, "posx":F
    const/4 v3, 0x0

    .line 466
    .local v3, "posy":F
    const/16 v6, 0x87

    .line 467
    .local v6, "bmpsizex":I
    const/16 v7, 0x29

    .line 469
    .local v7, "bmpsizey":I
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 471
    int-to-float v0, v6

    const v1, 0x3f19999a    # 0.6f

    mul-float v4, v0, v1

    .line 472
    int-to-float v0, v7

    const v1, 0x3f19999a    # 0.6f

    mul-float v5, v0, v1

    .line 473
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 474
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setViewPos(Landroid/view/View;FFFF)V

    .line 519
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    new-instance v1, Lcom/cynosure/paymentsdk/customerservice/KFDialog$6;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog$6;-><init>(Lcom/cynosure/paymentsdk/customerservice/KFDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    return-void

    .line 455
    .end local v2    # "posx":F
    .end local v3    # "posy":F
    .end local v4    # "sizex":F
    .end local v5    # "sizey":F
    .end local v6    # "bmpsizex":I
    .end local v7    # "bmpsizey":I
    :catch_0
    move-exception v11

    .line 456
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 476
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "posx":F
    .restart local v3    # "posy":F
    .restart local v4    # "sizex":F
    .restart local v5    # "sizey":F
    .restart local v6    # "bmpsizex":I
    .restart local v7    # "bmpsizey":I
    :cond_1
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 478
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 479
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 480
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 481
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 482
    goto :goto_1

    .line 483
    :cond_2
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 485
    int-to-float v0, v6

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v0, v1

    .line 486
    int-to-float v0, v7

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v5, v0, v1

    .line 487
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v1, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    .line 488
    iget v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    int-to-float v1, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v3, v0, v1

    .line 489
    goto :goto_1

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 493
    .local v8, "d":Landroid/util/DisplayMetrics;
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v0, :cond_5

    .line 495
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_4

    .line 496
    int-to-float v4, v6

    .line 497
    int-to-float v5, v7

    .line 498
    const/high16 v2, 0x439b0000    # 310.0f

    .line 499
    const v3, 0x440e4000    # 569.0f

    .line 500
    goto/16 :goto_1

    .line 501
    :cond_4
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 502
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 503
    const/high16 v0, 0x439b0000    # 310.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 504
    const v0, 0x440e4000    # 569.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    .line 506
    goto/16 :goto_1

    .line 509
    :cond_5
    int-to-float v0, v6

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v4, v0, v1

    .line 510
    int-to-float v0, v7

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v5, v0, v1

    .line 511
    const/high16 v0, 0x43d60000    # 428.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v2, v0, v1

    .line 512
    const v0, 0x43be8000    # 381.0f

    iget v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->mult:F

    mul-float v3, v0, v1

    goto/16 :goto_1
.end method

.method private setText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const-wide v6, 0x4047333333333334L    # 46.400000000000006

    .line 111
    const-string v1, "\u4e13\u4e1a\u7684\u5ba2\u670d\u56e2\u961f\uff0c7*24\u5c0f\u65f6\u4e3a\u60a8\u670d\u52a1\uff01\u6295\u8bc9\uff0c\u5efa\u8bae\uff0c\u9000\u8d39\u8bf7\u6c42\uff0c\u8ba1\u8d39\u95ee\u9898\uff0c\u5145\u503c\u95ee\u9898\uff0c\u7269\u54c1\u672a\u5230\u8d26\u7b49\u5404\u79cd\u95ee\u9898\u8bf7\u968f\u65f6\u8054\u7cfb\u6211\u4eec\uff01"

    .line 112
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 113
    .local v0, "ch":[C
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->text:Landroid/widget/TextView;

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "posy":I
    const/high16 v2, 0x41400000    # 12.0f

    .line 117
    .local v2, "fontsize":F
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v5, 0x43960000    # 300.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 118
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v4, v4

    const-wide v6, 0x4041666666666666L    # 34.8

    sub-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    sub-double/2addr v4, v6

    double-to-int v3, v4

    .line 131
    :goto_0
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->text:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 132
    iget v6, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x14

    const/16 v7, 0xa

    invoke-direct {v5, v6, v8, v7, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 131
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->text:Landroid/widget/TextView;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 135
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    return-void

    .line 119
    :cond_0
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v5, 0x43af0000    # 350.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 120
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v4, v4

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    sub-double/2addr v4, v6

    double-to-int v3, v4

    goto :goto_0

    .line 121
    :cond_1
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    const/high16 v5, 0x43c80000    # 400.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 123
    const/high16 v2, 0x41500000    # 13.0f

    .line 124
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v4, v4

    sub-double/2addr v4, v6

    const-wide v6, 0x406cc00000000000L    # 230.0

    sub-double/2addr v4, v6

    double-to-int v3, v4

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    const/high16 v2, 0x41600000    # 14.0f

    .line 129
    iget v4, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    float-to-double v4, v4

    const-wide v6, 0x404a19999999999aL    # 52.2

    sub-double/2addr v4, v6

    const-wide v6, 0x4072c00000000000L    # 300.0

    sub-double/2addr v4, v6

    double-to-int v3, v4

    goto :goto_0
.end method

.method private setViewPos(Landroid/view/View;FFFF)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "uix"    # F
    .param p3, "uiy"    # F
    .param p4, "sizew"    # F
    .param p5, "sizeh"    # F

    .prologue
    .line 817
    if-eqz p1, :cond_0

    .line 826
    move v2, p2

    .line 827
    .local v2, "converX":F
    move v3, p3

    .line 828
    .local v3, "converY":F
    move v1, p4

    .line 829
    .local v1, "converW":F
    move v0, p5

    .line 833
    .local v0, "converH":F
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 834
    float-to-int v5, v1

    float-to-int v6, v0

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 833
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
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
    .line 846
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 847
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 850
    :cond_0
    return-void
.end method

.method public createSelf()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setLayout()V

    .line 83
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setCloseButton()V

    .line 84
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setFeedbackButton()V

    .line 89
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setPhoneButton()V

    .line 90
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setEmailButton()V

    .line 91
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setQQButton()V

    .line 96
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->close:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->feedback:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->phone:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->email:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->qq:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->layout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->updateWindow()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->createSelf()V

    .line 69
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 75
    return-void
.end method

.method public updateWindow()V
    .locals 7

    .prologue
    .line 855
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 856
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 860
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->width:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 861
    iget v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->height:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    iget-boolean v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->isPortrait:Z

    if-eqz v5, :cond_1

    .line 866
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "custom_service_no_btn_1.png"

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

    .line 872
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 873
    :try_start_2
    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 878
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    return-void

    .line 868
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "window":Landroid/view/Window;
    .restart local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/cynosure/paymentsdk/customerservice/KFDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "custom_service_no_btn_3.png"

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

    .line 869
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 875
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v2

    .line 876
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
