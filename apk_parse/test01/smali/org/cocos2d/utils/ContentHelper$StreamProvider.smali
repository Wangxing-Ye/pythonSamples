.class public interface abstract Lorg/cocos2d/utils/ContentHelper$StreamProvider;
.super Ljava/lang/Object;
.source "ContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/utils/ContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamProvider"
.end annotation


# virtual methods
.method public abstract openStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
