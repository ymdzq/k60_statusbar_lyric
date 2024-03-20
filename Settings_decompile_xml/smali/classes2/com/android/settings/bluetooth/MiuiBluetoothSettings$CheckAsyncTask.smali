.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedDeviceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListGroupRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiBluetoothSettings;",
            ">;"
        }
    .end annotation
.end field

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 1609
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1610
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    .line 1611
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;

    .line 1612
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->deviceListGroupRef:Ljava/lang/ref/WeakReference;

    .line 1613
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->cachedDeviceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 1636
    aget-object p0, p1, p0

    .line 1637
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isRarelyUsedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1638
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNearByBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1639
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1641
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1603
    check-cast p1, [Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->doInBackground([Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->cachedDeviceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1620
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1621
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 1623
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 1626
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->deviceListGroupRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_2

    .line 1627
    instance-of p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 1629
    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->addDeviceCache(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1603
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
