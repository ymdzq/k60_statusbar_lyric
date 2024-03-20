.class public Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsageAndDiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageAndDiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageAndDiagnosticsFragment"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "uplaod_log_switch"

    .line 34
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    .line 35
    iget-object v0, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isUploadDebugLogEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;->mPersonalizedAdSwitch:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment$1;-><init>(Lcom/android/settings/UsageAndDiagnosticsActivity$UsageAndDiagnosticsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    new-instance p1, Lcom/android/settings/UsageAndDiagnosticsFooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/UsageAndDiagnosticsFooterPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 59
    sget p1, Lcom/android/settings/R$xml;->usage_and_diagnostics:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
