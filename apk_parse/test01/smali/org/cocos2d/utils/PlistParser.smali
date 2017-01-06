.class public Lorg/cocos2d/utils/PlistParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PlistParser.java"


# static fields
.field private static final COLL_ARRAY:I = 0x2

.field private static final COLL_DICT:I = 0x1

.field private static final COLL_UNKNOWN:I = 0x0

.field private static final EL_ARRAY:Ljava/lang/String; = "array"

.field private static final EL_DATA:Ljava/lang/String; = "data"

.field private static final EL_DATE:Ljava/lang/String; = "date"

.field private static final EL_DICT:Ljava/lang/String; = "dict"

.field private static final EL_FALSE:Ljava/lang/String; = "false"

.field private static final EL_INTEGER:Ljava/lang/String; = "integer"

.field private static final EL_KEY:Ljava/lang/String; = "key"

.field private static final EL_REAL:Ljava/lang/String; = "real"

.field private static final EL_STRING:Ljava/lang/String; = "string"

.field private static final EL_TRUE:Ljava/lang/String; = "true"

.field private static final TYPE_DATA:I = 0x4

.field private static final TYPE_DATE:I = 0x5

.field private static final TYPE_INTEGER:I = 0x3

.field private static final TYPE_KEY:I = 0x1

.field private static final TYPE_REAL:I = 0x6

.field private static final TYPE_STRING:I = 0x2

.field private static final TYPE_UNKNOWN:I

.field private static final dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private characterData:Ljava/lang/StringBuilder;

.field private currentCollection:Ljava/lang/Object;

.field private currentCollectionType:I

.field private currentElement:I

.field private currentKey:Ljava/lang/String;

.field private depthStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rootDict:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'hh:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/cocos2d/utils/PlistParser;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 120
    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    .line 122
    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollectionType:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/PlistParser;->depthStack:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    .line 129
    return-void
.end method

.method private addToCollection(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 163
    iget v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollectionType:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollection:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/cocos2d/utils/PlistParser;->currentKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollection:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :pswitch_2
    iput-object p1, p0, Lorg/cocos2d/utils/PlistParser;->rootDict:Ljava/lang/Object;

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private depthDown()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->depthStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    .local v1, "s":I
    if-lez v1, :cond_1

    .line 151
    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->depthStack:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "currCol":Ljava/lang/Object;
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->depthStack:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .end local v0    # "currCol":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/PlistParser;->setupCurrentCollection(Ljava/lang/Object;)V

    .line 159
    :cond_1
    return-void
.end method

.method private depthUp(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newcoll"    # Ljava/lang/Object;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/cocos2d/utils/PlistParser;->depthStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0, p1}, Lorg/cocos2d/utils/PlistParser;->setupCurrentCollection(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lorg/cocos2d/utils/PlistParser;->parsePlist(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 49
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lorg/cocos2d/utils/ContentHelper;->sharedHelper()Lorg/cocos2d/utils/ContentHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/cocos2d/utils/ContentHelper;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 38
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/cocos2d/utils/PlistParser;->parse(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseArray(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lorg/cocos2d/utils/PlistParser;->parsePlist(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lorg/cocos2d/utils/ContentHelper;->sharedHelper()Lorg/cocos2d/utils/ContentHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/cocos2d/utils/ContentHelper;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 55
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/cocos2d/utils/PlistParser;->parseArray(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static parsePlist(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 72
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 73
    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lorg/cocos2d/utils/PlistParser;

    invoke-direct {v2}, Lorg/cocos2d/utils/PlistParser;-><init>()V

    .line 76
    .local v2, "handler":Lorg/cocos2d/utils/PlistParser;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 79
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v5, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 81
    iget-object v5, v2, Lorg/cocos2d/utils/PlistParser;->rootDict:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 83
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "handler":Lorg/cocos2d/utils/PlistParser;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private setupCurrentCollection(Ljava/lang/Object;)V
    .locals 1
    .param p1, "coll"    # Ljava/lang/Object;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/cocos2d/utils/PlistParser;->currentCollection:Ljava/lang/Object;

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollectionType:I

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollectionType:I

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentCollectionType:I

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "_chars"    # [C
    .param p2, "_start"    # I
    .param p3, "_len"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 257
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 208
    iget v1, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_0
    iput v3, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    .line 242
    iget-object v1, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    const-string v1, "dict"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "array"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    invoke-direct {p0}, Lorg/cocos2d/utils/PlistParser;->depthDown()V

    .line 247
    :cond_1
    return-void

    .line 210
    :pswitch_0
    iget-object v1, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/PlistParser;->currentKey:Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v1, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_3
    :try_start_1
    sget-object v1, Lorg/cocos2d/utils/PlistParser;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/text/ParseException;
    :pswitch_4
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :pswitch_5
    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Lorg/cocos2d/utils/PlistParser;->characterData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 179
    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iput v1, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    goto :goto_0

    .line 183
    :cond_2
    const-string v0, "integer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    goto :goto_0

    .line 185
    :cond_3
    const-string v0, "real"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    goto :goto_0

    .line 187
    :cond_4
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    goto :goto_0

    .line 189
    :cond_5
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    const/4 v0, 0x5

    iput v0, p0, Lorg/cocos2d/utils/PlistParser;->currentElement:I

    goto :goto_0

    .line 191
    :cond_6
    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_7
    const-string v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/utils/PlistParser;->addToCollection(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_8
    const-string v0, "dict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/cocos2d/utils/PlistParser;->depthUp(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_9
    const-string v0, "array"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/cocos2d/utils/PlistParser;->depthUp(Ljava/lang/Object;)V

    goto :goto_0
.end method
