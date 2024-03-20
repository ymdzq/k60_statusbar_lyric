.class public Lcom/android/settings/search/tree/DateTimeSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "DateTimeSettingsTree.java"


# static fields
.field private static final DATE_TIME_SETTINGS_TITLE:Ljava/lang/String; = "date_and_time_settings_title"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 4

    const-string/jumbo v0, "resource"

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date_time_set_date"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    const-string v1, "date_time_set_time"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "date_time_set_timezone"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    return v2

    :cond_1
    const-string v1, "date_and_time_settings_title"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isHideTimeAndFactoryReset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const-string/jumbo v1, "zone_auto_title"

    .line 46
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const-string v1, "location_time_zone_detection_toggle_title"

    .line 48
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    new-instance v0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_4
    const-string v1, "location_time_zone_detection_status_title"

    .line 53
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    new-instance v0, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "location_time_zone_detection_status"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/android/settings/datetime/LocationProviderStatusPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return v3

    .line 35
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    return v2

    .line 59
    :cond_6
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method
