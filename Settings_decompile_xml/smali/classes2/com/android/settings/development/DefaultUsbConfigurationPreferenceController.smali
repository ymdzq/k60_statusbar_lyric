.class public Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DefaultUsbConfigurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 60
    iput-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshPreferenceValue()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setShowRightArrow(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getFunction(J)I

    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object p0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setValue(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshPreferenceValue error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; option: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultUsbConfigurationPreferenceController"

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->refreshPreferenceValue()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "default_usb_configuration"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->refreshPreferenceValue()V

    return-void
.end method
