.class public Lcom/miui/privacypolicy/SharePreferenceUtils;
.super Ljava/lang/Object;
.source "SharePreferenceUtils.java"


# static fields
.field private static mInstance:Landroid/content/SharedPreferences;


# direct methods
.method protected static clear(Landroid/content/Context;)V
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 14
    sget-object v0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "privacy_sdk"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    .line 17
    :cond_0
    sget-object p0, Lcom/miui/privacypolicy/SharePreferenceUtils;->mInstance:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method protected static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 112
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 98
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
