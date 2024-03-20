.class public Lcom/android/settings/WakeupXiaoaiSettingsFragment;
.super Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.source "WakeupXiaoaiSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

.field private final mKeyShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressPowerKeyLaunchXiaoai:Z

.field private mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionChangeDialog(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyCategory(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedRadioButton(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActionChangeDialog(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedRadioButton(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/MiuiShortcut$Key;->KEY_SHORTCUT_ACTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyShortcutList:Ljava/util/ArrayList;

    return-void
.end method

.method private bringDialog(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;-><init>(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Landroidx/preference/Preference;)V

    .line 268
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 269
    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 270
    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 272
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->gesture_function_dialog_message:I

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_positive:I

    .line 276
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_negative:I

    .line 277
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 278
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 279
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private isNoOtherFunction(Landroidx/preference/Preference;)Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0, p1, v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->bringDialog(Landroidx/preference/Preference;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x7d5

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/settings/R$xml;->wakeup_xiaoai_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "launch_voice_assistant"

    .line 63
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    const-string/jumbo v0, "support_ai_task"

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "gesture_category"

    .line 66
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_4

    .line 68
    iget-object v3, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->xiaoai_global_shortcut:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/MiuiShortcut$Key;->setGestureMap(Landroid/content/Context;)V

    .line 70
    sget-object v3, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "long_press_power_key"

    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v4, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v3, v5}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 80
    sget-object v5, Lcom/android/settings/MiuiShortcut$Key;->FEATURE_KNOCK:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "knock_edge_area_invalid"

    .line 84
    iget-object v6, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v5, v6}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {v6, v3}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 90
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 94
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    const-string p1, "key_item"

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string v0, "key_category"

    .line 100
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 102
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->xiaoai_key_shortcut:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$System;->isFullScreenStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyShortcutList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->KEY_SHORTCUT_ACTION:[Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyShortcutList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "key_none"

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyShortcutList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "press_menu"

    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 110
    :cond_5
    new-instance v4, Lmiuix/preference/RadioButtonPreference;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    iput-object v4, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    .line 116
    :cond_6
    sget v5, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 118
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 119
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {v0, v5}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, v4}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    if-nez p1, :cond_8

    .line 124
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    .line 126
    :cond_8
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    .line 128
    :cond_9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    :goto_2
    const-string/jumbo p1, "other_category"

    .line 133
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_c

    .line 135
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->xiaoai_other_shortcut:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 137
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "knock_gesture_v"

    .line 138
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "knock_slide_v"

    .line 139
    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {v4, v5}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v5, v3}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 148
    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 152
    :cond_c
    :goto_3
    new-instance p1, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/android/settings/WakeupXiaoaiSettingsFragment$1;-><init>(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Landroid/os/Handler;Landroidx/preference/PreferenceCategory;)V

    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 171
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "long_press_power_launch_xiaoai"

    .line 172
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 171
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 201
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eqz p2, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->isNoOtherFunction(Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 204
    iget-object p2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 205
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    .line 204
    invoke-static {p2, p1, p0, v1}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    return v0

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v2, "long_press_power_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    if-eqz p2, :cond_2

    .line 211
    iget-object p2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "long_press_power_launch_xiaoai"

    .line 214
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 211
    invoke-static {p2, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 216
    :cond_2
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 217
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "none"

    .line 216
    invoke-static {p0, p1, p2, v1}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$System;->isFullScreenStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyShortcutList:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p2}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->isNoOtherFunction(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mTitle:Ljava/lang/String;

    const/4 v3, -0x2

    .line 185
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    .line 189
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    .line 188
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 191
    move-object v0, p2

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mKeyCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mSelectedRadioButton:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 196
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo p1, "miui_settings_recommendref_key"

    .line 285
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/recommend/RecommendPreference;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 288
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 289
    iget-object p2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/MiuiShortcut$System;->isFullScreenStatus(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->recommend_tip_wakeup_xiaoai:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-virtual {p1, p0}, Lcom/android/settings/recommend/RecommendPreference;->setRecommendTips(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
