.class public Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceImpl;
.super Lcom/google/android/binder/IInterfaceProxy;
.source "ISplitInstallServiceImpl.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallService"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 39
    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 66
    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 76
    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getSessionState(Ljava/lang/String;ILcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getSessionStates(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-static {v0, p2}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/android/binder/IInterfaceProxy;->obtainData()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 28
    invoke-static {v0, p3}, Lcom/google/android/binder/ParcelHelper;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 29
    invoke-static {v0, p4}, Lcom/google/android/binder/ParcelHelper;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/google/android/binder/IInterfaceProxy;->transact(ILandroid/os/Parcel;)V

    return-void
.end method
