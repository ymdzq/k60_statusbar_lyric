.class public Lcom/android/settings/colorgameled/ColorGameLedNotificationController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorGameLedNotificationController.java"

# interfaces
.implements Lcom/android/settings/colorgameled/IVisibleListener;


# instance fields
.field private colorLightManager:Landroid/app/ColorLightManager;

.field private mContext:Landroid/content/Context;

.field mPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p1}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->colorLightManager:Landroid/app/ColorLightManager;

    return-void
.end method


# virtual methods
.method public ensureVisible(Z)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->mPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_notification_pulse"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_led_notification_pulse"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key"

    .line 59
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    const-string v1, "com.android.settings.colorgameled.ColorGameLedCustomSettings"

    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_led_colorful"

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 40
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->mPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 44
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedNotificationController;->colorLightManager:Landroid/app/ColorLightManager;

    invoke-virtual {p0}, Landroid/app/ColorLightManager;->isNotificationLightEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 45
    sget p0, Lcom/android/settings/R$string;->color_game_led_feature_on:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$string;->color_game_led_feature_off:I

    .line 44
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    return-void
.end method
