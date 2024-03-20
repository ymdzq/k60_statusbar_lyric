.class public Lcom/android/settings/utils/HomeListUtils;
.super Ljava/lang/Object;
.source "HomeListUtils.java"


# direct methods
.method public static ensureReplaceTimer(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->getIntentTimerIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    invoke-static {p0, v0}, Lcom/android/settings/usagestats/utils/CommonUtils;->hasIndependentTimer(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 27
    iput-object p0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 28
    iput-object v0, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static ensureShowWellbeing(Landroid/content/Context;Ljava/util/List;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/android/settings/utils/HomeListUtils;->getWellbeingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 43
    iput-object v0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 p0, 0x0

    .line 44
    iput-object p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 45
    sget p0, Lcom/android/settings/R$string;->wellbing_title:I

    iput p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->titleRes:I

    .line 46
    sget p0, Lcom/android/settings/R$drawable;->ic_google_wellbeing:I

    iput p0, p2, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static generatePersonalizeIntent()Landroid/content/Intent;
    .locals 2

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "theme://zhuti.xiaomi.com/personalize?miback=true&miref=settings"

    .line 161
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.android.thememanager"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAlexaAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dee.app"

    .line 121
    invoke-static {p0, v0}, Lcom/android/settings/utils/HomeListUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAmazonAlexIntent()Landroid/content/Intent;
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.amazon.alexa.handsfree.SETTINGS"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getWellbeingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p0, v0}, Lcom/android/settings/MiuiUtils;->cancelSplit(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const-string p0, "com.google.android.apps.wellbeing"

    .line 62
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.wellbeing.settings.TopLevelSettingsActivity"

    .line 63
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static shouldAddAmazonAlex(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "begoniain"

    .line 108
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
