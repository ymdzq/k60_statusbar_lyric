.class public abstract Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceHolder;
.super Lcom/google/android/binder/BinderWrapper;
.source "ISplitInstallServiceHolder.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/binder/BinderWrapper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static queryLocalInterface(Landroid/os/IBinder;)Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    .line 23
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceImpl;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceImpl;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0
.end method
