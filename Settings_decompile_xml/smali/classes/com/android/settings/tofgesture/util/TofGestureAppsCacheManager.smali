.class public Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;
.super Ljava/lang/Object;
.source "TofGestureAppsCacheManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TofGestureAppsCacheManager"

.field private static volatile mInstance:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;


# instance fields
.field private final emptyTofGestureAppDetailInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/tof/gesture/TofGestureAppDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mTofManager:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mMemoryDrawableCache:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->emptyTofGestureAppDetailInfo:Ljava/util/List;

    .line 36
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string/jumbo v0, "tof"

    .line 37
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mTofManager:Landroid/os/IBinder;

    return-void
.end method

.method public static getInstance()Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mInstance:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mInstance:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    invoke-direct {v1}, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;-><init>()V

    sput-object v1, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mInstance:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mInstance:Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;

    return-object v0
.end method


# virtual methods
.method public getTofGestureAppInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/tof/gesture/TofGestureAppDetailInfo;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "com.miui.tof.TofManager"

    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "debug-hg"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hg getTofGestureAppInfoList: mTofManager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mTofManager:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mTofManager:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const v3, 0xfffffd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/miui/tof/gesture/TofGestureAppData;

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v2}, Lcom/miui/tof/gesture/TofGestureAppData;->getTofGestureAppDetailInfoList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 89
    :try_start_1
    sget-object v3, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callBinderTransact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->emptyTofGestureAppDetailInfo:Ljava/util/List;

    return-object p0

    .line 91
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    throw p0
.end method

.method public loadAppIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mMemoryDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 61
    invoke-static {p1, p3, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 64
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mMemoryDrawableCache:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    return-object v0
.end method

.method public setAppTofGesture(Ljava/lang/String;Z)V
    .locals 3

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "com.miui.tof.TofManager"

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->mTofManager:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const p1, 0xfffffe

    const/4 p2, 0x0

    .line 105
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 108
    :try_start_1
    sget-object p1, Lcom/android/settings/tofgesture/util/TofGestureAppsCacheManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBinderTransact failed. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 110
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw p0
.end method
