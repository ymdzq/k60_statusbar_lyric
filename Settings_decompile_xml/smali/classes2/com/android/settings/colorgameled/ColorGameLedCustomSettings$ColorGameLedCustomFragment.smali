.class public Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorGameLedCustomSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/colorgameled/ColorGameLedCustomSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorGameLedCustomFragment"
.end annotation


# instance fields
.field private isInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mCustomCategory:Landroidx/preference/PreferenceCategory;

.field private mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mJsonArray:Lorg/json/JSONArray;

.field private mKey:Ljava/lang/String;

.field private mLedColorPreference:Lcom/android/settings/colorgameled/LedColorPreference;

.field private mSwitchCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFreqPreference(Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->isInitialized:Z

    return-void
.end method

.method private creatSwitchPreference(Ljava/lang/String;IZ)Landroidx/preference/SwitchPreference;
    .locals 2

    .line 190
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 193
    invoke-virtual {v0, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private getDefaultColor()I
    .locals 3

    const-string/jumbo v0, "ro.boot.hwversion"

    .line 287
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ingres"

    .line 288
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "4.9.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->config_defaultNotificationColor_London:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10601e5    # @android:color/config_defaultNotificationColor

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getIncallLightEnable()Z
    .locals 3

    .line 307
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "breath_phone_enable"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private getNotifLightEnable()Z
    .locals 3

    .line 297
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "notification_light_turn_on"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private initJsonArray()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    iput-boolean v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->isInitialized:Z

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "breathing_light"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    .line 276
    iput-boolean v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->isInitialized:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ColorGameLedCustomSettings"

    const-string v2, "initJsonArray failed: "

    .line 279
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->isInitialized:Z

    return-void
.end method

.method private readCustomLight(I)[I
    .locals 5

    .line 250
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDefaultColor()I

    move-result v0

    const/16 v1, 0x3e8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->initJsonArray()V

    const/4 v1, 0x0

    move v2, v1

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "light"

    .line 255
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_0

    const-string v4, "color"

    .line 256
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    const-string/jumbo v4, "onMS"

    .line 257
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ColorGameLedCustomSettings"

    const-string/jumbo v1, "readLightJsonArray failed: "

    .line 261
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method private saveCustomLight(III)V
    .locals 7

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->initJsonArray()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "onMS"

    const-string v2, "color"

    const-string v3, "light"

    const/4 v4, 0x0

    if-lez v0, :cond_4

    move v0, v4

    .line 221
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 222
    iget-object v5, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_1

    .line 227
    invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eq p3, v0, :cond_2

    .line 230
    invoke-virtual {v5, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v0

    :cond_4
    if-nez v4, :cond_5

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 242
    :cond_5
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "breathing_light"

    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mJsonArray:Lorg/json/JSONArray;

    .line 243
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, -0x2

    .line 242
    invoke-static {p1, p2, p0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "ColorGameLedCustomSettings"

    const-string/jumbo p2, "saveLightJsonArray failed: "

    .line 245
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private setIncallLightEnable(Ljava/lang/Boolean;)V
    .locals 2

    .line 312
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, -0x2

    const-string v1, "breath_phone_enable"

    .line 312
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setNotifLightEnable(Ljava/lang/Boolean;)V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v0, "notification_light_turn_on"

    .line 302
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateFreqPreference()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->color_game_led_freq_entries:I

    const/4 v3, 0x2

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 163
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x3

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 165
    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x5

    .line 168
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 167
    invoke-virtual {v6, v2, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v5, v2}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDifferentLights()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-instance v1, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;-><init>(Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateLedColorPreference()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mLedColorPreference:Lcom/android/settings/colorgameled/LedColorPreference;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/android/settings/colorgameled/LedColorPreference;

    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/colorgameled/LedColorPreference;-><init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mLedColorPreference:Lcom/android/settings/colorgameled/LedColorPreference;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mLedColorPreference:Lcom/android/settings/colorgameled/LedColorPreference;

    const-string v1, "led_color_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mLedColorPreference:Lcom/android/settings/colorgameled/LedColorPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updatePreferenceState()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "color_led_custom_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    .line 121
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "color_led_switch_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    .line 123
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "color_game_led_freq"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "color_led_notification_pulse"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    sget v0, Lcom/android/settings/R$string;->color_game_led_notification_pulse_title:I

    .line 135
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getNotifLightEnable()Z

    move-result v2

    .line 134
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->creatSwitchPreference(Ljava/lang/String;IZ)Landroidx/preference/SwitchPreference;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getNotifLightEnable()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateVisibleCustomPres(Z)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    const-string v1, "color_led_incall_pulse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    sget v0, Lcom/android/settings/R$string;->color_game_led_incall_pulse_title:I

    .line 139
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getIncallLightEnable()Z

    move-result v2

    .line 138
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->creatSwitchPreference(Ljava/lang/String;IZ)Landroidx/preference/SwitchPreference;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getIncallLightEnable()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateVisibleCustomPres(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 143
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private updateVisibleCustomPres(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mFreqPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateLedColorPreference()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateFreqPreference()V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mCustomCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getDifferentLights()[I
    .locals 2

    const-string v0, "color_led_notification_pulse"

    .line 199
    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->readCustomLight(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "color_led_incall_pulse"

    .line 201
    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, v0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->readCustomLight(I)[I

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDefaultColor()I

    move-result p0

    const/16 v0, 0x3e8

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mContext:Landroid/content/Context;

    .line 91
    sget p1, Lcom/android/settings/R$xml;->color_game_led_custom_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->initJsonArray()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updatePreferenceState()V

    .line 94
    iget-boolean p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->isInitialized:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 95
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDefaultColor()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->saveCustomLight(III)V

    const/4 p1, 0x1

    .line 96
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->saveCustomLight(III)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 102
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "color_led_notification_pulse"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->setNotifLightEnable(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string v0, "color_led_incall_pulse"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->setIncallLightEnable(Ljava/lang/Boolean;)V

    .line 113
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateVisibleCustomPres(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setLight(II)V
    .locals 2

    const-string v0, "color_led_notification_pulse"

    .line 209
    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 210
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->saveCustomLight(III)V

    goto :goto_0

    :cond_0
    const-string v0, "color_led_incall_pulse"

    .line 211
    iget-object v1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->saveCustomLight(III)V

    :cond_1
    :goto_0
    return-void
.end method
