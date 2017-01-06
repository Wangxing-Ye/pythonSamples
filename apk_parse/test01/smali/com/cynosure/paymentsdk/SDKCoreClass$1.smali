.class Lcom/cynosure/paymentsdk/SDKCoreClass$1;
.super Ljava/lang/Object;
.source "SDKCoreClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cynosure/paymentsdk/SDKCoreClass;->getPushTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/SDKCoreClass;


# direct methods
.method constructor <init>(Lcom/cynosure/paymentsdk/SDKCoreClass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cynosure/paymentsdk/SDKCoreClass$1;->this$0:Lcom/cynosure/paymentsdk/SDKCoreClass;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 689
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 690
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getLastUpdatePushContent()Lcom/cynosure/paymentsdk/vo/PushContent;

    move-result-object v5

    .line 691
    .local v5, "pushContent":Lcom/cynosure/paymentsdk/vo/PushContent;
    if-eqz v5, :cond_0

    .line 692
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/PushContent;->getScript()Ljava/lang/String;

    move-result-object v9

    const-string v10, "------"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 693
    .local v8, "tempRow":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-lt v2, v9, :cond_1

    .line 729
    .end local v2    # "i":I
    .end local v8    # "tempRow":[Ljava/lang/String;
    :cond_0
    return-void

    .line 694
    .restart local v2    # "i":I
    .restart local v8    # "tempRow":[Ljava/lang/String;
    :cond_1
    aget-object v9, v8, v2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 696
    aget-object v9, v8, v2

    const-string v10, "~~~~~~"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 697
    .local v6, "tempApks":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v9, v6

    if-lt v4, v9, :cond_3

    .line 693
    .end local v4    # "j":I
    .end local v6    # "tempApks":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .restart local v4    # "j":I
    .restart local v6    # "tempApks":[Ljava/lang/String;
    :cond_3
    aget-object v9, v6, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 699
    aget-object v9, v6, v4

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "tempItem":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 701
    new-instance v0, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;-><init>()V

    .line 702
    .local v0, "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    aget-object v9, v7, v12

    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 703
    aget-object v9, v7, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkID(I)V

    .line 708
    :goto_2
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkTitle(Ljava/lang/String;)V

    .line 709
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setPackageName(Ljava/lang/String;)V

    .line 710
    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setStartActivityName(Ljava/lang/String;)V

    .line 711
    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkImageURL(Ljava/lang/String;)V

    .line 712
    const/4 v9, 0x5

    aget-object v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkFileURL(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "imageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 716
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "start download image in background:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 716
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 720
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 721
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 719
    invoke-static {v9, v10}, Lcom/cynosure/paymentsdk/helper/ImageHelper;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 697
    .end local v0    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v7    # "tempItem":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 706
    .restart local v0    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .restart local v7    # "tempItem":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v12}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkID(I)V

    goto/16 :goto_2
.end method
