.class Lcom/android/settings/AodShowModePreferenceController$1;
.super Landroid/os/AsyncTask;
.source "AodShowModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AodShowModePreferenceController;->updateAodShowMode(Landroid/content/Context;Lcom/android/settings/KeyguardRestrictedPreference;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AodShowModePreferenceController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$preference:Lcom/android/settings/KeyguardRestrictedPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AodShowModePreferenceController;Landroid/content/Context;Lcom/android/settings/KeyguardRestrictedPreference;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/AodShowModePreferenceController$1;->this$0:Lcom/android/settings/AodShowModePreferenceController;

    iput-object p2, p0, Lcom/android/settings/AodShowModePreferenceController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/AodShowModePreferenceController$1;->val$preference:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/AodShowModePreferenceController$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/AodShowModePreferenceController$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.miui.aod.settings"

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getShowModeTip"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "modeTip"

    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AodShowModePreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AodShowModePreferenceController$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/AodShowModePreferenceController$1;->val$preference:Lcom/android/settings/KeyguardRestrictedPreference;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/settings/AodShowModePreferenceController$1;->val$preference:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
