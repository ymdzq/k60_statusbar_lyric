.class Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;
.super Ljava/lang/Object;
.source "HapticFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/haptic/HapticFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/HapticFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/haptic/HapticFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/haptic/HapticFragment;Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;-><init>(Lcom/android/settings/haptic/HapticFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 219
    iget-object p1, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-static {p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fputmRemoteService(Lcom/android/settings/haptic/HapticFragment;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    .line 224
    iget-object p2, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    new-instance v0, Lcom/android/settings/device/DeviceParamsInitHelper;

    invoke-static {p2}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fgetmRemoteService(Lcom/android/settings/haptic/HapticFragment;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/device/DeviceParamsInitHelper;-><init>(Landroid/content/Context;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    invoke-static {p2, v0}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fputmHelper(Lcom/android/settings/haptic/HapticFragment;Lcom/android/settings/device/DeviceParamsInitHelper;)V

    .line 226
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-static {p1}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fgetmRemoteService(Lcom/android/settings/haptic/HapticFragment;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-static {p2}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fgetmDeviceInfoCallback(Lcom/android/settings/haptic/HapticFragment;)Lcom/android/settings/haptic/HapticFragment$UpdateInfoCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->registerCallback(Lcom/android/settings/aidl/IRequestCallback;)V

    .line 227
    iget-object p0, p0, Lcom/android/settings/haptic/HapticFragment$RemoteServiceConn;->this$0:Lcom/android/settings/haptic/HapticFragment;

    invoke-static {p0}, Lcom/android/settings/haptic/HapticFragment;->-$$Nest$fgetmHelper(Lcom/android/settings/haptic/HapticFragment;)Lcom/android/settings/device/DeviceParamsInitHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceParamsInitHelper;->initSoundParams()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "HapticFragment"

    const-string/jumbo p1, "onServiceDisconnected"

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
