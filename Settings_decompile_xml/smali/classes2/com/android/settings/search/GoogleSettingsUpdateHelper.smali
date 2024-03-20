.class Lcom/android/settings/search/GoogleSettingsUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "GoogleSettingsUpdateHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 16
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v2, "com.android.settings31000"

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->google_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, "com.google.android.gms"

    const-string v11, "com.google.android.gms.app.settings.GoogleSettingsLink"

    const-string v12, "android.resource://com.android.settings/drawable/ic_google_settings"

    const-string/jumbo v13, "settings_label-google_title"

    const-string v14, ""

    const-wide/16 v15, 0x0

    move-object/from16 v1, p1

    .line 17
    invoke-static/range {v1 .. v16}, Lcom/android/settings/search/BaseSearchUpdateHelper;->insertSearchItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
