.class public Lcom/android/settings/search/tree/GoogleSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "GoogleSettingsTree.java"


# static fields
.field static final ACTIVITY_NAME:Ljava/lang/String; = "activityName"


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    const-string p1, "activityName"

    .line 25
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mActivityName:Ljava/lang/String;

    const-string/jumbo p1, "title"

    .line 26
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mActivityName:Ljava/lang/String;

    const-string v1, "com.google.android.gms.app.settings.GoogleSettingsLink"

    .line 45
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/settings/search/tree/GoogleSettingsTree;->mTitle:Ljava/lang/String;

    return-object p0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
