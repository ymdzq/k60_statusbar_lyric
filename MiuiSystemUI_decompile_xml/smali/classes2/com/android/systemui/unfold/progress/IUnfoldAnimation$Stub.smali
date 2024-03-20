.class public abstract Lcom/android/systemui/unfold/progress/IUnfoldAnimation$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.systemui.unfold.progress.IUnfoldAnimation"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.systemui.unfold.progress.IUnfoldAnimation"

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
    if-eq p1, v2, :cond_4

    .line 18
    if-eq p1, v1, :cond_1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 27
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string p3, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    .line 35
    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 37
    move-result-object p3

    .line 40
    if-eqz p3, :cond_3

    .line 41
    instance-of p4, p3, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 43
    if-eqz p4, :cond_3

    .line 45
    move-object p1, p3

    .line 47
    check-cast p1, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    new-instance p3, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    .line 51
    invoke-direct {p3, p1}, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 53
    move-object p1, p3

    .line 56
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 57
    check-cast p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener;

    .line 62
    return v1

    .line 64
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1
    .line 68
.end method
