.class public Lcom/android/settings/development/compat/PlatformCompatDashboard;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PlatformCompatDashboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private mChanges:[Lcom/android/internal/compat/CompatibilityChangeInfo;

.field private mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field mSelectedApp:Ljava/lang/String;

.field private mShouldStartAppPickerOnResume:Z


# direct methods
.method public static synthetic $r8$lambda$-YCrjBVIRVAgfDu8rnfQBoaDEbc(Lcom/android/settings/development/compat/PlatformCompatDashboard;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->lambda$onResume$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJGJA8Gnu0F8chuJwdnUp6EY3q4(Lcom/android/settings/development/compat/PlatformCompatDashboard;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->lambda$createAppPreference$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b6bGDCzPGLoHh6Z46Dp2DEjWBRw(Lcom/android/settings/development/compat/PlatformCompatDashboard;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->lambda$onResume$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mShouldStartAppPickerOnResume:Z

    return-void
.end method

.method private addChangePreferencesToCategory(Ljava/util/List;Landroidx/preference/PreferenceCategory;Lcom/android/internal/compat/CompatibilityChangeConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/compat/CompatibilityChangeInfo;",
            ">;",
            "Landroidx/preference/PreferenceCategory;",
            "Lcom/android/internal/compat/CompatibilityChangeConfig;",
            ")V"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 291
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->createPreferenceForChange(Landroid/content/Context;Lcom/android/internal/compat/CompatibilityChangeInfo;Lcom/android/internal/compat/CompatibilityChangeConfig;)Landroidx/preference/Preference;

    move-result-object v0

    .line 293
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPreferences(Landroid/content/pm/ApplicationInfo;)V
    .locals 9

    .line 175
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 176
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->createAppPreference(Landroid/content/pm/ApplicationInfo;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 179
    invoke-direct {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getAppChangeMappings()Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object p1

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 183
    iget-object v3, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mChanges:[Lcom/android/internal/compat/CompatibilityChangeInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 184
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v7

    if-lez v7, :cond_1

    .line 186
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 187
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 192
    :goto_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_3
    sget v3, Lcom/android/settings/R$string;->platform_compat_default_enabled_title:I

    .line 200
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->createChangeCategoryPreference(Ljava/util/List;Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    .line 201
    sget v0, Lcom/android/settings/R$string;->platform_compat_default_disabled_title:I

    .line 202
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->createChangeCategoryPreference(Ljava/util/List;Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    .line 203
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 204
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v4, Lcom/android/settings/R$string;->platform_compat_target_sdk_title:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->createChangeCategoryPreference(Ljava/util/List;Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    goto :goto_3

    :cond_4
    return-void
.end method

.method private getAppChangeMappings()Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 2

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/internal/compat/IPlatformCompat;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get app config!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$createAppPreference$2(Landroidx/preference/Preference;)Z
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->startAppPicker()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onResume$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$onResume$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private startAppPicker()V
    .locals 3

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.settings.extra.INCLUDE_NOTHING"

    const/4 v2, 0x0

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v1}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    const/4 v2, 0x1

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x6

    .line 305
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/pm/ApplicationInfo;)Landroidx/preference/Preference;
    .locals 3

    .line 263
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 265
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 267
    sget v0, Lcom/android/settings/R$string;->platform_compat_selected_app_summary:I

    iget-object v1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 267
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 270
    new-instance p1, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;)V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v2
.end method

.method createChangeCategoryPreference(Ljava/util/List;Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)Landroidx/preference/PreferenceCategory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/compat/CompatibilityChangeInfo;",
            ">;",
            "Lcom/android/internal/compat/CompatibilityChangeConfig;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/preference/PreferenceCategory;"
        }
    .end annotation

    .line 280
    new-instance v0, Landroidx/preference/PreferenceCategory;

    .line 281
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 284
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->addChangePreferencesToCategory(Ljava/util/List;Landroidx/preference/PreferenceCategory;Lcom/android/internal/compat/CompatibilityChangeConfig;)V

    return-object v0
.end method

.method createPreferenceForChange(Landroid/content/Context;Lcom/android/internal/compat/CompatibilityChangeInfo;Lcom/android/internal/compat/CompatibilityChangeConfig;)Landroidx/preference/Preference;
    .locals 4

    .line 226
    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->isChangeEnabled(J)Z

    move-result p3

    .line 227
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/compat/IPlatformCompat;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object p1

    .line 235
    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/compat/IOverrideValidator;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/compat/OverrideAllowedState;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 240
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 241
    invoke-virtual {v0, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 242
    new-instance p1, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;

    .line 243
    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide p2

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;-><init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;J)V

    .line 242
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 238
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not check if change can be overridden for app."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "PlatformCompatDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x70d

    return p0
.end method

.method getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_0

    const-string/jumbo v0, "platform_compat"

    .line 98
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$xml;->platform_compat_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mShouldStartAppPickerOnResume:Z

    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    .line 136
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/compat/IPlatformCompat;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mChanges:[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mShouldStartAppPickerOnResume:Z

    const-string v0, "compat_app"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 109
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not list changes!"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onResume()V
    .locals 3

    .line 141
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mShouldStartAppPickerOnResume:Z

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->platform_compat_dialog_title_no_apps:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->platform_compat_dialog_text_no_apps:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 157
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->addPreferences(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mShouldStartAppPickerOnResume:Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->startAppPicker()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "compat_app"

    .line 171
    iget-object p0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
