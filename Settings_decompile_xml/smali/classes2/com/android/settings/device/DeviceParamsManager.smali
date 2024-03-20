.class public Lcom/android/settings/device/DeviceParamsManager;
.super Ljava/lang/Object;
.source "DeviceParamsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;,
        Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/android/settings/device/DeviceParamsManager;


# instance fields
.field private mBasicParams:Ljava/lang/String;

.field private mCameraParams:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfoCallback:Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

.field private mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

.field private mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

.field private mRemoteServiceConn:Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;

.field private mUpdating:Z

.field private mWeakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBasicParams(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mBasicParams:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraParams(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mCameraParams:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/device/DeviceParamsManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceInfoCallback(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mDeviceInfoCallback:Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelper(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsInitHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteService(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWeakCallback(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mWeakCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBasicParams(Lcom/android/settings/device/DeviceParamsManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mBasicParams:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCameraParams(Lcom/android/settings/device/DeviceParamsManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mCameraParams:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHelper(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsInitHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdating(Lcom/android/settings/device/DeviceParamsManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mUpdating:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mContext:Landroid/content/Context;

    const-string v0, "device_params_pref"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "basic_info_key"

    const-string v1, ""

    .line 52
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mBasicParams:Ljava/lang/String;

    const-string v0, "camera_info_key"

    .line 53
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager;->mCameraParams:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/device/DeviceParamsManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/android/settings/device/DeviceParamsManager;->INSTANCE:Lcom/android/settings/device/DeviceParamsManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/android/settings/device/DeviceParamsManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/android/settings/device/DeviceParamsManager;->INSTANCE:Lcom/android/settings/device/DeviceParamsManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/android/settings/device/DeviceParamsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/device/DeviceParamsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/device/DeviceParamsManager;->INSTANCE:Lcom/android/settings/device/DeviceParamsManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/device/DeviceParamsManager;->INSTANCE:Lcom/android/settings/device/DeviceParamsManager;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mUpdating:Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/device/DeviceParamsManager;->mDeviceInfoCallback:Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v0, v2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->unregisteCallback(Lcom/android/settings/aidl/IRequestCallback;)V

    .line 88
    iput-object v1, p0, Lcom/android/settings/device/DeviceParamsManager;->mDeviceInfoCallback:Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteServiceConn:Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/device/DeviceParamsManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    iput-object v1, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteServiceConn:Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;

    :cond_2
    return-void
.end method

.method public getBasicParams()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mBasicParams:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraParams()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mCameraParams:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mUpdating:Z

    .line 58
    new-instance v0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;-><init>(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback-IA;)V

    iput-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mDeviceInfoCallback:Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;

    .line 59
    new-instance v0, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;-><init>(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn-IA;)V

    iput-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteServiceConn:Lcom/android/settings/device/DeviceParamsManager$RemoteServiceConn;

    .line 60
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settings/device/RemoteServiceUtil;->bindRemoteService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mUpdating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mBasicParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mCameraParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mUpdating:Z

    .line 78
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager;->mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/device/DeviceParamsInitHelper;->initDeviceParams(Z)V

    :cond_1
    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/DeviceParamsManager;->mWeakCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method
