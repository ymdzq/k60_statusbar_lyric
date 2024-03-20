.class public Lcom/android/settings/knock/KnockGestureVSelectFragment;
.super Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.source "KnockGestureVSelectFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    return-void
.end method

.method private appIsIntall(Ljava/lang/String;)Z
    .locals 1

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object p0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initFeatureList()V
    .locals 4

    const-string v0, "com.tencent.mm"

    .line 88
    invoke-direct {p0, v0}, Lcom/android/settings/knock/KnockGestureVSelectFragment;->appIsIntall(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.eg.android.AlipayGphone"

    .line 89
    invoke-direct {p0, v1}, Lcom/android/settings/knock/KnockGestureVSelectFragment;->appIsIntall(Ljava/lang/String;)Z

    move-result v1

    .line 90
    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v3, "launch_voice_assistant"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v3, "launch_ai_shortcut"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v3, "launch_alipay_payment_code"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v3, "launch_wechat_payment_code"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v2, "launch_alipay_scanner"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v1, "launch_wechat_scanner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string/jumbo v1, "turn_on_torch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v1, "launch_camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v1, "launch_calculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string v1, "dump_log"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    const-string/jumbo v0, "none"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget p1, Lcom/android/settings/R$xml;->knock_settings_quick_feature_select_fragment:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mResources:Landroid/content/res/Resources;

    .line 46
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->GESTURE_V_PAGE_KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mPageTitle:Ljava/lang/String;

    const-string p1, "knock_gesture_function_optional"

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/knock/KnockGestureVSelectFragment;->initFeatureList()V

    .line 50
    iget-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mContext:Landroid/content/Context;

    const-string v0, "knock_gesture_v"

    invoke-static {p1, v0}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mFeatureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    new-instance v2, Lmiuix/preference/RadioButtonPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 55
    sget v3, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 57
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "string"

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 61
    iget-object v3, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3, v2}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1, v2}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result p1

    if-gez p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 71
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 72
    iget-object p0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 5

    .line 116
    instance-of v0, p2, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p2

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 118
    iget-object v1, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "knock_gesture_v"

    .line 119
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 122
    iget-object v1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/android/settings/knock/KnockGestureVSelectFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "knock_edge_area_invalid"

    .line 82
    invoke-static {v1, p0}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
