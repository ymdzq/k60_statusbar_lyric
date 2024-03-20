.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.source "MiuiAuracastQcomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleBroadcastAudioScanAssistCallbackImpl"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 1

    .line 1519
    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    const/4 v0, 0x0

    .line 1518
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    .line 1520
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 1538
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1542
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 1577
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1581
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 1547
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1551
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBleBroadcastAudioSourceUpdatedDetail(Landroid/bluetooth/BluetoothDevice;BILandroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 3

    .line 1559
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastAudioSourceUpdatedDetailHandle(Landroid/bluetooth/BluetoothDevice;BILandroid/bluetooth/BleBroadcastSourceInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1563
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 1569
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1573
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 3
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

    .line 1529
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFragment is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p0, "mFragment is null"

    .line 1533
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
