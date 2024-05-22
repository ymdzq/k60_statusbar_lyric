.class public final Lcom/miui/systemui/PackageInstalledObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sObservedPackages:Ljava/util/List;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPackageInstalledCallbacks:Ljava/util/ArrayList;

.field public final mUserObservedPackages:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/PackageInstalledObserver;->sObservedPackages:Ljava/util/List;

    .line 7
    const-string v1, "com.google.android.apps.chromecast.app"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "com.google.android.apps.nbu.paisa.user"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "com.google.android.apps.walletnfcrel"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "com.android.camera"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "com.xiaomi.smarthome"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "com.android.deskclock"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
    .line 39
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/PackageInstalledObserver;->mUserObservedPackages:Ljava/util/Hashtable;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/PackageInstalledObserver;->mPackageInstalledCallbacks:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/miui/systemui/PackageInstalledObserver;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/miui/systemui/PackageInstalledObserver;->mMainHandler:Landroid/os/Handler;

    .line 21
    new-instance p2, Lcom/miui/systemui/PackageInstalledObserver$1;

    .line 23
    invoke-direct {p2, p0}, Lcom/miui/systemui/PackageInstalledObserver$1;-><init>(Lcom/miui/systemui/PackageInstalledObserver;)V

    .line 25
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 28
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, p1, p0, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 31
    return-void
    .line 34
.end method


# virtual methods
.method public final isPackageInstalled(ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/systemui/PackageInstalledObserver;->sObservedPackages:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/miui/systemui/PackageInstalledObserver;->mContext:Landroid/content/Context;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;

    .line 14
    invoke-direct {v0, p1, p2}, Lcom/miui/systemui/PackageInstalledObserver$UserPackageCombine;-><init>(ILjava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/miui/systemui/PackageInstalledObserver;->mUserObservedPackages:Ljava/util/Hashtable;

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Boolean;

    .line 25
    if-nez v2, :cond_0

    .line 27
    invoke-static {v1, p2, p1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 29
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    invoke-static {v1, p2, p1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 50
    move-result p0

    .line 53
    return p0
    .line 54
.end method
