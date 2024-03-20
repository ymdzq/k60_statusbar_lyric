.class Lcom/android/settings/bluetooth/BluetoothSADetail$1;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.source "BluetoothSADetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSADetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSADetail;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    .line 189
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSADetail$1;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceAdded: rcvr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "srcId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSADetail"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-boolean v1, v0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_source_added_message:I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v1, p1, v2, v3}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 269
    iget-object p3, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p3, :cond_1

    .line 271
    iget-boolean p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    invoke-virtual {p3, p2, v0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    .line 275
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 277
    :cond_3
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {p2, p3}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetSourceAdditionErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I

    move-result p3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    invoke-static {v0, p1, p3, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceRemoved: rcvr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "srcId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothSADetail"

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 313
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    .line 315
    invoke-static {p2, p3}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetSourceRemovalErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I

    move-result p3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 314
    invoke-static {v0, p1, p3, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceUpdated: rcvr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "srcId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothSADetail"

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 289
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 290
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    .line 291
    invoke-static {p2, p3}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetSourceUpdateErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I

    move-result p3

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 290
    invoke-static {v0, p1, p3, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastPinUpdated: rcvr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "srcId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothSADetail"

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 302
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p3, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_source_setpin_error_message:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p3, p1, v0, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastSourceFound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSADetail"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "seems like CachedDevice entry already present for this device"

    .line 204
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 211
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Self DEVICE:"

    .line 213
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 217
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting name as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_3

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preference is already present"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    return-void

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 238
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getVendorCachedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    move-result-object p0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->setScanResult(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method public onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 2
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

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastSourceSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sel indicies:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSADetail"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 246
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSADetail;->launchSyncAndBroadcastIndexOptions(Ljava/util/List;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-static {p3, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 249
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object v0, p3, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    .line 250
    invoke-static {v1, p2}, Lcom/android/settings/bluetooth/BluetoothSADetail;->-$$Nest$mgetSourceSelectionErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->commonMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 249
    invoke-static {v0, p1, p2, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistError(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method
