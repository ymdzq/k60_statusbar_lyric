.class public Lcom/miui/maml/util/FolderResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FolderResourceLoader"


# instance fields
.field private final mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public getExtraFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance p0, Ljava/io/File;

    .line 10
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 16
    iget-object p0, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 18
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    return-object v0

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 30
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 37
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object p0, v0

    .line 42
    :goto_0
    if-nez p0, :cond_3

    .line 43
    return-object v0

    .line 45
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 46
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    return-object v1

    .line 57
    :cond_4
    return-object v0
    .line 58
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "FolderResourceLoader"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object p0, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string p0, "/"

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    if-eqz p2, :cond_0

    .line 36
    :try_start_1
    array-length p0, p2

    .line 38
    if-lez p0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 41
    move-result p0

    .line 44
    int-to-long p0, p0

    .line 45
    const/4 v1, 0x0

    .line 46
    aput-wide p0, p2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    move-object v1, v0

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p0

    .line 53
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    move-object v0, v1

    .line 57
    :cond_0
    :goto_1
    return-object v0

    .line 58
    :cond_1
    return-object v1
    .line 59
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/io/File;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object p0, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 15
    const-string v2, "/"

    .line 17
    invoke-static {v1, p0, v2, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method
