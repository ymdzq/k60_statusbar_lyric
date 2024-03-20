.class public Lcom/android/settings/MiuiGxzwQuickOpenFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiGxzwQuickOpenFragment.java"


# instance fields
.field private mQuickOpenEnablePreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$msetQuickOpenEnable(Lcom/android/settings/MiuiGxzwQuickOpenFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiGxzwQuickOpenFragment;->setQuickOpenEnable(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setQuickOpenEnable(Z)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "fod_quick_open"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updatePreference()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fod_quick_open"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 90
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwQuickOpenFragment;->mQuickOpenEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 79
    const-class p0, Lcom/android/settings/MiuiGxzwQuickOpenFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcom/android/settings/R$xml;->gxzw_quick_open:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "gxzw_quick_open_enable"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiGxzwQuickOpenFragment;->mQuickOpenEnablePreference:Landroidx/preference/CheckBoxPreference;

    .line 30
    new-instance v0, Lcom/android/settings/MiuiGxzwQuickOpenFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiGxzwQuickOpenFragment$1;-><init>(Lcom/android/settings/MiuiGxzwQuickOpenFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwQuickOpenFragment;->updatePreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    sget v0, Lcom/android/settings/R$id;->gxzw_quick_open_navigation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/settings/GxzwQuickOpenNavigationView;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/GxzwQuickOpenNavigationView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 47
    sget v0, Lcom/android/settings/R$id;->gxzw_quick_open_navigation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/settings/GxzwQuickOpenNavigationView;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/GxzwQuickOpenNavigationView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method
