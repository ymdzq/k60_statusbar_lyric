.class public Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HttpInvokeAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HttpInvokeAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpInvokeAppSettingsFragment"
.end annotation


# instance fields
.field private mHttpInvokeAppCheckBox:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isHttpInvokeAppEnabled()Z
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->isHttpInvokeAppEnable(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "http_invoke_app"

    .line 48
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;->mHttpInvokeAppCheckBox:Landroidx/preference/CheckBoxPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;->isHttpInvokeAppEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;->mHttpInvokeAppCheckBox:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment$1;-><init>(Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 63
    sget p1, Lcom/android/settings/R$xml;->http_invoke_app_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
