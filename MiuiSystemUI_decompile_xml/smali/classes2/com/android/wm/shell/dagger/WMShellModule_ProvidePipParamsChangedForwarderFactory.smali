.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipParamsChangedForwarderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providePipParamsChangedForwarder()Lcom/android/wm/shell/pip/PipParamsChangedForwarder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
