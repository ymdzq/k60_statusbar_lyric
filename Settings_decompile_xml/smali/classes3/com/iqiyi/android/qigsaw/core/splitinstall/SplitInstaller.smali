.class abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.super Ljava/lang/Object;
.source "SplitInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;,
        Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkSplitMD5(Ljava/io/File;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method

.method protected abstract createInstalledMark(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method

.method protected abstract createInstalledMarkLock(Ljava/io/File;Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method

.method protected abstract extractLib(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method

.method protected abstract extractMultiDex(Ljava/io/File;Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;
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
.end method

.method public abstract install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method

.method protected abstract verifySignature(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
        }
    .end annotation
.end method
