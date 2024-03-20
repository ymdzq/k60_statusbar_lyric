.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
.source "SplitLoadManagerImpl.java"


# instance fields
.field private final forbiddenWorkProcesses:[Ljava/lang/String;

.field private final qigsawMode:Z

.field private final workProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p5, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    iput-boolean p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->qigsawMode:Z

    .line 72
    iput-object p6, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->workProcesses:[Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->forbiddenWorkProcesses:[Ljava/lang/String;

    .line 74
    invoke-static {p1, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->install(Landroid/content/Context;Z)V

    .line 75
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->install(Landroid/content/Context;)V

    return-void
.end method

.method private canBeWorkedInThisProcessForSplit(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getWorkProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private createInstalledSplitFileIntents(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 185
    invoke-direct {p0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->canBeWorkedInThisProcessForSplit(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v2

    const-string v3, "SplitLoadManager"

    if-eqz v2, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getLoadedSplitNames()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Split %s has been loaded, ignore it!"

    invoke-static {v3, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkDataForMaster()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    move-result-object v2

    .line 192
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    move-result-object v4

    .line 193
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->obtainInstalledMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 196
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->getAbi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitLibDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 198
    :goto_1
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v6, "native://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_2

    :cond_2
    move v2, v8

    .line 199
    :goto_2
    invoke-direct {p0, v2, v5, v4, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->createLastInstalledSplitFileIntent(ZLjava/lang/String;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "Split %s will work in process %s, %s it is %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 204
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    aput-object v1, v5, v7

    if-nez v2, :cond_4

    const-string v1, "but"

    goto :goto_3

    :cond_4
    const-string v1, "and"

    :goto_3
    const/4 v6, 0x2

    aput-object v1, v5, v6

    if-nez v2, :cond_5

    const-string v1, "not installed"

    goto :goto_4

    :cond_5
    const-string v1, "installed"

    :goto_4
    const/4 v2, 0x3

    aput-object v1, v5, v2

    .line 203
    invoke-static {v3, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    :cond_6
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Split %s do not need work in process %s"

    invoke-static {v3, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private createLastInstalledSplitFileIntent(ZLjava/lang/String;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Landroid/content/Intent;
    .locals 8

    .line 231
    invoke-virtual {p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v1

    .line 233
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v3

    invoke-virtual {v3, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitSpecialMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 237
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "split_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "master"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "SplitLoadManager"

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "In vivo & oppo, we need to check oat file when split is going to be loaded."

    new-array v5, v3, [Ljava/lang/Object;

    .line 243
    invoke-static {v4, v1, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitOptDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v1

    .line 245
    invoke-static {p1, v1}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->getOatFilePath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->checkOatFile(Ljava/io/File;)Z

    move-result v5

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check result of oat file %s is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v6

    invoke-virtual {v6, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitSpecialLockFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v6

    if-eqz v5, :cond_1

    .line 252
    :try_start_0
    invoke-static {v2, v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->createFileSafelyLock(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create installed mark file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_1
    :try_start_1
    invoke-static {v1, v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafelyLock(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 260
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete corrupted oat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Oat file %s is still not exist in vivo & oppo, system continue to use interpreter mode."

    invoke-static {v4, v5, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    .line 268
    :cond_5
    :goto_2
    invoke-virtual {p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v1, "Split %s has dependencies %s !"

    .line 270
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v5

    .line 274
    :try_start_2
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->obtainInstalledMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    const-string p0, "Dependency %s mark file is not existed!"

    .line 277
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-object v2

    .line 287
    :cond_7
    invoke-virtual {p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasDex()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 288
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitOptDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitCodeCacheDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object p4

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;)V

    invoke-virtual {p4, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 297
    array-length p4, p0

    if-lez p4, :cond_9

    .line 298
    array-length p4, p0

    :goto_3
    if-ge v3, p4, :cond_9

    aget-object v1, p0, v3

    .line 299
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move-object p2, v2

    .line 303
    :cond_9
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p4, "splitName"

    .line 304
    invoke-virtual {p0, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "apk"

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_a

    const-string p1, "dex-opt-dir"

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-eqz p3, :cond_b

    const-string p1, "native-lib-dir"

    .line 310
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    if-eqz p2, :cond_c

    const-string p1, "added-dex"

    .line 313
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_c
    return-object p0
.end method

.method private filterIntentsCanWorkInThisProcess(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    .line 160
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    const-string/jumbo v3, "splitName"

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v3

    .line 163
    invoke-direct {p0, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->canBeWorkedInThisProcessForSplit(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v4

    const-string v5, "SplitLoadManager"

    if-eqz v4, :cond_1

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Split %s need load in process %s"

    invoke-static {v5, v3, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Split %s do not need load in process %s"

    invoke-static {v5, v3, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBaseContext()Landroid/content/Context;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 330
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 331
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getCompleteProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 365
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private injectClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->inject(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SplitLoadManager"

    const-string v1, "Failed to hook PathClassloader"

    .line 324
    invoke-static {v0, p0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private isInjectPathClassloaderNeeded()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;

    if-nez v0, :cond_0

    .line 178
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->qigsawMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProcessAllowedToWork()Z
    .locals 7

    .line 337
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->workProcesses:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->forbiddenWorkProcesses:[Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->forbiddenWorkProcesses:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 344
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 345
    invoke-direct {p0, v5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->getCompleteProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->workProcesses:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 351
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 352
    invoke-direct {p0, v4}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->getCompleteProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private loadInstalledSplitsInternal(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SplitLoadManager"

    if-nez v0, :cond_0

    const-string p0, "Failed to get SplitInfoManager instance, have you invoke Qigsaw#install(...) method?"

    new-array p1, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->createInstalledSplitFileIntents(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "There are no installed splits!"

    new-array p1, v1, [Ljava/lang/Object;

    .line 148
    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    :goto_1
    const-string p0, "Failed to get Split-Info list!"

    new-array p1, v1, [Ljava/lang/Object;

    .line 142
    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->filterIntentsCanWorkInThisProcess(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitload/SkipSplitLoadTaskImpl;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SkipSplitLoadTaskImpl;-><init>()V

    return-object p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-object v0

    .line 120
    :cond_1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl2;

    invoke-direct {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl2;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-object v0
.end method

.method public getResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public injectPathClassloader()V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->isInjectPathClassloaderNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->isProcessAllowedToWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->injectClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode()I

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 88
    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDelegateClassloader;->setClassNotFoundInterceptor(Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;)V

    :cond_1
    return-void
.end method

.method public loadInstalledSplits()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->loadInstalledSplitsInternal(Ljava/util/Collection;)V

    return-void
.end method

.method public preloadInstalledSplits(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->qigsawMode:Z

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->isProcessAllowedToWork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;->loadInstalledSplitsInternal(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method
