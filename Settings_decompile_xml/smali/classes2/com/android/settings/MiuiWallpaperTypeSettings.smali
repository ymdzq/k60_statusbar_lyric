.class public Lcom/android/settings/MiuiWallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiWallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getDesktopPreference()Landroidx/preference/Preference;
    .locals 3

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "REQUEST_RESOURCE_CODE"

    const-string/jumbo v2, "wallpaper"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 41
    sget p0, Lcom/android/settings/R$string;->wallpaper_desktop:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v1
.end method

.method private getLiveWallpaperPreference()Landroidx/preference/Preference;
    .locals 3

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.wallpaper.livepicker"

    const-string v2, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 62
    sget p0, Lcom/android/settings/R$string;->wallpaper_live:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v1
.end method

.method private getLockscreenPreference()Landroidx/preference/Preference;
    .locals 3

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "REQUEST_RESOURCE_CODE"

    const-string v2, "lockscreen"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 52
    sget p0, Lcom/android/settings/R$string;->wallpaper_lockscreen:I

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v1
.end method

.method private populateWallpaperTypes()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/MiuiWallpaperTypeSettings;->getDesktopPreference()Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 29
    invoke-direct {p0}, Lcom/android/settings/MiuiWallpaperTypeSettings;->getLockscreenPreference()Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 30
    invoke-direct {p0}, Lcom/android/settings/MiuiWallpaperTypeSettings;->getLiveWallpaperPreference()Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 14
    const-class p0, Lcom/android/settings/MiuiWallpaperTypeSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/android/settings/R$xml;->wallpaper_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 22
    invoke-direct {p0}, Lcom/android/settings/MiuiWallpaperTypeSettings;->populateWallpaperTypes()V

    return-void
.end method
