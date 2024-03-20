.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;
.super Ljava/lang/Object;
.source "MiuiBluetoothBroadcastAudioSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;


# direct methods
.method public static synthetic $r8$lambda$23UPsAtLLFMqbWmzOJ4YIKQ24cM(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->lambda$onSourceFound$1(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Ix8yMNE3TtdTY6uGx2uGsca9eY(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->lambda$onSearchStarted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$OyD4SHsZvi-bBdgLrnpcLuhO700(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->lambda$onSourceRemoved$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$jXgsg3Ugr_poAiKuIY9-jUQbgZw(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->lambda$onReceiveStateChanged$4(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l90bA7n1uQsCS0x2b9tYQvm_vJg(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->lambda$onSourceAdded$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceiveStateChanged$4(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mupdateListCategoryFromBroadcastReceiveState(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method private synthetic lambda$onSearchStarted$0()V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mhandleSearchStarted(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    return-void
.end method

.method private synthetic lambda$onSourceAdded$2()V
    .locals 2

    .line 182
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    .line 183
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    invoke-static {p0, v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private synthetic lambda$onSourceFound$1(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private synthetic lambda$onSourceRemoved$3()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mhandleSourceRemoved(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    return-void
.end method


# virtual methods
.method public onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo p2, "onReceiveStateChanged:"

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchStartFailed(I)V
    .locals 1

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSearchStartFailed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchStarted(I)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSearchStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchStopFailed(I)V
    .locals 1

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSearchStopFailed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchStopped(I)V
    .locals 1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSearchStopped: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo p1, "onSourceAddFailed: clear the mSelectedPreference."

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string/jumbo p1, "onSourceAdded"

    const-string p3, "MiuiBluetoothBroadcastAudioSettings"

    .line 175
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->setSourceId(I)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    iget-object p2, p1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    if-nez p2, :cond_0

    const-string/jumbo p0, "onSourceAdded: mSelectedPreference == null!"

    .line 178
    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo v1, "onSourceFound:"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo p1, "onSourceRemoveFailed:"

    .line 214
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo p2, "onSourceRemoved:"

    .line 207
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
