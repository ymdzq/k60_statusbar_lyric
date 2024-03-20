.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.source "SplitInstallerImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IS_VM_MULTIDEX_CAPABLE:Z

.field private static final TAG:Ljava/lang/String; = "SplitInstallerImpl"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final verifySignature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "java.vm.version"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->isVMMultiDexCapable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->IS_VM_MULTIDEX_CAPABLE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    .line 66
    iput-boolean p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->verifySignature:Z

    return-void
.end method

.method private deleteCorruptedFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 286
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isVMMultiDexCapable()Z
    .locals 0

    .line 276
    sget-boolean p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->IS_VM_MULTIDEX_CAPABLE:Z

    return p0
.end method

.method private static isVMMultiDexCapable(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    .line 293
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 296
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 297
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v3, v4, :cond_1

    if-ne v3, v4, :cond_0

    if-lt v1, v2, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    move v2, v0

    .line 304
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM with version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string p0, " has multidex support"

    goto :goto_1

    :cond_2
    const-string p0, " does not have multidex support"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Split:MultiDex"

    invoke-static {v1, p0, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method protected checkSplitMD5(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->deleteCorruptedFiles(Ljava/util/List;)V

    .line 195
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check split apk md5, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 p2, -0xd

    invoke-direct {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method

.method protected createInstalledMark(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 248
    :try_start_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->createFileSafely(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 251
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    const/16 v0, -0x10

    invoke-direct {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected createInstalledMarkLock(Ljava/io/File;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 261
    :try_start_0
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->createFileSafelyLock(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 264
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    const/16 p2, -0x10

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected extractLib(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    const-string p0, "SplitInstallerImpl"

    const/16 v0, -0xf

    .line 229
    :try_start_0
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;

    invoke-direct {v1, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 231
    :try_start_1
    invoke-virtual {v1, p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->load(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;Z)Ljava/util/List;

    move-result-object p2

    const-string p3, "Succeed to extract libs:  %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {p0, p3, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "Failed to load or extract lib files"

    .line 234
    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    invoke-direct {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :goto_0
    :try_start_4
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 238
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 240
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    invoke-direct {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method protected extractMultiDex(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SplitInstallerImpl"

    const-string v2, "VM do not support multi-dex, but split %s has multi dex files, so we need install other dex files manually"

    .line 201
    invoke-static {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0xe

    .line 206
    :try_start_0
    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;

    invoke-direct {v2, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :try_start_1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {v2, p0, p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;->load(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 209
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 211
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p3, "Succeed to load or extract dex files"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, p1

    invoke-static {v1, p3, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "Failed to load or extract dex files"

    .line 216
    invoke-static {v1, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    invoke-direct {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :goto_1
    :try_start_4
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 220
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 222
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    invoke-direct {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 71
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    .line 76
    :try_start_0
    iget-object v3, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkDataList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 77
    iget-object v4, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    move-result-object v4

    .line 78
    iget-object v5, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->obtainInstalledMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getUrl()Ljava/lang/String;

    move-result-object v9

    const-string v12, "native://"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    new-instance v9, Ljava/io/File;

    iget-object v12, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "split_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getAbi()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".apk"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    move-object v14, v9

    .line 94
    invoke-static {v14}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 100
    iget-boolean v9, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->verifySignature:Z

    const-string v12, "SplitInstallerImpl"

    if-eqz v9, :cond_2

    .line 101
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v15, "Need to verify split %s signature!"

    invoke-static {v12, v15, v9}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0, v14}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->verifySignature(Ljava/io/File;)V

    .line 104
    :cond_2
    invoke-virtual {v8}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->checkSplitMD5(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "master"

    .line 105
    invoke-virtual {v8}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getAbi()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_0

    .line 107
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v8

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;->getAbi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitLibDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 108
    invoke-virtual {v0, v14, v8, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->extractLib(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)V

    move-object/from16 v16, v8

    goto/16 :goto_0

    .line 112
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasDex()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 113
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitOptDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v15

    .line 114
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->isVMMultiDexCapable()Z

    move-result v9

    if-nez v9, :cond_4

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isMultiDex()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitCodeCacheDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v9

    .line 119
    invoke-virtual {v0, v14, v9, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->extractMultiDex(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_4
    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    if-nez v16, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 125
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_6

    .line 127
    :try_start_1
    new-instance v11, Ldalvik/system/DexClassLoader;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const-class v17, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v11, v9, v13, v10, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    const/16 v2, -0x11

    invoke-direct {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_6
    :goto_3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->shouldCheckOatFileInCurrentSys()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start to check oat file, current api level is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v12, v7, v10}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->isSpecialManufacturer()Z

    move-result v7

    .line 138
    invoke-static {v14, v15}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->getOatFilePath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 139
    invoke-static {v10}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 140
    invoke-static {v10}, Lcom/iqiyi/android/qigsaw/core/common/OEMCompat;->checkOatFile(Ljava/io/File;)Z

    move-result v11

    .line 141
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result of oat file %s is "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v11, :cond_9

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check oat file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v12, v0, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_7

    .line 145
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitSpecialLockFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v0

    .line 147
    :try_start_2
    invoke-static {v10, v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafelyLock(Ljava/io/File;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 149
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete corrupted oat file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 152
    :cond_7
    invoke-static {v10}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    .line 154
    :goto_4
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System generate split "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " oat file failed!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const/16 v1, -0x12

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_8
    if-eqz v7, :cond_9

    .line 161
    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "Oat file %s is not exist in vivo & oppo, system would use interpreter mode."

    invoke-static {v12, v9, v7}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitSpecialMarkFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 163
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 164
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitSpecialLockFile(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v7, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->createInstalledMarkLock(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    .line 166
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;

    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v13

    move-object v12, v0

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v18}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Z)V

    return-object v0

    :cond_9
    move-object v13, v8

    move-object v10, v14

    move-object v11, v15

    goto/16 :goto_0

    :cond_a
    move-object v10, v14

    goto/16 :goto_0

    .line 95
    :cond_b
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split apk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is illegal!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const/16 v2, -0xb

    invoke-direct {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 175
    :cond_c
    invoke-virtual {v0, v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->createInstalledMark(Ljava/io/File;)Z

    move-result v14

    .line 176
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;

    invoke-virtual/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v0

    move-object/from16 v12, v16

    invoke-direct/range {v8 .. v14}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Z)V

    return-object v0

    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    const/16 v2, -0x64

    invoke-direct {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method protected verifySignature(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->appContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SignatureValidator;->validateSplit(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;->deleteCorruptedFiles(Ljava/util/List;)V

    .line 183
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;

    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check split apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signature!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    const/16 p1, -0xc

    invoke-direct {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method
