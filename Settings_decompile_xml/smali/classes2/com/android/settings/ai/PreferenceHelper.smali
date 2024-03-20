.class public Lcom/android/settings/ai/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smgetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smputString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 34
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 35
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNewUser(Landroid/content/Context;J)Z
    .locals 5

    const-string v0, "key_first_time"

    const-wide/16 v1, -0x1

    .line 94
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/ai/PreferenceHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 96
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    return v2

    :cond_0
    sub-long/2addr p1, v3

    const-wide/32 v0, 0x240c8400

    cmp-long p0, p1, v0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static putLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 0

    .line 29
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static shouldRecordItemType(Landroid/content/Context;J)Z
    .locals 7

    const-string v0, "key_7_days"

    const-wide/16 v1, -0x1

    .line 106
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/ai/PreferenceHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 108
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    return v2

    :cond_0
    sub-long v3, p1, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 114
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
