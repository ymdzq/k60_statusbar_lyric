.class public Lcom/google/android/binder/IInterfaceProxy;
.super Ljava/lang/Object;
.source "IInterfaceProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/binder/IInterfaceProxy;->mRemote:Landroid/os/IBinder;

    .line 21
    iput-object p2, p0, Lcom/google/android/binder/IInterfaceProxy;->mDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/binder/IInterfaceProxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method protected final obtainData()Landroid/os/Parcel;
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/binder/IInterfaceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final transact(ILandroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/google/android/binder/IInterfaceProxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 43
    throw p0
.end method
