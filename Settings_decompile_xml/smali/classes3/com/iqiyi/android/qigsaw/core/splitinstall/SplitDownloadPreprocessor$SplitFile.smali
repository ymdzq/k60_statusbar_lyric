.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor$SplitFile;
.super Ljava/io/File;
.source "SplitDownloadPreprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SplitFile"
.end annotation


# instance fields
.field realSize:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    iput-wide p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor$SplitFile;->realSize:J

    return-void
.end method
