.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;
.super Ljava/lang/Object;
.source "SplitInfoVersionManagerImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl$RunableTask;
    }
.end annotation


# static fields
.field public static final PROC_USER_ID:I

.field private static final TAG:Ljava/lang/String; = "SplitInfoVersionManager"


# instance fields
.field private currentVersion:Ljava/lang/String;

.field private defaultVersion:Ljava/lang/String;

.field private isMainProcess:Z

.field private rootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    sput v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->PROC_USER_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    .line 70
    iput-boolean p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    .line 71
    new-instance p2, Ljava/io/File;

    const-string p3, "qigsaw"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance p3, Ljava/io/File;

    const-string/jumbo p4, "split_info_version"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    .line 73
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->processVersionData(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->reportNewSplitInfoVersionLoaded()V

    return-void
.end method

.method static createSplitInfoVersionManager(Landroid/content/Context;Z)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;
    .locals 3

    .line 59
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDefaultSplitInfoVersion()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getQigsawId()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private customStrCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    return v0

    .line 96
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, -0x1

    if-eqz p0, :cond_2

    return v1

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_3

    return v1

    :cond_3
    if-le p0, v2, :cond_4

    return v0

    .line 108
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private processVersionData(Landroid/content/Context;)V
    .locals 5

    .line 172
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SplitInfoVersionManager"

    if-nez v0, :cond_0

    const-string v0, "No new split info version, just use default version."

    new-array v1, v1, [Ljava/lang/Object;

    .line 174
    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    .line 178
    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "Splits have been updated, so we use new split info version %s."

    .line 180
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_1
    iget-boolean v4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    if-eqz v4, :cond_3

    .line 184
    new-instance v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    invoke-direct {v4, v0, v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    const-string v0, "Splits have been updated, start to kill other processes!"

    new-array v1, v1, [Ljava/lang/Object;

    .line 188
    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    iput-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update new split info version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_3
    iput-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->useBasePlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl$RunableTask;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl$RunableTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;
    .locals 1

    .line 253
    :try_start_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;-><init>(Ljava/io/File;)V

    .line 254
    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;->readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object p0

    .line 255
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private reportNewSplitInfoVersionLoaded()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->isMainProcess:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateReporterManager;->getUpdateReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;->onNewSplitInfoVersionLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z
    .locals 1

    .line 241
    :try_start_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;-><init>(Ljava/io/File;)V

    .line 242
    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result p0

    .line 243
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private useBasePlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\\."

    const-string v1, "_"

    const-string v2, "SplitInfoVersionManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    goto/16 :goto_0

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 125
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "useBasePlugin invalid base version:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 129
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 130
    array-length v1, p1

    if-eq v1, v7, :cond_3

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "useBasePlugin invalid new version:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 135
    :cond_3
    aget-object p2, v5, v3

    aget-object v1, p1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 136
    aget-object p2, v5, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 137
    array-length v1, p2

    if-eq v1, v7, :cond_4

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "useBasePlugin invalid base split version:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v5, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 141
    :cond_4
    aget-object v1, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    array-length v1, v0

    if-eq v1, v7, :cond_5

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "useBasePlugin invalid new split version:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 147
    :cond_5
    aget-object p1, p2, v3

    aget-object v1, v0, v3

    invoke-direct {p0, p1, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->customStrCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_6

    return v3

    .line 150
    :cond_6
    aget-object p1, p2, v3

    aget-object v1, v0, v3

    invoke-direct {p0, p1, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->customStrCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_7

    return v4

    .line 153
    :cond_7
    aget-object p1, p2, v4

    aget-object p2, v0, v4

    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->customStrCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p0, :cond_8

    return v3

    :cond_8
    return v4

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkVersion split failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 120
    :cond_9
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "useBasePlugin invalid paras:\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 115
    :cond_a
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "useBasePlugin invalid paras:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method


# virtual methods
.method public getCurrentVersion()Ljava/lang/String;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultVersion()Ljava/lang/String;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    return-object p0
.end method

.method public rollbackDefaultVersion(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "SplitInfoVersionManager"

    .line 313
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 316
    :try_start_0
    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;-><init>(Ljava/io/File;)V

    .line 317
    invoke-interface {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;->destroyVersionData()Z

    move-result v3

    .line 318
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rollbackDefaultVersion: failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_0
    const-string/jumbo v2, "rollbackDefaultVersion: currentVersion("

    if-eqz v3, :cond_0

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is rollbacking to default("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->processVersionData(Landroid/content/Context;)V

    .line 328
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->reportNewSplitInfoVersionLoaded()V

    goto :goto_1

    .line 331
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed rollbacking to default("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->defaultVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")!!!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .line 265
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "SplitInfoVersionManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Failed to make dir for split info file!"

    new-array p1, v1, [Ljava/lang/Object;

    .line 267
    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qigsaw_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->rootDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-static {p3, v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 276
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    invoke-direct {p1, v2, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Success to update split info version, current version %s, new version %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->currentVersion:Ljava/lang/String;

    aput-object p0, v2, v1

    const/4 p0, 0x1

    aput-object p2, v2, p0

    invoke-static {v0, p1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    move p0, v1

    .line 281
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to delete temp split info file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, p1

    move p1, p0

    move-object p0, v4

    goto :goto_1

    :catch_1
    move-exception p0

    move p1, v1

    .line 287
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename file : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, p1

    :cond_2
    :goto_2
    return p0
.end method
