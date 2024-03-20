.class public Lcom/android/settings/search/tree/PrivacyAuthorizeSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "PrivacyAuthorizeSettingsTree.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/settings/security/PrivacyRevocationController;->hidePrivacyRevoke()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
