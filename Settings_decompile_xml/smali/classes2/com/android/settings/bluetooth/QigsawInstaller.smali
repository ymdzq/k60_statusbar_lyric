.class public Lcom/android/settings/bluetooth/QigsawInstaller;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/QigsawInstaller$BluetoothPluginOneTrackHelper;
    }
.end annotation


# static fields
.field private static HEADSETPLUGIN_INITED:I = 0x1


# instance fields
.field public final INSTALL_STATUS_INGORE:I

.field public final INSTALL_STATUS_UNKNOWN:I

.field private mContext:Landroid/content/Context;

.field private mFirstStartup:Z

.field private mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field private mModuleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

.field private mSessionId:I

.field private mStatus:I

.field private myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

.field private startInstallFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/QigsawInstaller;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstallManager(Lcom/android/settings/bluetooth/QigsawInstaller;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mModuleNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQigsawInstallerCallback(Lcom/android/settings/bluetooth/QigsawInstaller;)Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/settings/bluetooth/QigsawInstaller;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSessionId(Lcom/android/settings/bluetooth/QigsawInstaller;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStatus(Lcom/android/settings/bluetooth/QigsawInstaller;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartInstallFlag(Lcom/android/settings/bluetooth/QigsawInstaller;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->startInstallFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEspecialError(Lcom/android/settings/bluetooth/QigsawInstaller;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->checkEspecialError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDownloaded(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onDownloaded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDownloading(Lcom/android/settings/bluetooth/QigsawInstaller;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->onDownloading(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFailed(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInstalled(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onInstalled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInstalling(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onInstalling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRequiresUserConfirmation(Lcom/android/settings/bluetooth/QigsawInstaller;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->onRequiresUserConfirmation(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquit(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->quit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartInstall(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->startInstall()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->INSTALL_STATUS_UNKNOWN:I

    const/4 v1, 0x2

    .line 51
    iput v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->INSTALL_STATUS_INGORE:I

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mFirstStartup:Z

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/QigsawInstaller$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$1;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    .line 126
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkEspecialError(I)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkEspecialError code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QigsawInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->doRollbackVersion()Z

    :goto_0
    return-void
.end method

.method private doRollbackVersion()Z
    .locals 3

    const-string v0, "QigsawInstaller"

    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "doRollbackVersion SplitInfoManager is null!"

    .line 314
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    invoke-interface {v2, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->rollbackSplitInfoVersion(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "doRollbackVersion error! catch:"

    .line 320
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private onDownloaded()V
    .locals 1

    const-string p0, "QigsawInstaller"

    const-string/jumbo v0, "on downloaded"

    .line 237
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDownloading(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    const-string p0, "QigsawInstaller"

    const-string/jumbo p1, "on downloaded message"

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onFailed()V
    .locals 2

    const-string v0, "QigsawInstaller"

    const-string/jumbo v1, "on install failed"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->quit()V

    .line 255
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    if-eqz p0, :cond_0

    .line 256
    invoke-interface {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;->onQigsawCanceled()V

    :cond_0
    return-void
.end method

.method private onInstalled()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onInstallOK()V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->quit()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mModuleNames:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;->onQigsawInstalled(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private onInstalling()V
    .locals 1

    const-string p0, "QigsawInstaller"

    const-string/jumbo v0, "on installing"

    .line 241
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRequiresUserConfirmation(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 7

    .line 224
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private quit()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    :cond_0
    return-void
.end method

.method private startInstall()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mModuleNames:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->onInstalled()V

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mModuleNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/QigsawInstaller$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$3;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/QigsawInstaller$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$2;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method


# virtual methods
.method public backPressed()I
    .locals 3

    .line 272
    iget v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mStatus:I

    if-nez v0, :cond_0

    const-string p0, "QigsawInstaller"

    const-string v0, "Split download is not started!"

    .line 273
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->startInstallFlag:Z

    if-nez v0, :cond_2

    return v2

    .line 285
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mSessionId:I

    if-eqz v0, :cond_3

    .line 286
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/QigsawInstaller$6;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$6;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/QigsawInstaller$5;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/QigsawInstaller$5;-><init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public initInstall(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    iget v0, v0, Lcom/android/settings/SettingsApplication;->mQigsawStarted:I

    .line 132
    sget v1, Lcom/android/settings/bluetooth/QigsawInstaller;->HEADSETPLUGIN_INITED:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p1, "QigsawInstaller"

    const-string/jumbo v0, "the qigsaw does not start up"

    .line 133
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->quit()V

    return v2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mModuleNames:Ljava/util/ArrayList;

    .line 144
    iget-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 145
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mFirstStartup:Z

    if-eqz p1, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->startInstall()V

    .line 148
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mFirstStartup:Z

    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected onInstallOK()V
    .locals 1

    const-string p0, "QigsawInstaller"

    const-string/jumbo v0, "on install ok"

    .line 268
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    return-void
.end method

.method public unRegisterCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller;->mQigsawInstallerCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    return-void
.end method
