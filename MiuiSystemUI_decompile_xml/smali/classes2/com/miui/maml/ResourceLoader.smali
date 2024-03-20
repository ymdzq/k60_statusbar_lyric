.class public abstract Lcom/miui/maml/ResourceLoader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mLocale:Ljava/util/Locale;

.field protected mManifestName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "manifest.xml"

    .line 5
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 7
    const-string v0, "config.xml"

    .line 9
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_"

    const-string v2, "/"

    if-nez v0, :cond_0

    .line 8
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 10
    invoke-static {v0, v3, v2, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 15
    invoke-static {v0, v1, v2, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 17
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-static {p2, v2, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    const-string v0, "ResourceLoader"

    .line 11
    if-nez p0, :cond_0

    .line 13
    const-string p0, "getXmlRoot local inputStream is null"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-object p1

    .line 20
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :catch_0
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :catch_1
    move-exception v1

    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 51
    goto :goto_1

    .line 54
    :catch_2
    move-exception v1

    .line 55
    :try_start_4
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 63
    :catch_3
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 72
    :catch_4
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_0

    .line 81
    :catch_5
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    goto :goto_0

    .line 90
    :catch_6
    :goto_1
    return-object p1

    .line 91
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 92
    :catch_7
    throw p1
    .line 95
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 7

    .line 1
    const-string v0, "fail to decode bitmap: "

    .line 2
    const-string v1, "TRY AGAIN to decode bitmap: "

    .line 4
    const-string v2, "images"

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const-string v5, "ResourceLoader"

    .line 13
    if-nez v3, :cond_0

    .line 15
    const-string v3, "TRY AGAIN to get getPathForLanguage: "

    .line 17
    invoke-static {v3, p1, v5}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, v2}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    const-string p2, "fail to get getPathForLanguage: "

    .line 30
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v4

    .line 45
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 46
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    const-string v6, "TRY AGAIN to get InputStream: "

    .line 54
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, v3}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 69
    move-result-object v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    const-string p2, "fail to get InputStream: "

    .line 77
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v4

    .line 92
    :cond_1
    :try_start_0
    new-instance p0, Landroid/graphics/Rect;

    .line 93
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 95
    invoke-static {v2, p0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    move-result-object v3

    .line 101
    if-nez v3, :cond_2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 115
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v2, p0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    move-result-object p0

    .line 122
    if-nez p0, :cond_3

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 136
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :catch_0
    return-object v4

    .line 143
    :cond_2
    :try_start_2
    new-instance p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 144
    invoke-direct {p1, v3, p0}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 149
    :catch_1
    return-object p1

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_0

    .line 154
    :catch_2
    move-exception p0

    .line 155
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 159
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    :catch_3
    return-object v4

    .line 166
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 167
    :catch_4
    throw p0
    .line 170
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getExtraFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 9

    .line 1
    const-string v0, "ResourceLoader"

    .line 2
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 7
    move-result-object p0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    return-object v2

    .line 14
    :cond_0
    const/high16 v3, 0x10000

    .line 15
    :try_start_0
    new-array v4, v3, [B

    .line 17
    new-instance v5, Landroid/os/MemoryFile;

    .line 19
    const/4 v6, 0x0

    .line 21
    aget-wide v7, v1, v6

    .line 22
    long-to-int v1, v7

    .line 24
    invoke-direct {v5, p1, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 25
    move p1, v6

    .line 28
    :goto_0
    invoke-virtual {p0, v4, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 29
    move-result v1

    .line 32
    if-lez v1, :cond_1

    .line 33
    invoke-virtual {v5, v4, v6, p1, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 35
    add-int/2addr p1, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v5}, Landroid/os/MemoryFile;->length()I

    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-lez p1, :cond_2

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :catch_0
    return-object v5

    .line 49
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 50
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :catch_1
    move-exception p1

    .line 56
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_1

    .line 64
    :catch_2
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    goto :goto_1

    .line 73
    :catch_3
    :goto_2
    return-object v2

    .line 74
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 75
    :catch_4
    throw p1
    .line 78
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 2
    return-object p0
    .line 4
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    move-object p1, v1

    :cond_3
    return-object p1
.end method

.method public init()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 16
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/miui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/miui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 27
    return-object p0
    .line 29
.end method
