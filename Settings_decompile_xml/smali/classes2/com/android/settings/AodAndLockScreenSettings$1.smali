.class Lcom/android/settings/AodAndLockScreenSettings$1;
.super Landroid/os/AsyncTask;
.source "AodAndLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AodAndLockScreenSettings;->initLockScreenMagazine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AodAndLockScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AodAndLockScreenSettings;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 0

    .line 767
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 770
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 764
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AodAndLockScreenSettings$1;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 776
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->-$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/AodAndLockScreenSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings$1;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->-$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/AodAndLockScreenSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/AodAndLockScreenSettings;->-$$Nest$mlockScreenCategoryRemovePreference(Lcom/android/settings/AodAndLockScreenSettings;Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 764
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/AodAndLockScreenSettings$1;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
