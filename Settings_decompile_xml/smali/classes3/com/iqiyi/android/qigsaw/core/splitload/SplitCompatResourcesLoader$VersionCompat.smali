.class abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;
.super Ljava/lang/Object;
.source "SplitCompatResourcesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VersionCompat"
.end annotation


# static fields
.field private static activityThread:Ljava/lang/Object;

.field private static activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static addAssetPathMethod:Ljava/lang/reflect/Method;

.field private static contextImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getApkAssetsMethod:Ljava/lang/reflect/Method;

.field private static getAssetPathMethod:Ljava/lang/reflect/Method;

.field private static getCookieNameMethod:Ljava/lang/reflect/Method;

.field private static loadedApkClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

.field private static mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

.field private static mActivitiesInActivityThread:Ljava/lang/reflect/Field;

.field private static mPackagesInActivityThread:Ljava/lang/reflect/Field;

.field private static mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

.field private static mResourcesInContextImpl:Ljava/lang/reflect/Field;

.field private static mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

.field private static mResourcesInLoadedApk:Ljava/lang/reflect/Field;

.field private static mStringBlocksField:Ljava/lang/reflect/Field;

.field private static mThemeInContentImpl:Ljava/lang/reflect/Field;

.field private static mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

.field private static resourcesManager:Ljava/lang/Object;

.field private static resourcesManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;-><init>()V

    return-void
.end method

.method static getActivityThread()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    .line 413
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    return-object v0
.end method

.method static getActivityThreadClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ActivityThread"

    .line 427
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    .line 429
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getAddAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 535
    const-class v0, Landroid/content/res/AssetManager;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    .line 537
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getContextImplClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ContextImpl"

    .line 451
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    .line 453
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getGetApkAssetsMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 560
    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getApkAssets"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    .line 562
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getGetAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "android.content.res.ApkAssets"

    .line 551
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getAssetPath"

    .line 552
    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    .line 554
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getGetCookieNameMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 542
    const-class v0, Landroid/content/res/AssetManager;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCookieName"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    .line 544
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getLoadedApkClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.LoadedApk"

    .line 443
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    .line 445
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getResourcesManager()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    .line 421
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    return-object v0
.end method

.method static getResourcesManagerClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ResourcesManager"

    .line 435
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    .line 437
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    return-object v0
.end method

.method static mActiveResourcesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 500
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    .line 502
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mActiveResourcesInResourcesManager()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 507
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    .line 509
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mActivitiesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActivities"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    .line 523
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mPackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    .line 495
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcePackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResourcePackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    .line 516
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInContextImpl()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    .line 467
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 471
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 472
    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    .line 474
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInLoadedApk()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 457
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 458
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getLoadedApkClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    .line 460
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mStringBlocksInAssetManager()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 528
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "mStringBlocks"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    .line 530
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mThemeInContentImpl()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 486
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    .line 488
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mThemeInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 479
    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    .line 481
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method
