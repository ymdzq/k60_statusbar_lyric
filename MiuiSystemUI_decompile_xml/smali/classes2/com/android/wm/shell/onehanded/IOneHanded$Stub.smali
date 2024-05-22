.class public abstract Lcom/android/wm/shell/onehanded/IOneHanded$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/onehanded/IOneHanded;


# static fields
.field static final TRANSACTION_startOneHanded:I = 0x2

.field static final TRANSACTION_stopOneHanded:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.onehanded.IOneHanded"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.wm.shell.onehanded.IOneHanded"

    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    instance-of v1, v0, Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    check-cast v0, Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 18
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
    .line 26
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.onehanded.IOneHanded"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_3

    .line 18
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    const/4 v0, 0x3

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V

    .line 31
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V

    .line 35
    :goto_0
    return v1

    .line 38
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    return v1
    .line 42
.end method
