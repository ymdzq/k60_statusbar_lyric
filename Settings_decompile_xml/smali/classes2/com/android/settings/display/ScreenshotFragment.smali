.class public Lcom/android/settings/display/ScreenshotFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenshotFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mScreenshotSound:Landroidx/preference/CheckBoxPreference;

.field private mThreeGesture:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private hasScreenshotSoundEnabled()Z
    .locals 3

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "has_screenshot_sound"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method private isThreeGestureScreenshotEnabled()Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "three_gesture_screenshot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method private setHasScreenshotSoundEnabled(Z)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "has_screenshot_sound"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method private setIsThreeGestureScreenshotEnabled(Z)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "three_gesture_screenshot"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 19
    const-class p0, Lcom/android/settings/display/ScreenshotFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/android/settings/R$xml;->screenshot_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "three_gesture"

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mThreeGesture:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "screenshot_sound"

    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mScreenshotSound:Landroidx/preference/CheckBoxPreference;

    .line 30
    iget-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mThreeGesture:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    iget-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mThreeGesture:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/display/ScreenshotFragment;->isThreeGestureScreenshotEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 32
    iget-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mScreenshotSound:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    iget-object p1, p0, Lcom/android/settings/display/ScreenshotFragment;->mScreenshotSound:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/display/ScreenshotFragment;->hasScreenshotSoundEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->mThreeGesture:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenshotFragment;->setIsThreeGestureScreenshotEnabled(Z)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenshotFragment;->mScreenshotSound:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 47
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenshotFragment;->setHasScreenshotSoundEnabled(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->screenshot:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    return-void
.end method
