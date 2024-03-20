.class public final Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileDir:Ljava/lang/String;

.field private final fileMD5:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final moduleName:Ljava/lang/String;

.field private final size:J

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->size:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgetfileDir(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgeturl(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgetfileName(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgetmoduleName(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgetfileMD5(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->-$$Nest$fgetsize(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->size:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 1

    .line 76
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 55
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
