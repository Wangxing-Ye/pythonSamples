.class public Lorg/cocos2d/layers/CCTMXMapInfo;
.super Ljava/lang/Object;
.source "CCTMXMapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final TMXLayerAttribBase64:I = 0x2

.field public static final TMXLayerAttribGzip:I = 0x4

.field public static final TMXLayerAttribNone:I = 0x1

.field public static final TMXPropertyLayer:I = 0x2

.field public static final TMXPropertyMap:I = 0x1

.field public static final TMXPropertyNone:I = 0x0

.field public static final TMXPropertyObject:I = 0x4

.field public static final TMXPropertyObjectGroup:I = 0x3

.field public static final TMXPropertyTile:I = 0x5


# instance fields
.field protected currentString:Ljava/lang/StringBuilder;

.field public filename:Ljava/lang/String;

.field protected layerAttribs:I

.field public layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCTMXLayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mapSize:Lorg/cocos2d/types/CGSize;

.field public objectGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCTMXObjectGroup;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:I

.field protected parentElement:I

.field protected parentGID:I

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected storingCharacters:Z

.field public tileProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public tileSize:Lorg/cocos2d/types/CGSize;

.field public tilesets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/layers/CCTMXTilesetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/cocos2d/layers/CCTMXMapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tmxFile"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->properties:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->tileProperties:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->currentString:Ljava/lang/StringBuilder;

    .line 109
    iput-boolean v1, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->storingCharacters:Z

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    .line 111
    iput v1, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    .line 113
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cocos2d/layers/CCTMXMapInfo;->parseXMLFile(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/layers/CCTMXMapInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/cocos2d/layers/CCTMXMapInfo;->parseXMLFile(Ljava/lang/String;)V

    return-void
.end method

.method public static formatWithTMXFile(Ljava/lang/String;)Lorg/cocos2d/layers/CCTMXMapInfo;
    .locals 1
    .param p0, "tmxFile"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lorg/cocos2d/layers/CCTMXMapInfo;

    invoke-direct {v0, p0}, Lorg/cocos2d/layers/CCTMXMapInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseXMLFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "xmlFilename"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 120
    .local v6, "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 121
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 123
    .local v5, "reader":Lorg/xml/sax/XMLReader;
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 125
    .local v3, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v1, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;

    invoke-direct {v1, p0}, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;-><init>(Lorg/cocos2d/layers/CCTMXMapInfo;)V

    .line 128
    .local v1, "handler":Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 129
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "handler":Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "reader":Lorg/xml/sax/XMLReader;
    .end local v6    # "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
