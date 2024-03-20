.class public Lcom/android/settings/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field private static mCloudJson:Lorg/json/JSONObject;

.field private static mUserJson:Lorg/json/JSONObject;


# direct methods
.method private static checkJson(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_disable_screen_button"

    .line 108
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    .line 106
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    .line 115
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_disable_screen_button_cloud_setting"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    .line 38
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 45
    :try_start_0
    sget-object p0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    sget-object p0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    sget-object p0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result p2

    const-string v0, "auto_disable_screen_button"

    .line 69
    invoke-static {p0, v0, p1, p2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static updateCloudJson(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateUserJson(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
