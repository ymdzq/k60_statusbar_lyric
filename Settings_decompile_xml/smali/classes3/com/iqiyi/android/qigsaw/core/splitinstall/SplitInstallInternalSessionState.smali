.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;
.super Ljava/lang/Object;
.source "SplitInstallInternalSessionState.java"


# instance fields
.field private bytesDownloaded:J

.field final downloadRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode:I

.field private final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final needInstalledSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:I

.field private splitFileIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field private totalBytesToDownload:J

.field private userConfirmationIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    .line 65
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->needInstalledSplits:Ljava/util/List;

    .line 67
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->downloadRequests:Ljava/util/List;

    return-void
.end method

.method static transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;
    .locals 4

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "status"

    .line 117
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    .line 118
    iget v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "total_bytes_to_download"

    .line 119
    iget-wide v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->totalBytesToDownload:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bytes_downloaded"

    .line 120
    iget-wide v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "module_names"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "user_confirmation_intent"

    .line 122
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->splitFileIntents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    const-string/jumbo v1, "split_file_intents"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method moduleNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames:Ljava/util/List;

    return-object p0
.end method

.method sessionId()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    return p0
.end method

.method setBytesDownloaded(J)V
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 76
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->bytesDownloaded:J

    :cond_0
    return-void
.end method

.method setErrorCode(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->errorCode:I

    return-void
.end method

.method setSessionId(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId:I

    return-void
.end method

.method setSplitFileIntents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->splitFileIntents:Ljava/util/List;

    return-void
.end method

.method setStatus(I)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    if-eq v0, p1, :cond_0

    .line 94
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    :cond_0
    return-void
.end method

.method setTotalBytesToDownload(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->totalBytesToDownload:J

    return-void
.end method

.method setUserConfirmationIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method status()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status:I

    return p0
.end method
