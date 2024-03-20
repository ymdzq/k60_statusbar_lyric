.class public Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;
.super Landroid/os/AsyncTask;
.source "MiuiMyDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMyDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadVersionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/device/MiuiMyDeviceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMyDeviceSettings;)V
    .locals 1

    .line 331
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 332
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 337
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "WordMouth"

    const-string v2, "androidVersion"

    invoke-static {p1, v1, v2, v0}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mVersion:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 349
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiMyDeviceSettings;

    .line 351
    iget-object v0, p1, Lcom/android/settings/device/MiuiMyDeviceSettings;->mVersionCardView:Lcom/android/settings/device/MiuiVersionCard;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;->mVersion:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiVersionCard;->refreshBetaView(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 353
    invoke-static {p1, p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->-$$Nest$fputmIsNeedShowAndroid12(Lcom/android/settings/device/MiuiMyDeviceSettings;Z)V

    :cond_0
    return-void
.end method
