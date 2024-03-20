.class Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
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
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/le/ScanResult;)V

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

    .line 744
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method
