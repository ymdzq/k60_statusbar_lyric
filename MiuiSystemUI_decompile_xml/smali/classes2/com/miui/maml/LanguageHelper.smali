.class public Lcom/miui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "strings/strings.xml"

    .line 2
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 16
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 32
    move-result p0

    .line 35
    const/4 v3, 0x0

    .line 36
    const-string v4, "LanguageHelper"

    .line 37
    if-nez p0, :cond_2

    .line 39
    invoke-virtual {p1, v0}, Lcom/miui/maml/ResourceManager;->resourceExists(Ljava/lang/String;)Z

    .line 41
    move-result p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    const-string p0, "no available string resources to load."

    .line 47
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v3

    .line 52
    :cond_2
    move-object v0, v2

    .line 53
    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 54
    move-result-object p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p1, v0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v1, :cond_4

    .line 70
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :cond_4
    :goto_1
    invoke-static {p0, p2}, Lcom/miui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z

    .line 80
    move-result p0

    .line 83
    return p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_3

    .line 86
    :catch_1
    move-exception p0

    .line 87
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v1, :cond_5

    .line 95
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    goto :goto_2

    .line 100
    :catch_2
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_5
    :goto_2
    return v3

    .line 105
    :goto_3
    if-eqz v1, :cond_6

    .line 106
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 108
    goto :goto_4

    .line 111
    :catch_3
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :cond_6
    :goto_4
    throw p0
    .line 116
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lcom/miui/maml/data/Variables;)Z
    .locals 7

    .line 1
    const-string v0, "resources"

    .line 2
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-gtz v1, :cond_1

    .line 14
    const-string/jumbo v0, "strings"

    .line 16
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 23
    move-result p0

    .line 26
    if-gtz p0, :cond_0

    .line 27
    return v2

    .line 29
    :cond_0
    move p0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p0, v3

    .line 32
    :goto_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lorg/w3c/dom/Element;

    .line 37
    const-string/jumbo v1, "string"

    .line 39
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 42
    move-result-object v0

    .line 45
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 46
    move-result v1

    .line 49
    if-ge v2, v1, :cond_3

    .line 50
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 52
    move-result-object v1

    .line 55
    check-cast v1, Lorg/w3c/dom/Element;

    .line 56
    const-string v4, "name"

    .line 58
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 63
    if-eqz p0, :cond_2

    .line 64
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const-string/jumbo v5, "value"

    .line 71
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    :goto_2
    const-string v5, "\\\\"

    .line 78
    const-string v6, ""

    .line 80
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {p1, v4, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 91
    :cond_3
    return v3
    .line 92
.end method
