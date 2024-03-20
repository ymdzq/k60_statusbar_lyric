.class Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;
.super Landroid/os/AsyncTask;
.source "MiuiNotificationSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiNotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiNotificationSoundPreference;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiNotificationSoundPreference;Landroid/net/Uri;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/MiuiNotificationSoundPreference;

    iput-object p2, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/MiuiNotificationSoundPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/CharSequence;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/MiuiNotificationSoundPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;->onPostExecute(Ljava/lang/CharSequence;)V

    return-void
.end method
