# classes5.dex

.class public Lcom/android/settings/MiuiStatusBarLyricSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "MiuiStatusBarLyricSettings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$setupAppIconCheckbox$0(Ljava/lang/String;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .param p0, "customKey"  # Ljava/lang/String;
    .param p1, "systemStatusbarLyricSimpleIcon"  # Landroidx/preference/Preference;
    .param p2, "preference"  # Landroidx/preference/Preference;
    .param p3, "newValue"  # Ljava/lang/Object;

    .line 92
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    .line 93
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    if-eqz p1, :cond_1b

    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 98
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private setipAppSupportList()V
    .registers 5

    .line 52
    const-string v0, "app_support_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 54
    .local v0, "appSupportList":Landroidx/preference/ListPreference;
    if-eqz v0, :cond_5a

    .line 55
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "网易云音乐  蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "QQ音乐     蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "酷狗音乐   蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "汽水音乐   蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "咕咪音乐   蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "酷狗概念版 蓝牙模式 需链接蓝牙耳机"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "酷我音乐   蓝牙模式 完美支持"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "音悦      蓝牙模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "波点音乐   蓝牙模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "小米音乐   通知栏模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "椒盐音乐  状态栏模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "糖醋音乐  状态栏模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "网易云修改版 状态栏模式 完美支持"

    aput-object v3, v1, v2

    .line 71
    .local v1, "sequences":[Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 75
    .end local v1  # "sequences":[Ljava/lang/CharSequence;
    :cond_5a
    return-void
.end method

.method private setupAppIconCheckbox(Ljava/lang/String;I)V
    .registers 9
    .param p1, "customKey"  # Ljava/lang/String;
    .param p2, "def"  # I

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 80
    .local v0, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v0, :cond_37

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "customValue":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    move v4, v3

    goto :goto_1b

    :cond_1a
    move v4, v2

    :goto_1b
    invoke-virtual {v0, v4}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    const-string v4, "system_statusbar_lyric_simple_icon"

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 85
    .local v5, "systemStatusbarLyricSimpleIcon":Landroidx/preference/Preference;
    if-eqz v5, :cond_2f

    .line 87
    invoke-direct {p0, v4, v2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 88
    if-ne v1, v3, :cond_2c

    move v2, v3

    :cond_2c
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 91
    :cond_2f
    new-instance v2, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    .end local v1  # "customValue":I
    .end local v5  # "systemStatusbarLyricSimpleIcon":Landroidx/preference/Preference;
    :cond_37
    return-void
.end method

.method private setupCommonCheckbox(Ljava/lang/String;I)V
    .registers 6
    .param p1, "customKey"  # Ljava/lang/String;
    .param p2, "def"  # I

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 139
    .local v0, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v0, :cond_24

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, "customValue":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    new-instance v2, Lcom/android/settings/CustomChangeListener;

    invoke-direct {v2, p1}, Lcom/android/settings/CustomChangeListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    .end local v1  # "customValue":I
    :cond_24
    return-void
.end method

.method private setupIconBlackListCheckbox()V
    .registers 10

    .line 108
    const-string v0, "system_statusbar_lyric_clock_icon"

    const-string v1, "clock"

    const-string v2, "system_statusbar_lyric_alarm_clock_icon"

    const-string v3, "alarm_clock"

    const-string v4, "system_statusbar_lyric_zen_icon"

    const-string v5, "zen"

    const-string v6, "system_statusbar_lyric_volume_icon"

    const-string v7, "volume"

    invoke-static/range {v0 .. v7}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "iconKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "system_statusbar_lyric_icon_black_list"

    .line 117
    .local v1, "iconBlackKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "iconBlackStr":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "iconBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 122
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_3a
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    .local v5, "customKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    .line 127
    .local v6, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v6, :cond_6f

    .line 128
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    new-instance v7, Lcom/android/settings/IconBlackListChangeListener;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/settings/IconBlackListChangeListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    .end local v5  # "customKey":Ljava/lang/String;
    .end local v6  # "findPreference":Landroidx/preference/CheckBoxPreference;
    :cond_6f
    goto :goto_42

    .line 132
    :cond_70
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/BaseSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/android/settings/R$xml;->miui_status_bar_lyric_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "状态栏歌词"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const-string v0, "system_statusbar_lyric"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 36
    const-string v0, "system_statusbar_lyric_animation"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 38
    const-string v0, "system_statusbar_lyric_app_icon"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupAppIconCheckbox(Ljava/lang/String;I)V

    .line 40
    const-string v0, "system_statusbar_lyric_notification_icon"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 42
    const-string v0, "system_statusbar_lyric_network_speed_icon"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupIconBlackListCheckbox()V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setipAppSupportList()V

    .line 49
    return-void
.end method
