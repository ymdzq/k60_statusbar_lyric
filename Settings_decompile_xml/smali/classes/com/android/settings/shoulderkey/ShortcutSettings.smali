.class public Lcom/android/settings/shoulderkey/ShortcutSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShortcutSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

.field private mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsSwitchedToRight:Z

.field private mLeftRightSwitch:Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;

.field private mResources:Landroid/content/res/Resources;

.field private mShoulderKeyGuideImage:Lcom/android/settings/shoulderkey/FullImagePreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmShoulderKeyGuideImage(Lcom/android/settings/shoulderkey/ShortcutSettings;)Lcom/android/settings/shoulderkey/FullImagePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mShoulderKeyGuideImage:Lcom/android/settings/shoulderkey/FullImagePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSwitchedToRight(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mIsSwitchedToRight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadDropDownValues(Lcom/android/settings/shoulderkey/ShortcutSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->loadDropDownValues(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/shoulderkey/ShortcutSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/shoulderkey/ShortcutSettings$1;-><init>(Lcom/android/settings/shoulderkey/ShortcutSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getFunctionSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "none"

    :cond_0
    return-object p0
.end method

.method private initShoulderKeyFunction()V
    .locals 4

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_launch_camera:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "launch_camera_capture"

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_launch_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "launch_camera_video"

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_launch_screen_recorder:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "launch_screen_recorder"

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_launch_sound_recorder:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "launch_sound_recorder"

    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_turn_on_torch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "turn_on_torch"

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_mute:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "mute"

    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_vibrate:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "vibrate"

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->shoulder_key_shortcut_none:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "none"

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 121
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadDropDownValues(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "right_shoulder_key_double_click"

    goto :goto_0

    :cond_0
    const-string v0, "left_shoulder_key_double_click"

    .line 136
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/shoulderkey/ShortcutSettings;->getFunctionSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string/jumbo p1, "right_shoulder_key_long_press"

    goto :goto_1

    :cond_1
    const-string p1, "left_shoulder_key_long_press"

    .line 140
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/shoulderkey/ShortcutSettings;->getFunctionSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private saveFunctionSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/android/settings/R$xml;->shoulderkey_shortcut:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mResources:Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "shoulder_key_shortcut_guide_image"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/shoulderkey/FullImagePreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mShoulderKeyGuideImage:Lcom/android/settings/shoulderkey/FullImagePreference;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 73
    new-instance p1, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v2}, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mLeftRightSwitch:Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mLeftRightSwitch:Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string/jumbo p1, "shoulder_key_double_click"

    .line 78
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    const-string/jumbo p1, "shoulder_key_long_press"

    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    .line 81
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/shoulderkey/ShortcutSettings;->initShoulderKeyFunction()V

    .line 85
    invoke-direct {p0, v0}, Lcom/android/settings/shoulderkey/ShortcutSettings;->loadDropDownValues(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 153
    check-cast p2, Ljava/lang/String;

    const-string/jumbo v0, "shoulder_key_double_click"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyDoubleClick:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 166
    iget-boolean p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mIsSwitchedToRight:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "right_shoulder_key_double_click"

    goto :goto_0

    :cond_0
    const-string p1, "left_shoulder_key_double_click"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/shoulderkey/ShortcutSettings;->saveFunctionSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "shoulder_key_long_press"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mDropDownShoulderKeyLongPress:Lmiuix/preference/DropDownPreference;

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 172
    iget-boolean p1, p0, Lcom/android/settings/shoulderkey/ShortcutSettings;->mIsSwitchedToRight:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "right_shoulder_key_long_press"

    goto :goto_1

    :cond_2
    const-string p1, "left_shoulder_key_long_press"

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/shoulderkey/ShortcutSettings;->saveFunctionSettings(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
