.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDevicePostureControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDevicePostureController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DevicePostureController;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/DevicePostureController;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/common/DevicePostureController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 4
    return-object v0
    .line 7
.end method
