.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$codecPre:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2379
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2381
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mwriteBluetoothA2dpConfiguration(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 2382
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    .line 2383
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 2384
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "latency_pre"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 2385
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2386
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 2388
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV5Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2389
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2390
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2394
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV5Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2395
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC V5"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2397
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2398
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V3"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2400
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2401
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V2"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2403
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2404
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LHDC_V1"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2406
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2407
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LDAC"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2408
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2409
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "AAC"

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_7
    :goto_0
    return-void
.end method
