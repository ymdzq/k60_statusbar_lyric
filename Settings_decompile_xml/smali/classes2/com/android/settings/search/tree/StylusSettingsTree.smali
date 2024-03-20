.class public Lcom/android/settings/search/tree/StylusSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "StylusSettingsTree.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
