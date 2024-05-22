# classes5.dex

.class public Lcom/android/settings/MiuiStatusBarLyricSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "MiuiStatusBarLyricSettings.java"


# direct methods
.method public static synthetic $r8$lambda$RLp4W-yNmSBqoVhjHlLwDyyt8WU(Lcom/android/settings/MiuiStatusBarLyricSettings;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiStatusBarLyricSettings;->lambda$setUpLyricTextSize$1(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$setUpLyricTextSize$0(Landroid/widget/EditText;)V
    .registers 2
    .param p0, "editText"  # Landroid/widget/EditText;

    .line 63
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private synthetic lambda$setUpLyricTextSize$1(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "customKey"  # Ljava/lang/String;
    .param p2, "preference"  # Landroidx/preference/Preference;
    .param p3, "newValue"  # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    if-eqz p3, :cond_3b

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3b

    .line 72
    :cond_e
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 73
    .local v1, "value":D
    const-wide/high16 v3, 0x4059000000000000L  # 100.0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_2a

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "输入的文字不符合规范 推荐 20-100"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 75
    return v0

    .line 78
    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    const/4 v0, 0x1

    return v0

    .line 68
    .end local v1  # "value":D
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "请输入大小 跟随时钟 填写 0"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    return v0
.end method

.method static synthetic lambda$setupAppIconCheckbox$2(Ljava/lang/String;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .param p0, "customKey"  # Ljava/lang/String;
    .param p1, "systemStatusbarLyricSimpleIcon"  # Landroidx/preference/Preference;
    .param p2, "preference"  # Landroidx/preference/Preference;
    .param p3, "newValue"  # Ljava/lang/Object;

    .line 130
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    .line 131
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    if-eqz p1, :cond_1b

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 136
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private setUpLyricTextSize()V
    .registers 5

    .line 59
    const-string v0, "system_statusbar_lyric_textsize"

    .line 61
    .local v0, "customKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    .line 62
    .local v1, "numberPreference":Landroidx/preference/EditTextPreference;
    if-eqz v1, :cond_2e

    .line 63
    new-instance v2, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 65
    .local v2, "customValue":F
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 66
    new-instance v3, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/MiuiStatusBarLyricSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    .end local v2  # "customValue":F
    :cond_2e
    return-void
.end method

.method private setipAppSupportList()V
    .registers 5

    .line 89
    const-string v0, "app_support_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 91
    .local v0, "appSupportList":Landroidx/preference/ListPreference;
    if-eqz v0, :cond_60

    .line 92
    const/16 v1, 0xe

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

    const-string v3, "洛雪音乐修改版  状态栏模式 完美支持"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "网易云修改版 状态栏模式 完美支持"

    aput-object v3, v1, v2

    .line 109
    .local v1, "sequences":[Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 113
    .end local v1  # "sequences":[Ljava/lang/CharSequence;
    :cond_60
    return-void
.end method

.method private setupAppIconCheckbox(Ljava/lang/String;I)V
    .registers 9
    .param p1, "customKey"  # Ljava/lang/String;
    .param p2, "def"  # I

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 118
    .local v0, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v0, :cond_37

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 120
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

    .line 122
    const-string v4, "system_statusbar_lyric_simple_icon"

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 123
    .local v5, "systemStatusbarLyricSimpleIcon":Landroidx/preference/Preference;
    if-eqz v5, :cond_2f

    .line 125
    invoke-direct {p0, v4, v2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 126
    if-ne v1, v3, :cond_2c

    move v2, v3

    :cond_2c
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 129
    :cond_2f
    new-instance v2, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v5}, Lcom/android/settings/MiuiStatusBarLyricSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    .end local v1  # "customValue":I
    .end local v5  # "systemStatusbarLyricSimpleIcon":Landroidx/preference/Preference;
    :cond_37
    return-void
.end method

.method private setupCommonCheckbox(Ljava/lang/String;I)V
    .registers 6
    .param p1, "customKey"  # Ljava/lang/String;
    .param p2, "def"  # I

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 177
    .local v0, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v0, :cond_24

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "customValue":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    new-instance v2, Lcom/android/settings/CustomChangeListener;

    invoke-direct {v2, p1}, Lcom/android/settings/CustomChangeListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    .end local v1  # "customValue":I
    :cond_24
    return-void
.end method

.method private setupIconBlackListCheckbox()V
    .registers 10

    .line 146
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

    .line 153
    .local v0, "iconKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "system_statusbar_lyric_icon_black_list"

    .line 155
    .local v1, "iconBlackKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "iconBlackStr":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "iconBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 160
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
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

    .line 164
    .local v5, "customKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiStatusBarLyricSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    .line 165
    .local v6, "findPreference":Landroidx/preference/CheckBoxPreference;
    if-eqz v6, :cond_6f

    .line 166
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    new-instance v7, Lcom/android/settings/IconBlackListChangeListener;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/settings/IconBlackListChangeListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    .end local v5  # "customKey":Ljava/lang/String;
    .end local v6  # "findPreference":Landroidx/preference/CheckBoxPreference;
    :cond_6f
    goto :goto_42

    .line 170
    :cond_70
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"  # Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_c

    const-string v0, "\\d+(\\.\\d+)?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/BaseSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/android/settings/R$xml;->miui_status_bar_lyric_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "状态栏歌词"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    const-string v0, "system_statusbar_lyric"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 40
    const-string v0, "system_statusbar_lyric_animation"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 42
    const-string v0, "system_statusbar_lyric_app_icon"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupAppIconCheckbox(Ljava/lang/String;I)V

    .line 44
    const-string v0, "system_statusbar_lyric_notification_icon"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 46
    const-string v0, "system_statusbar_lyric_network_speed_icon"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupCommonCheckbox(Ljava/lang/String;I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setupIconBlackListCheckbox()V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setipAppSupportList()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarLyricSettings;->setUpLyricTextSize()V

    .line 55
    return-void
.end method
