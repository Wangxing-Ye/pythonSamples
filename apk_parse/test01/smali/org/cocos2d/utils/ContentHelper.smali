.class public Lorg/cocos2d/utils/ContentHelper;
.super Ljava/lang/Object;
.source "ContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/utils/ContentHelper$StreamProvider;
    }
.end annotation


# static fields
.field private static sContentHelper:Lorg/cocos2d/utils/ContentHelper;


# instance fields
.field private mDefaultLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

.field private mExternalLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/cocos2d/utils/ContentHelper;

    invoke-direct {v0}, Lorg/cocos2d/utils/ContentHelper;-><init>()V

    sput-object v0, Lorg/cocos2d/utils/ContentHelper;->sContentHelper:Lorg/cocos2d/utils/ContentHelper;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/cocos2d/utils/ContentHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2d/utils/ContentHelper$1;-><init>(Lorg/cocos2d/utils/ContentHelper;)V

    iput-object v0, p0, Lorg/cocos2d/utils/ContentHelper;->mDefaultLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    .line 46
    return-void
.end method

.method public static sharedHelper()Lorg/cocos2d/utils/ContentHelper;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/cocos2d/utils/ContentHelper;->sContentHelper:Lorg/cocos2d/utils/ContentHelper;

    return-object v0
.end method


# virtual methods
.method public openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cocos2d/utils/ContentHelper;->mExternalLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/cocos2d/utils/ContentHelper;->mExternalLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    invoke-interface {v0, p1}, Lorg/cocos2d/utils/ContentHelper$StreamProvider;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/utils/ContentHelper;->mDefaultLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    invoke-interface {v0, p1}, Lorg/cocos2d/utils/ContentHelper$StreamProvider;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public setExternalLoader(Lorg/cocos2d/utils/ContentHelper$StreamProvider;)V
    .locals 0
    .param p1, "mExternalLoader"    # Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cocos2d/utils/ContentHelper;->mExternalLoader:Lorg/cocos2d/utils/ContentHelper$StreamProvider;

    .line 36
    return-void
.end method
