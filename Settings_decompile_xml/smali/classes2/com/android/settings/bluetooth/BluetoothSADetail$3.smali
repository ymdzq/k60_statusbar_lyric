.class Lcom/android/settings/bluetooth/BluetoothSADetail$3;
.super Ljava/lang/Object;
.source "BluetoothSADetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSADetail;->launchSyncAndBroadcastIndexOptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

.field final synthetic val$broadcastSourceIndicies:Ljava/util/List;

.field final synthetic val$dialogView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->val$dialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->val$broadcastSourceIndicies:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 557
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string p2, "BluetoothSADetail"

    if-nez p1, :cond_0

    const-string p1, "Ignore as there is no clicked device"

    .line 558
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, ">>Local Adapter"

    .line 564
    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iput-object v0, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->val$dialogView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->broadcastPINcode:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 568
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastPinCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Empty broacast PinCode"

    .line 571
    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iput-object v0, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    .line 575
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p2, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_3

    .line 576
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->val$broadcastSourceIndicies:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v1, v0, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z

    :cond_3
    return-void
.end method
