.class public Lcom/google/android/binder/BinderWrapper;
.super Landroid/os/Binder;
.source "BinderWrapper.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static empty:Lcom/google/android/binder/Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method protected dispatchTransact(ILandroid/os/Parcel;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move p3, v1

    :goto_0
    if-nez p3, :cond_1

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/binder/BinderWrapper;->dispatchTransact(ILandroid/os/Parcel;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
