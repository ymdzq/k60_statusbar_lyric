.class public Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiDeviceSecurityPatchController.java"


# instance fields
.field private final KEY_SECURITY_PATCH:Ljava/lang/String;

.field private mSecurityPatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "security_patch"

    .line 11
    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;->KEY_SECURITY_PATCH:Ljava/lang/String;

    .line 16
    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;->mSecurityPatch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;->mSecurityPatch:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/device/controller/BaseDeviceInfoController;->setValueSummary(Lcom/android/settingslib/miuisettings/preference/ValuePreference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "security_patch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/android/settings/device/controller/BaseDeviceInfoController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;->mSecurityPatch:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
