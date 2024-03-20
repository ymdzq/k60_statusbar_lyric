.class Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;
.super Lcom/android/settings/aidl/IRequestCallback$Stub;
.source "DeviceParamsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceParamsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateInfoCallback"
.end annotation


# instance fields
.field private mIsInitDeviceUseModel:Z

.field final synthetic this$0:Lcom/android/settings/device/DeviceParamsManager;


# direct methods
.method public static synthetic $r8$lambda$k1SxCIsSI8PQTDSJpEZulVD2IPA(Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->lambda$onRequestComplete$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/device/DeviceParamsManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-direct {p0}, Lcom/android/settings/aidl/IRequestCallback$Stub;-><init>()V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->mIsInitDeviceUseModel:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/device/DeviceParamsManager;Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;-><init>(Lcom/android/settings/device/DeviceParamsManager;)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$0()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p0}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmWeakCallback(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(ILjava/lang/String;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmUpdating(Lcom/android/settings/device/DeviceParamsManager;Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmHelper(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsInitHelper;

    move-result-object v0

    const-string v2, "DeviceParamsManager"

    if-nez v0, :cond_0

    const-string p0, "DeviceParamsInitHelper is null"

    .line 107
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmHelper(Lcom/android/settings/device/DeviceParamsManager;)Lcom/android/settings/device/DeviceParamsInitHelper;

    move-result-object v0

    .line 111
    iget-object v3, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v3}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceParamsManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "device_params_pref"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_1

    goto/16 :goto_1

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1, p2}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmCameraParams(Lcom/android/settings/device/DeviceParamsManager;Ljava/lang/String;)V

    .line 131
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmCameraParams(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_info_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lcom/android/settings/device/ParseMiShopDataUtils;->getDataSuccess(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "Failed to get camera info "

    .line 133
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmWeakCallback(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmWeakCallback(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 136
    new-instance p1, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p1, p2}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmBasicParams(Lcom/android/settings/device/DeviceParamsManager;Ljava/lang/String;)V

    .line 115
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {v3}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fgetmBasicParams(Lcom/android/settings/device/DeviceParamsManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "basic_info_key"

    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p2}, Lcom/android/settings/device/ParseMiShopDataUtils;->showBasicItems(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 125
    :cond_5
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p0, v4}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmUpdating(Lcom/android/settings/device/DeviceParamsManager;Z)V

    .line 126
    invoke-virtual {v0, v4}, Lcom/android/settings/device/DeviceParamsInitHelper;->initCameraParams(Z)V

    goto :goto_1

    :cond_6
    :goto_0
    const-string p1, "Failed to get basic device info "

    .line 118
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean p1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->mIsInitDeviceUseModel:Z

    if-eqz p1, :cond_7

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->mIsInitDeviceUseModel:Z

    .line 121
    iget-object p0, p0, Lcom/android/settings/device/DeviceParamsManager$UpdateInfoCallback;->this$0:Lcom/android/settings/device/DeviceParamsManager;

    invoke-static {p0, v4}, Lcom/android/settings/device/DeviceParamsManager;->-$$Nest$fputmUpdating(Lcom/android/settings/device/DeviceParamsManager;Z)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceParamsInitHelper;->initDeviceParams(Z)V

    :cond_7
    :goto_1
    return-void
.end method
