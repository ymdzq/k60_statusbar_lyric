.class public abstract Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.miui.miwallpaper.IMiuiKeyguardWallpaperCallback"

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
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.miui.miwallpaper.IMiuiKeyguardWallpaperCallback"

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v2, 0x5f4e5446

    .line 7
    if-eq p1, v2, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    return v0

    .line 20
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 24
    move-result p1

    .line 27
    const/4 p4, 0x0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    sget-object p1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/RemoteViews;

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    move-object p1, p4

    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    sget-object p4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 49
    move-result-object p2

    .line 52
    move-object p4, p2

    .line 53
    check-cast p4, Landroid/widget/RemoteViews;

    .line 54
    :cond_3
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMainHandler:Landroid/os/Handler;

    .line 60
    new-instance p2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;

    .line 62
    invoke-direct {p2, p1, p4}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 64
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v0
    .line 73
.end method
