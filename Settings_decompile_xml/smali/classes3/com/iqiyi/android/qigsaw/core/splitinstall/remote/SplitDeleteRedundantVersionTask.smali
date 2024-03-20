.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;
.super Ljava/lang/Object;
.source "SplitDeleteRedundantVersionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_SPLIT_CACHE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplitDeleteRedundantVersionTask"


# instance fields
.field private final allSplits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->allSplits:Ljava/util/Collection;

    .line 53
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->appContext:Landroid/content/Context;

    return-void
.end method

.method private deleteRedundantSplitVersionDirs(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 74
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    array-length p2, p1

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 86
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;

    invoke-direct {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask$2;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 98
    :goto_0
    array-length p0, p1

    if-ge p3, p0, :cond_0

    .line 99
    aget-object p0, p1, p3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "SplitDeleteRedundantVersionTask"

    const-string v1, "Split %s version %s is redundant, so we try to delete it"

    invoke-static {p2, v1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    aget-object p0, p1, p3

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->allSplits:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 60
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    .line 61
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitRootDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v3

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->obtainInstalledMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 65
    invoke-direct {p0, v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitDeleteRedundantVersionTask;->deleteRedundantSplitVersionDirs(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
