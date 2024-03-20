.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.source "MiuiBleAudioSourceInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method public onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 431
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method
