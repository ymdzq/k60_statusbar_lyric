.class public Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "GeneratorTitleSettingsTree.java"


# instance fields
.field private mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    const-string/jumbo p1, "title"

    .line 24
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getTitle(Z)Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;->mTitle:Ljava/lang/String;

    return-object p0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
