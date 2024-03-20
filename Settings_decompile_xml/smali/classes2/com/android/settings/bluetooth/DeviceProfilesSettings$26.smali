.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForOpenAudioRepair()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 3741
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 3743
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3744
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/ProgressDialog;)V

    .line 3745
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "persist.vendor.bt.a2dp.choppy"

    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$misDeviceInListForAudioRepair(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3746
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$maddToWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 3748
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mdelFromWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V

    .line 3750
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 3751
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DeviceProfilesSettings"

    const-string v0, "Disable BT for audio repair"

    .line 3752
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 3754
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 3755
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3756
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    sget v0, Lcom/android/settings/R$string;->bt_audiorepair_working:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3757
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 3758
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3759
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Handler;)V

    .line 3761
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "bqr_trigger"

    const-string/jumbo v0, "user_add"

    .line 3762
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "BQR_TRIG"

    .line 3763
    invoke-static {p2, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 3764
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
