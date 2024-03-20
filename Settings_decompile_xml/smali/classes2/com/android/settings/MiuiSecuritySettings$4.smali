.class Lcom/android/settings/MiuiSecuritySettings$4;
.super Landroid/os/AsyncTask;
.source "MiuiSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecuritySettings;->initLockScreenMagazine()V
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
.field final synthetic this$0:Lcom/android/settings/MiuiSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecuritySettings;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 0

    .line 569
    iget-object p1, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 572
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecuritySettings$4;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 577
    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->-$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/MiuiSecuritySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSecuritySettings;->-$$Nest$fgetmSecurityCategory(Lcom/android/settings/MiuiSecuritySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiSecuritySettings$4;->this$0:Lcom/android/settings/MiuiSecuritySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->-$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/MiuiSecuritySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 566
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSecuritySettings$4;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
