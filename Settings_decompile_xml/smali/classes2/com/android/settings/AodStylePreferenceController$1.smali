.class Lcom/android/settings/AodStylePreferenceController$1;
.super Landroid/os/AsyncTask;
.source "AodStylePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AodStylePreferenceController;->updateAodThumbnail(Landroid/content/Context;Lcom/android/settings/AodStylePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AodStylePreferenceController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$preference:Lcom/android/settings/AodStylePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AodStylePreferenceController;Landroid/content/Context;Lcom/android/settings/AodStylePreference;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/AodStylePreferenceController$1;->this$0:Lcom/android/settings/AodStylePreferenceController;

    iput-object p2, p0, Lcom/android/settings/AodStylePreferenceController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/AodStylePreferenceController$1;->val$preference:Lcom/android/settings/AodStylePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/net/Uri;
    .locals 3

    const/4 p1, 0x0

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/AodStylePreferenceController$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.miui.aod.settings"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getThumbnail"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "uri"

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbnail failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AodStylePreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/AodStylePreferenceController$1;->doInBackground([Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/settings/AodStylePreferenceController$1;->val$preference:Lcom/android/settings/AodStylePreference;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/AodStylePreference;->setAodStyleImage(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/AodStylePreferenceController$1;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
