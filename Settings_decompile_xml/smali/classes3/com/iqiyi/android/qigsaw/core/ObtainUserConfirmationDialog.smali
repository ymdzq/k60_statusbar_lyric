.class public abstract Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;
.super Landroid/app/Activity;
.source "ObtainUserConfirmationDialog.java"


# instance fields
.field private installService:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

.field private moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realTotalBytesNeedToDownload:J

.field private sessionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternParametersIllegal()Z
    .locals 4

    .line 83
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->sessionId:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->realTotalBytesNeedToDownload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->moduleNames:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 84
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected getModuleNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->moduleNames:Ljava/util/List;

    return-object p0
.end method

.method protected getRealTotalBytesNeedToDownload()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->realTotalBytesNeedToDownload:J

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "sessionId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->sessionId:I

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "realTotalBytesNeedToDownload"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->realTotalBytesNeedToDownload:J

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "moduleNames"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->moduleNames:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->getSplitInstallSupervisor()Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->installService:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    return-void
.end method

.method protected onUserCancel()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->installService:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    if-eqz v0, :cond_1

    .line 67
    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->cancelInstallWithoutUserConfirmation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onUserConfirm()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->installService:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;

    if-eqz v0, :cond_1

    .line 58
    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->continueInstallWithUserConfirmation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
