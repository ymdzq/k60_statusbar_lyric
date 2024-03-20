.class public Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;
.super Landroid/os/AsyncTask;
.source "MiuiMyDeviceDetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMyDeviceDetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadCpuInfoTask"
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
            "Lcom/android/settings/device/MiuiMyDeviceDetailSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mPreCpuInfo:Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;)V
    .locals 1

    .line 548
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 549
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    .line 550
    iput-object p2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mPreCpuInfo:Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 540
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const-string p1, "MiuiMyDeviceDetail"

    const-string v0, "begin getCpu"

    .line 556
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    .line 558
    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mCpuInfo:Ljava/lang/String;

    .line 559
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 560
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 563
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_2

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "CpuParameters"

    invoke-static {p1, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 567
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 569
    invoke-static {}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$sfgetCPU_CLOUD_CONFIG_KEY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 576
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 577
    invoke-static {v1}, Lcom/android/settings/device/ParseMiShopDataUtils;->setCpuInfo(Ljava/lang/String;)V

    .line 581
    :cond_2
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->queryAndUpdateCpuIcon(Landroid/content/Context;)V

    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 540
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 589
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    if-eqz p1, :cond_0

    .line 591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCpu success:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiMyDeviceDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mPreCpuInfo:Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;->mCpuInfo:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;->onRequestComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
