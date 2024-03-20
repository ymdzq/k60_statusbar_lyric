.class public Lcom/android/settings/utils/MiuiDockUtils;
.super Ljava/lang/Object;
.source "MiuiDockUtils.java"


# direct methods
.method public static getSecurityCenterSettings(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .line 28
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "default"

    .line 29
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isFeatureSupport"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p2

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConversationSupport(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_conversation_assistant_support"

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiDockUtils;->getSecurityCenterSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDockSupport(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_miui_dock_support"

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiDockUtils;->getSecurityCenterSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFrontAssistantSupport(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_front_assistant_support"

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiDockUtils;->getSecurityCenterSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSupportBubblesNotification(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "is_bubbles_notificatioin_support"

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiDockUtils;->getSecurityCenterSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
