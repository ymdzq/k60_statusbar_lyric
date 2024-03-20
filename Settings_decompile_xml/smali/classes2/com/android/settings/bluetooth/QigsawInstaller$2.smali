.class Lcom/android/settings/bluetooth/QigsawInstaller$2;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/QigsawInstaller;->startInstall()V
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

    .line 171
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$2;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$2;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fputstartInstallFlag(Lcom/android/settings/bluetooth/QigsawInstaller;Z)V

    .line 175
    instance-of v0, p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    if-eqz v0, :cond_1

    .line 177
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    .line 178
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getErrorCode()I

    move-result v0

    .line 179
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;->getModuleNames()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFailure track : moduleName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QigsawInstaller"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v4, p0, Lcom/android/settings/bluetooth/QigsawInstaller$2;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v4}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/QigsawInstaller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/android/settings/bluetooth/QigsawInstaller$BluetoothPluginOneTrackHelper;->trackFailed(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$2;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$monFailed(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    :cond_1
    return-void
.end method
