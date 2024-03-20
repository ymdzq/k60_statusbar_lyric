.class public Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;
.super Landroid/os/AsyncTask;
.source "MiuiDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadDeviceInfoTask"
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
.field private mCpuInfo:Ljava/lang/String;

.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/device/MiuiDeviceInfoSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalRam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiDeviceInfoSettings;)V
    .locals 1

    .line 594
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 595
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 587
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 600
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    .line 601
    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mCpuInfo:Ljava/lang/String;

    .line 602
    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getTotaolRam()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mTotalRam:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 587
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 608
    iget-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiDeviceInfoSettings;

    if-eqz p1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mCpuInfo:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;->mTotalRam:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->-$$Nest$mhandleTaskResult(Lcom/android/settings/device/MiuiDeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
