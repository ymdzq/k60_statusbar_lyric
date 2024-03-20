.class public final Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 2
    check-cast p2, Landroid/bluetooth/BluetoothDeviceGroup;

    .line 4
    iput-object p2, p1, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;

    .line 6
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mIsProfileReady:Z

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    const-string p2, "onServiceConnected: mCallingPackage = "

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 18
    iget-object p2, p2, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mCallingPackage:Ljava/lang/String;

    .line 20
    const-string v0, "DeviceGroupClientProfile"

    .line 22
    invoke-static {p1, p2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 27
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mCallingPackage:Ljava/lang/String;

    .line 29
    const-string p2, "com.android.settings"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 39
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mService:Landroid/bluetooth/BluetoothDeviceGroup;

    .line 41
    new-instance p2, Landroid/os/Handler;

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    move-result-object v0

    .line 48
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mGroupCallback:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;

    .line 52
    invoke-virtual {p1, p0, p2}, Landroid/bluetooth/BluetoothDeviceGroup;->registerGroupClientApp(Landroid/bluetooth/BluetoothGroupCallback;Landroid/os/Handler;)Z

    .line 54
    :cond_0
    return-void
    .line 57
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->mIsProfileReady:Z

    .line 5
    return-void
    .line 7
.end method
