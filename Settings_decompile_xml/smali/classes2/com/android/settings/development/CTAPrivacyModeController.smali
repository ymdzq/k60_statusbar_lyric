.class public Lcom/android/settings/development/CTAPrivacyModeController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "CTAPrivacyModeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final MIUI_CTA_PRIVACY_TEST_MODE:Ljava/lang/String;

.field private final PROPERTY_CTA_PRIVACY_TEST_MODE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "miui_cta_privacy"

    .line 15
    iput-object p1, p0, Lcom/android/settings/development/CTAPrivacyModeController;->MIUI_CTA_PRIVACY_TEST_MODE:Ljava/lang/String;

    const-string/jumbo p1, "persist.miui.cta.privacy_test_mode"

    .line 16
    iput-object p1, p0, Lcom/android/settings/development/CTAPrivacyModeController;->PROPERTY_CTA_PRIVACY_TEST_MODE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_cta_privacy"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 51
    invoke-static {}, Lmiui/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 36
    instance-of p1, p2, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "persist.miui.cta.privacy_test_mode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/CTAPrivacyModeController;->setChecked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const-string/jumbo p1, "persist.miui.cta.privacy_test_mode"

    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/development/CTAPrivacyModeController;->setChecked(Z)V

    return-void
.end method
