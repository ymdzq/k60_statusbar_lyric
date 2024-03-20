.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onCreate(Landroid/os/Bundle;)V
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

    .line 475
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 482
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDeviceNamePref(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDeviceNamePref(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 486
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDeviceNamePref(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    const/4 p0, 0x1

    return p0
.end method
