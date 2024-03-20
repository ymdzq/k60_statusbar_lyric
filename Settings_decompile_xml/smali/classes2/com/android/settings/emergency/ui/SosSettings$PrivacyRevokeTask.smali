.class Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;
.super Landroid/os/AsyncTask;
.source "SosSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/ui/SosSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivacyRevokeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mWeakContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/emergency/ui/SosSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 1

    .line 568
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 569
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 574
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/emergency/ui/SosSettings;

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/id/IdentifierManager;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SOS"

    invoke-static {p0, v0, p1}, Lcom/miui/privacypolicy/PrivacyManager;->privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 565
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 584
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/emergency/ui/SosSettings;

    if-nez p0, :cond_0

    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 589
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/emergency/util/Config;->setSosEnable(Landroid/content/Context;Z)V

    .line 590
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmSosEnablePref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 591
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/emergency/util/Config;->setSosPrivacyConfirmed(Landroid/content/Context;Z)V

    .line 592
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 593
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/emergency/util/Config;->setSosEmergencyContacts(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 596
    :cond_1
    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$mshowRevokeFailedDialog(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 565
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
