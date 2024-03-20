.class public Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DefaultHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHomeSettingsFragment"
.end annotation


# instance fields
.field private mCurrentPos:I

.field private mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPackgeManager:Landroid/content/pm/PackageManager;

.field private mPreferenceRootView:Landroid/view/View;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentPos:I

    return-void
.end method

.method private addHomesInfo()V
    .locals 6

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntent:Landroid/content/Intent;

    .line 115
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mResolveInfos:Ljava/util/List;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 124
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.pcmode"

    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mResolveInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addOlderModeLink(Landroid/view/LayoutInflater;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->isAddOlderModeLink()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->recommend_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->line_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    sget v1, Lcom/android/settings/R$layout;->recommend_item:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 178
    sget v1, Lcom/android/settings/R$id;->item_view:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    sget v2, Lcom/android/settings/R$string;->oldman_mode_settings:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    new-instance v2, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment$1;-><init>(Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPreferences()V
    .locals 8

    .line 133
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Lcom/android/settings/applications/DefaultHomeSettings;->getCurrentDefaultHome(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 139
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 140
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    move v2, v1

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mResolveInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mResolveInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_2

    .line 144
    new-instance v4, Lcom/android/settings/widget/FixedSizeRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/widget/FixedSizeRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v5, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v2

    goto :goto_1

    .line 146
    :cond_1
    iget v6, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentPos:I

    :goto_1
    iput v6, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentPos:I

    .line 147
    sget v6, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 148
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 149
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 152
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    invoke-static {}, Lmiui/enterprise/DeviceHelperStub;->getInstance()Lmiui/enterprise/IDeviceHelper;

    move-result-object v3

    .line 155
    invoke-interface {v3}, Lmiui/enterprise/IDeviceHelper;->isRestrictModifyDefaultHome()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DefaultHomeSettings"

    const-string v5, "Device is in enterprise mode, defaultHome is restricted by enterprise!"

    .line 156
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isAddOlderModeLink()Z
    .locals 1

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 166
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

    .line 167
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

.method private setPreferredApplication(I)Z
    .locals 9

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 223
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->shouldBlockThirdDesktop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 226
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.securitycenter.activity.ThirdDesktopAlertActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->setSelect(I)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x20000

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 235
    new-array v3, v1, [Landroid/content/ComponentName;

    move v4, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 239
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v2

    .line 241
    iget v5, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 245
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v2, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 251
    :cond_3
    iget-object p0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, v3, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setSelect(I)V
    .locals 6

    .line 211
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 214
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lmiuix/preference/RadioButtonPreference;

    if-ne v3, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 216
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iput p1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentPos:I

    return-void
.end method

.method private shouldBlockThirdDesktop(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.miui.sec.THIRD_DESKTOP"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getModeAndList"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "mode"

    .line 263
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "list"

    .line 264
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-ne v1, p0, :cond_1

    move v0, v2

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string p1, "DefaultHomeSettings"

    const-string v1, "get third desktop provider exception!"

    .line 267
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method protected getPreferenceScreenResId()I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$xml;->preferred_app_settings:I

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 92
    sget v0, Lcom/android/settings/R$layout;->preferred_default_home_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPackgeManager:Landroid/content/pm/PackageManager;

    .line 96
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->addOlderModeLink(Landroid/view/LayoutInflater;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mPreferenceRootView:Landroid/view/View;

    .line 102
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->addHomesInfo()V

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 197
    move-object v0, p1

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 198
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 199
    iget v2, p0, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->mCurrentPos:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 p0, 0x1

    .line 200
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v3

    .line 203
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->setPreferredApplication(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 207
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultHomeSettings$DefaultHomeSettingsFragment;->addPreferences()V

    return-void
.end method
