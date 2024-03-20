.class Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;
.super Ljava/lang/Object;
.source "DeviceParamsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceParamsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceParamsManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/device/DeviceParamsManager;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;-><init>(Lcom/android/settings/device/DeviceParamsManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmRemoteService(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmRemoteService(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "DeviceParamsManager"

    const-string p1, "IRemoteGetDeviceInfoService is not bound"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    new-instance p2, Lcom/android/settings/device/DeviceParamsInitHelper;

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceParamsManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmRemoteService(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/android/settings/device/DeviceParamsInitHelper;-><init>(Landroid/content/Context;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V

    invoke-static {p1, p2}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmHelper(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsInitHelper;)V

    .line 156
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmRemoteService(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p2}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmDeviceInfoCallback(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->registerCallback(Lcom/android/settings/aidl/IRequestCallback;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p0}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmHelper(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsInitHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/device/DeviceParamsInitHelper;->initDeviceParams(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "DeviceParamsManager"

    const-string/jumbo p1, "onServiceDisconnected"

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
