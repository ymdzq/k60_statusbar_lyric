.class Lcom/android/settings/bluetooth/QigsawInstaller$1;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/QigsawInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/QigsawInstaller;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install ok "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QigsawInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fputmStatus(Lcom/android/settings/bluetooth/QigsawInstaller;I)V

    .line 81
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monRequiresUserConfirmation(Lcom/android/settings/bluetooth/QigsawInstaller;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$mcheckEspecialError(Lcom/android/settings/bluetooth/QigsawInstaller;I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v2}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/QigsawInstaller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/settings/bluetooth/QigsawInstaller$BluetoothPluginOneTrackHelper;->trackFailed(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monFailed(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    goto :goto_2

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmModuleNames(Lcom/android/settings/bluetooth/QigsawInstaller;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/QigsawInstaller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/QigsawInstaller$BluetoothPluginOneTrackHelper;->-$$Nest$smtrackInstalled(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monInstalled(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    goto :goto_2

    .line 98
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monInstalling(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    goto :goto_2

    .line 95
    :cond_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monDownloaded(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    goto :goto_2

    .line 92
    :cond_8
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$1;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monDownloading(Lcom/android/settings/bluetooth/QigsawInstaller;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller$1;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
