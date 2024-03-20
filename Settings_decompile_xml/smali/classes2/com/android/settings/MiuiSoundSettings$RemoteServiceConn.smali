.class Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;
.super Ljava/lang/Object;
.source "MiuiSoundSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1172
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fputmRemoteService(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    .line 1177
    iget-object p2, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    new-instance v0, Lcom/android/settings/device/DeviceParamsInitHelper;

    invoke-static {p2}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmRemoteService(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/device/DeviceParamsInitHelper;-><init>(Landroid/content/Context;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    invoke-static {p2, v0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fputmHelper(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/device/DeviceParamsInitHelper;)V

    .line 1179
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmRemoteService(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmDeviceInfoCallback(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->registerCallback(Lcom/android/settings/aidl/IRequestCallback;)V

    .line 1180
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$fgetmHelper(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/device/DeviceParamsInitHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceParamsInitHelper;->initSoundParams()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1182
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MiuiSoundSettings"

    const-string/jumbo p1, "onServiceDisconnected"

    .line 1188
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
