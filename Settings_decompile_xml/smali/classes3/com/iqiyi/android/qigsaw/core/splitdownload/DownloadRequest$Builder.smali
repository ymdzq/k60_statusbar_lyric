.class public Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fileDir:Ljava/lang/String;

.field private fileMD5:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetfileDir(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileMD5(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileName(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmoduleName(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->size:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
    .locals 2

    .line 162
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest-IA;)V

    return-object v0
.end method

.method public fileDir(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public fileMD5(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5:Ljava/lang/String;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public moduleName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public size(J)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 157
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->size:J

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
