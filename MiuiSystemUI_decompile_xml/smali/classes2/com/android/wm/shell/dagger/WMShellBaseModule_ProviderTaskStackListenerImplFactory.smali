.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProviderTaskStackListenerImplFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providerTaskStackListenerImpl(Landroid/os/Handler;)Lcom/android/wm/shell/common/TaskStackListenerImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;-><init>(Landroid/os/Handler;)V

    .line 4
    return-object v0
    .line 7
.end method
