.class public Lcom/android/settings/search/tree/MiuiPhysicalKeyboardSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "MiuiPhysicalKeyboardSettingsTree.java"


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
.method protected getStatus()I
    .locals 1

    const-string/jumbo v0, "resource"

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 p0, 0x0

    return p0
.end method

.method public initialize()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
