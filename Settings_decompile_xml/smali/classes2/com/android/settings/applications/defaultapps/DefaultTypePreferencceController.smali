.class public Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultTypePreferencceController.java"

# interfaces
.implements Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$ResetToDefault;


# instance fields
.field private final defaultAppType:I

.field private mDefaultPackageName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final preferenceKey:Ljava/lang/String;

.field private final preferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->preferenceKey:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->defaultAppType:I

    .line 41
    iput-object p4, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->preferenceName:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->preferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public resetDefaults()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->defaultAppType:I

    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mDefaultPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mDefaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 62
    iget v0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->defaultAppType:I

    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v0

    .line 63
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->defaultAppType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_GALLERY"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/applications/PreferredSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "preferred_app_intent_filter"

    .line 68
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "preferred_app_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "preferred_label"

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->preferenceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    instance-of v1, p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->preferenceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    sget v1, Lcom/android/settings/R$string;->preferred_app_settings_default:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 84
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mDefaultPackageName:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1, v0, v2}, Lcom/android/settings/applications/DefaultAppsHelper;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "preferred_app_package_name"

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mDefaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultTypePreferencceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
