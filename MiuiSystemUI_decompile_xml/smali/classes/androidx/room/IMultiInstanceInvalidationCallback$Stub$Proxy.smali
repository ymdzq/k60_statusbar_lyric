.class public final Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/room/IMultiInstanceInvalidationCallback;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onInvalidation([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 14
    const/4 p1, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    sget p0, Landroidx/room/MultiInstanceInvalidationClient$1;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    throw p0
    .line 34
.end method
