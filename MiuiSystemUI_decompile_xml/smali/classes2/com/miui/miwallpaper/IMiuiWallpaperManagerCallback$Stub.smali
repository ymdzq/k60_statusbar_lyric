.class public abstract Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerCallback"

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
    const-string v1, "com.miui.miwallpaper.IMiuiWallpaperManagerCallback"

    .line 3
    if-eq p1, v0, :cond_2

    .line 5
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_1

    .line 8
    const v2, 0x5f4e5446

    .line 10
    if-eq p1, v2, :cond_0

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    return v0

    .line 23
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 35
    move-result-object p3

    .line 38
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 39
    move-result-object p1

    .line 42
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 43
    invoke-virtual {p0, p3, p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->onPartColorComputeComplete(Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    return v0

    .line 48
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    sget-object p1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Landroid/app/WallpaperColors;

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    move-result p2

    .line 75
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 76
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V

    .line 78
    return v0
    .line 81
.end method
