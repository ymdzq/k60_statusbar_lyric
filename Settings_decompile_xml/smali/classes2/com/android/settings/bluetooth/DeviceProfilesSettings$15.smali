.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 2435
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 2438
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_b

    .line 2439
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV5Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2440
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC V5"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 2441
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2442
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC_V3"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 2443
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2444
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC_V2"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 2445
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2446
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LHDC_V1"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 2447
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2448
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "LDAC"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 2449
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2450
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->val$codecPre:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string v2, "AAC"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_b
    :goto_0
    return-void
.end method
