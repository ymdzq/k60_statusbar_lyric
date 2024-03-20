.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createAudioShareConfigPreference()Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pref:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2991
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->val$pref:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrackingTouch()V
    .locals 5

    const-string/jumbo v0, "vendor"

    .line 2993
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmIsInAbsWhitelist(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAbsVolFeature(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string v2, "ABSOLUTEVOLUME"

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "miui_bluetooth_audio_share_volume"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    if-nez v0, :cond_1

    goto :goto_0

    .line 3002
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Integer.parseInt E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DeviceProfilesSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->audio_share_abs_volume_message:I

    invoke-static {v0, v3, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 3008
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->val$pref:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 3009
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->val$pref:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_2

    .line 2994
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mhandleAudioShareVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :goto_2
    return-void
.end method
