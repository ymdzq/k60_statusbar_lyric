.class public Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "GraphicsDriverEnableAngleAsSystemDriverController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/RebootConfirmationDialogHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;
    }
.end annotation


# static fields
.field static final ANGLE_DRIVER_SUFFIX:Ljava/lang/String; = "angle"

.field static final PROPERTY_PERSISTENT_GRAPHICS_EGL:Ljava/lang/String; = "persist.graphics.egl"

.field static final PROPERTY_RO_GFX_ANGLE_SUPPORTED:Ljava/lang/String; = "ro.gfx.angle.supported"


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private mShouldToggleSwitchBackOnRebootDialogDismiss:Z

.field private final mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;

    invoke-direct {v0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 94
    invoke-virtual {p3}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;->createSystemPropertiesWrapper()Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    return-void
.end method

.method private isAngleSupported()Z
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    const-string/jumbo v0, "ro.gfx.angle.supported"

    const-string v1, ""

    .line 86
    invoke-interface {p0, v0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 85
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "enable_angle_as_system_driver"

    return-object p0
.end method

.method public isDefaultValue()Z
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->isAngleSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    const-string/jumbo v0, "persist.graphics.egl"

    const-string v1, ""

    .line 133
    invoke-interface {p0, v0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->isAngleSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 108
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 111
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->showRebootDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRebootCancelled()V
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    return-void
.end method

.method public onRebootConfirmed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->rebootDevice(Landroid/content/Context;)V

    return-void
.end method

.method public onRebootDialogDismissed()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->toggleSwitchBack()V

    :cond_0
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    return-void
.end method

.method rebootDevice(Landroid/content/Context;)V
    .locals 1

    .line 191
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method showRebootDialog()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    sget v1, Lcom/android/settings/R$string;->reboot_dialog_enable_angle_as_system_driver:I

    sget v2, Lcom/android/settings/R$string;->cancel:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/development/RebootConfirmationDialogFragment;->show(Landroidx/fragment/app/Fragment;IILcom/android/settings/development/RebootConfirmationDialogHost;)V

    return-void
.end method

.method toggleSwitchBack()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    const-string/jumbo v1, "persist.graphics.egl"

    const-string v2, ""

    .line 168
    invoke-interface {v0, v1, v2}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "angle"

    .line 169
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    .line 173
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 177
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_1
    const-string p0, "GraphicsEnableAngleCtrl"

    const-string v0, "Invalid persist.graphics.egl property value"

    .line 186
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->isAngleSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;

    const-string/jumbo v0, "persist.graphics.egl"

    const-string v1, ""

    .line 145
    invoke-interface {p1, v0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverSystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "angle"

    .line 146
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 147
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
