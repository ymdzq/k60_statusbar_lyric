.class public abstract Lcom/miui/tsmclient/service/ICallback$Stub;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lcom/miui/tsmclient/service/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tsmclient/service/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.tsmclient.service.ICallback"

    .line 27
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "onError"

    return-object p0

    :cond_1
    const-string p0, "onSuccess"

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/miui/tsmclient/service/ICallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.tsmclient.service.ICallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 100
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-interface {p0, p1, p4}, Lcom/miui/tsmclient/service/ICallback;->onError(ILjava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-interface {p0, p1}, Lcom/miui/tsmclient/service/ICallback;->onSuccess(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 82
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
