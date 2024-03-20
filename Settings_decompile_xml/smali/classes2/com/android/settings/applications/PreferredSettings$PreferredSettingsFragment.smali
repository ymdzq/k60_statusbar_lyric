.class public Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreferredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/PreferredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredSettingsFragment"
.end annotation


# instance fields
.field private mBrowserEntry:Ljava/lang/String;

.field private mCurrentPos:I

.field private mGalleryEntry:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPackgeManager:Landroid/content/pm/PackageManager;

.field private mPreferedApp:Landroid/content/pm/ResolveInfo;

.field private mPreferredLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mCurrentPos:I

    return-void
.end method

.method private addPreference(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    .line 193
    new-instance v2, Lcom/android/settings/widget/FixedSizeRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/FixedSizeRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0, v1, p2}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v0

    goto :goto_1

    .line 195
    :cond_0
    iget v4, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mCurrentPos:I

    :goto_1
    iput v4, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mCurrentPos:I

    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget v1, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 200
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 201
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 213
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 214
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private queryResolveInfoList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    .line 286
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 287
    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_0

    .line 288
    iput-object v2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferedApp:Landroid/content/pm/ResolveInfo;

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    .line 291
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 292
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v6, :cond_1

    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v6, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v5, v6, :cond_2

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setPreferedApp(Landroid/content/pm/ResolveInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private setDefaultBrowser(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 147
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private setPreferedApp(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 266
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferedApp:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    .line 268
    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferedApp:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferedApp:Landroid/content/pm/ResolveInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method private setPreferredApplication(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    .line 218
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferredLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mGalleryEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_GALLERY"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setPreferredApplication(Landroid/content/pm/ResolveInfo;Landroid/content/IntentFilter;)V

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setPreferredApplication(Landroid/content/pm/ResolveInfo;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setPreferredApplication(Landroid/content/pm/ResolveInfo;Landroid/content/IntentFilter;)V
    .locals 11

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 233
    new-array v3, v2, [Landroid/content/ComponentName;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    .line 236
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 237
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v3, v5

    .line 239
    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v6, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-nez v1, :cond_2

    .line 247
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-nez v1, :cond_2

    .line 248
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.no.such.packagename.no.such.class"

    const-string v5, "com.no.such.packagename"

    invoke-direct {v1, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v6, v3, v1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 256
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 257
    new-instance p2, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6, v3, p2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_2

    .line 260
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 262
    :goto_2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private setSelect(I)V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 152
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-eq v3, v0, :cond_1

    return-void

    :cond_1
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 158
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiuix/preference/RadioButtonPreference;

    if-ne v3, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v1

    .line 160
    :goto_2
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v5, :cond_3

    goto :goto_3

    .line 165
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 166
    invoke-direct {p0, v4}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setPreferredApplication(Landroid/content/pm/ResolveInfo;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferredLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mBrowserEntry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    invoke-direct {p0, v4}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setDefaultBrowser(Landroid/content/pm/ResolveInfo;)V

    goto :goto_3

    .line 170
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setPreferredApplication(Landroid/content/pm/ResolveInfo;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 123
    sget p1, Lcom/android/settings/R$xml;->preferred_app_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "preferred_app_intent"

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntent:Landroid/content/Intent;

    const-string/jumbo p2, "preferred_app_intent_filter"

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "preferred_app_package_name"

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackageName:Ljava/lang/String;

    const-string/jumbo p2, "preferred_label"

    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPreferredLabel:Ljava/lang/String;

    const-string/jumbo p2, "preferred_browser_entry"

    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mBrowserEntry:Ljava/lang/String;

    const-string/jumbo p2, "preferred_gallery_entry"

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mGalleryEntry:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 138
    invoke-direct {p0}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->queryResolveInfoList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mList:Ljava/util/List;

    .line 140
    invoke-direct {p0, p2, p1}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->addPreference(Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 209
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 177
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 178
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    iget v2, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mCurrentPos:I

    if-ne v2, v1, :cond_0

    const/4 p0, 0x1

    .line 180
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x0

    return p0

    .line 183
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->setSelect(I)V

    .line 185
    iput v1, p0, Lcom/android/settings/applications/PreferredSettings$PreferredSettingsFragment;->mCurrentPos:I

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
