.class Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
.super Ljava/lang/Object;
.source "SplitInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallResult"
.end annotation


# instance fields
.field final addedDexPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final apkFile:Ljava/io/File;

.field final firstInstalled:Z

.field final splitDexOptDir:Ljava/io/File;

.field final splitLibDir:Ljava/io/File;

.field final splitName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->apkFile:Ljava/io/File;

    .line 110
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitDexOptDir:Ljava/io/File;

    .line 111
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitLibDir:Ljava/io/File;

    .line 112
    iput-object p5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->addedDexPaths:Ljava/util/List;

    .line 113
    iput-boolean p6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->firstInstalled:Z

    return-void
.end method
