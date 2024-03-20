.class public Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ad/AdServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdServiceSettingsFragment"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "personalized_ad_switch"

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 44
    sget v0, Lcom/android/settings/R$string;->use_personalized_ad_service_for_global:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->use_personalized_ad_service:I

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 46
    sget v0, Lcom/android/settings/R$string;->use_personalized_ad_service_summary_for_global:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/settings/R$string;->use_personalized_ad_service_summary:I

    .line 45
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment$1;-><init>(Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/ad/AdServiceSettings$AdServiceSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MiuiSettings$Ad;->isPersonalizedAdEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    new-instance p1, Lcom/android/settings/ad/AdFooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/ad/AdFooterPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 73
    sget p1, Lcom/android/settings/R$xml;->ad_service_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
