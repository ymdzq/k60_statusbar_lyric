.class Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;
.super Landroid/os/Handler;
.source "MiuiBluetoothShareBroadcastFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmSynchronizingSourceInfoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmSynchronizingSourceInfoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateUiState(I)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmSynchronizingSourceInfoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmIsSynchronizingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "handleMessage MSG_SOURCE_ADD_TIMEOUT"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;)V

    .line 131
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V

    goto :goto_0

    :cond_4
    const-string p1, "handleMessage MSG_DELAY_SCANNING"

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    :goto_0
    return-void
.end method
