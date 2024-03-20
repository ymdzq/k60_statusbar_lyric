.class public Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "AccessibilityServiceSettingsTree.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mExtras:Landroid/os/Bundle;

.field private mFragmentName:Ljava/lang/String;

.field private mGeneralTab:Ljava/lang/String;

.field private mHearingTab:Ljava/lang/String;

.field private mPhysicalTab:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVisualTab:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$string;->accessibility_settings_tabs_general:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mGeneralTab:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$string;->accessibility_settings_tabs_visual:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mVisualTab:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$string;->accessibility_settings_tabs_hearing:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mHearingTab:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/settings/R$string;->accessibility_settings_tabs_physical:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mPhysicalTab:Ljava/lang/String;

    const-string/jumbo p1, "title"

    .line 66
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mTitle:Ljava/lang/String;

    .line 67
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iput-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string p3, "accessibility_extra"

    .line 68
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 69
    iget-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string/jumbo p4, "preference_key"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string p4, "checked"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    iget-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string/jumbo p3, "summary"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string p3, "animated_image_res"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    const-string p3, "html_description"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fragment_name"

    .line 76
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mFragmentName:Ljava/lang/String;

    const-string/jumbo p1, "settings_title"

    .line 78
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 80
    iget-object p4, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo p1, "settings_component_name"

    .line 82
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 83
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 84
    iget-object p4, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "component_name"

    .line 86
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mComponentName:Landroid/content/ComponentName;

    .line 87
    iget-object p0, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private inMoreInstalledServices(Landroid/content/ComponentName;)Z
    .locals 2

    .line 172
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {p0}, Lcom/android/settings/accessibility/InstalledAccessibilityService;->buildNoNeedDisplayServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addTabsLabelToPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    invoke-static {p1, p3}, Lcom/android/settingslib/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resource"

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p5, "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 148
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 149
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string p3, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 152
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mVisualTab:Ljava/lang/String;

    .line 153
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {p3}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAccessibilityHaptic(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 155
    sget p3, Lcom/android/settings/R$string;->accessibility_screen_reader_haptic_title:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    iget-object p0, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 186
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    return-object v1

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    return-object v1

    .line 192
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.SubSettings"

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mFragmentName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    const-class v3, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mFragmentName:Ljava/lang/String;

    :goto_1
    const-string v4, ":settings:show_fragment"

    .line 195
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, ":settings:show_fragment_args"

    .line 198
    iget-object p0, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title_res_package_name"

    .line 199
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title_resid"

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, ":miui:starting_window_label"

    .line 202
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    .line 203
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2
.end method

.method protected getPath(ZZ)Ljava/lang/String;
    .locals 8

    const/4 p2, 0x1

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo p1, "resource"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "category_origin"

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string p2, "com.google.android.accessibility.switchaccess/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_2
    const-string p2, "com.android.tback/net.tatans.soundback.SoundBackService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_3
    const-string p2, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_4
    const-string p2, "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_5
    const-string p2, "com.dianming.phoneapp/com.dianming.phoneapp.MyAccessibilityService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_6
    const-string p2, "com.nirenr.talkman/com.nirenr.talkman.TalkManAccessibilityService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_7
    const-string p2, "com.bjbyhd.voiceback/com.bjbyhd.voiceback.BoyhoodVoiceBackService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 120
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mGeneralTab:Ljava/lang/String;

    const-string v7, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->addTabsLabelToPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 111
    :pswitch_0
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mPhysicalTab:Ljava/lang/String;

    const-string p1, "interaction_control_category_title"

    .line 115
    invoke-static {v3, p1}, Lcom/android/settingslib/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 111
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->addTabsLabelToPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 104
    :pswitch_1
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mVisualTab:Ljava/lang/String;

    const-string/jumbo p1, "screen_reader_category_title"

    .line 108
    invoke-static {v3, p1}, Lcom/android/settingslib/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->addTabsLabelToPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x77fcf03b -> :sswitch_7
        -0x41e949ca -> :sswitch_6
        -0x3d0f40ca -> :sswitch_5
        -0x3496f8 -> :sswitch_4
        0x6027a42 -> :sswitch_3
        0x9b26195 -> :sswitch_2
        0x47191123 -> :sswitch_1
        0x5ce4a2c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    iget-object p0, p0, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;->mTitle:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
