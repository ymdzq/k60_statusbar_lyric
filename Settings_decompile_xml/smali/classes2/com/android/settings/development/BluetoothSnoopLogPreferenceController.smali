.class public Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothSnoopLogPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_BTSNOOP_LOG_MODE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.btsnooplogmode"

.field static final BTSNOOP_LOG_MODE_DISABLED_INDEX:I = 0x0

.field static final BTSNOOP_LOG_MODE_FILTERED_INDEX:I = 0x1

.field static final BTSNOOP_LOG_MODE_FULL_INDEX:I = 0x2

.field static final BTSNOOP_LOG_MODE_MEDIAPKTSFILTERED_INDEX:I = 0x4

.field static final BTSNOOP_LOG_MODE_SNOOPHEADERSFILTERED_INDEX:I = 0x3


# instance fields
.field private final emptyVal:Ljava/lang/String;

.field private mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mListEnhancedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListEntries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->emptyVal:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bt_hci_snoop_log_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bt_hci_snoop_log_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->bt_hci_snoop_log_values_enhanced:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEnhancedValues:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public getDefaultModeIndex()I
    .locals 5

    .line 74
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_btsnoop_default_mode"

    .line 79
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 83
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 84
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "bt_hci_snoop_log"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string/jumbo v0, "persist.bluetooth.btsnooplogmode"

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.service.bt.adv_snoop"

    .line 141
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEnhancedValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "persist.vendor.service.bt.adv_snoop"

    const-string/jumbo v1, "persist.bluetooth.btsnooplogmode"

    if-eqz p2, :cond_0

    .line 101
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->emptyVal:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->emptyVal:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onSettingChanged()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 116
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string/jumbo v0, "persist.bluetooth.btsnooplogmode"

    .line 117
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.vendor.service.bt.adv_snoop"

    .line 118
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->getDefaultModeIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 123
    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 129
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->mListEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string p0, "PrefControllerMixin"

    const-string/jumbo p1, "missing some entries in xml file\t some options in developer options will not be shown until added in xml file"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
