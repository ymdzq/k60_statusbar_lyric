.class public Lcom/android/settings/development/BluetoothPageScanPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothPageScanPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_ENABLE_PAGE_SCAN_PROPERTY:Ljava/lang/String; = "persist.bluetooth.enablepagescan"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothPageScanPreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bluetooth_enable_page_scan"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 56
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    const-string/jumbo v0, "persist.bluetooth.enablepagescan"

    .line 57
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/development/BluetoothPageScanPreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x15

    .line 61
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    goto :goto_1

    :cond_1
    const/16 p1, 0x14

    .line 63
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string/jumbo p1, "persist.bluetooth.enablepagescan"

    const/4 v0, 0x1

    .line 71
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/development/BluetoothPageScanPreferenceController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    .line 76
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    .line 78
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_1
    :goto_0
    return-void
.end method
