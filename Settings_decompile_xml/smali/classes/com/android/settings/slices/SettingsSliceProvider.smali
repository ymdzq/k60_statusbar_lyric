.class public Lcom/android/settings/slices/SettingsSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "SettingsSliceProvider.java"


# static fields
.field private static final KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

.field private static final PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFirstSliceBound:Z

.field private mFirstSlicePinned:Z

.field private mNightMode:Ljava/lang/Boolean;

.field final mPinnedWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation
.end field

.field mSliceWeakDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field

.field mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;


# direct methods
.method public static synthetic $r8$lambda$D-B7DZ3Y1pfCxLKsFBp-aqFhNOg(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onGetSliceDescendants$2(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DuOQmiIacKr39-rTKxFwLhyIlOo(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$loadSliceInBackground$5(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-bG4SdMsnOHkyNwBKc-u-k_8Gc()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$shutdown$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$JLzbmitJsLVVoNLxctBsGQXuFnA(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSliceUnpinned$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zd0sOAGbBYw8I0yxye9By-9XU8U(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$loadSlice$4(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBji4p6SvdZ8Hs6vjpkFRI0kWJs(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSlicePinned$0(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 121
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    filled-new-array/range {v0 .. v6}, [Landroid/net/Uri;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    .line 132
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    const-string p0, "SettingsSliceProvider"

    const-string v0, "init"

    .line 149
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 1

    .line 516
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const-string/jumbo p0, "partial"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method static grantAllowlistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SettingsSliceProvider"

    if-nez p1, :cond_0

    const-string v1, "No descendants to grant permission with, skipping."

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->slice_allowlist_package_names:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 371
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Allowlisting %d uris to %d pkgs."

    .line 375
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceManager;

    .line 380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 381
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 382
    invoke-virtual {p0, v4, v0}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "No packages to allowlist, skipping."

    .line 372
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$loadSlice$4(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$loadSliceInBackground$5(Landroid/net/Uri;)V
    .locals 0

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSlice(Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$onGetSliceDescendants$2(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 345
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onSlicePinned$0(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$onSliceUnpinned$1(Landroid/net/Uri;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->stopBackgroundWorker(Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$shutdown$3()V
    .locals 0

    .line 390
    invoke-static {}, Lcom/android/settings/slices/SliceBackgroundWorker;->shutdown()V

    return-void
.end method

.method private static parseStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ":"

    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 522
    array-length v0, p0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V
    .locals 2

    .line 485
    invoke-interface {p1}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting background worker for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    invoke-static {v0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/content/Context;Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p1

    .line 497
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceBackgroundWorker;->pin()V

    return-void
.end method

.method private stopBackgroundWorker(Landroid/net/Uri;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SliceBackgroundWorker;

    if-eqz v0, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping background worker for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->unpin()V

    .line 506
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getBlockedKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blocked_slices"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 455
    :try_start_0
    sget-object v1, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    invoke-static {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "SettingsSliceProvider"

    const-string v2, "Bad Settings Slices Allowlist flags"

    .line 457
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method isPrivateSlicesNeeded(Landroid/net/Uri;)Z
    .locals 4

    .line 468
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->config_non_public_slice_query_uri:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 473
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SEARCH_INDEXABLES"

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 473
    invoke-virtual {v0, v1, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 476
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 477
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->config_settingsintelligence_package_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 478
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method loadSlice(Landroid/net/Uri;)V
    .locals 8

    .line 396
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SettingsSliceProvider"

    if-eqz v0, :cond_0

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " loaded from cache"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 400
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 410
    invoke-static {v4, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v4

    .line 413
    invoke-interface {v4}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 415
    instance-of v6, v4, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    if-eqz v6, :cond_1

    .line 417
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 418
    invoke-virtual {v7}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v7

    .line 417
    invoke-static {v6, v5, p1, v7}, Lcom/android/settings/slices/VolumeSliceHelper;->registerIntentToUri(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/net/Uri;I)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 424
    :cond_2
    :goto_0
    new-instance v5, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 426
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Built slice ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") in: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create slicedata for uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method loadSliceInBackground(Landroid/net/Uri;)V
    .locals 1

    .line 435
    new-instance v0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 6

    const-string/jumbo v0, "onBindSlice end"

    .line 209
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    const-string v2, "SettingsSliceProvider"

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindSlice start: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v3, 0x1

    .line 214
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 216
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 215
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getBlockedKeys()Ljava/util/Set;

    move-result-object v4

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested blocked slice with Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez p1, :cond_2

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    .line 227
    iget-object v5, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    .line 228
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    .line 229
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$style;->Theme_SettingsBase:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v4, :cond_5

    const-string v5, "Night mode changed, reload theme"

    .line 231
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 238
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 239
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 240
    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    .line 241
    invoke-virtual {v5}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v5

    invoke-interface {v5, v4, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Lcom/android/settings/slices/CustomSliceable;->getSlice()Landroidx/slice/Slice;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_6

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_6
    return-object p1

    .line 245
    :cond_7
    :try_start_2
    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 246
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    .line 247
    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v4

    .line 248
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object v4

    .line 249
    invoke-virtual {v4, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_8

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_8
    return-object p1

    .line 250
    :cond_9
    :try_start_3
    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 251
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_a

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_a
    return-object p1

    .line 252
    :cond_b
    :try_start_4
    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 253
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_c

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_c
    return-object p1

    .line 254
    :cond_d
    :try_start_5
    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 255
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v4

    .line 257
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    move-result-object v4

    .line 258
    invoke-virtual {v4, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_e

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_e
    return-object p1

    .line 259
    :cond_f
    :try_start_6
    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 260
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object v4

    .line 263
    invoke-virtual {v4, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingPreferenceSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_10

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_10
    return-object p1

    .line 266
    :cond_11
    :try_start_7
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/slices/SliceData;

    if-nez v4, :cond_13

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    .line 269
    invoke-static {p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_12

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_12
    return-object p1

    .line 271
    :cond_13
    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_14

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    :cond_14
    return-object p1

    :catchall_0
    move-exception p1

    .line 273
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    if-nez v1, :cond_15

    .line 275
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSliceBound:Z

    .line 278
    :cond_15
    throw p1
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 357
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    .line 358
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    const-string v0, "SettingsSliceProvider"

    const-string/jumbo v1, "onCreateSliceProvider"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    const/4 p0, 0x1

    return p0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->isPrivateSlicesNeeded(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 307
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceUris(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 306
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " non-public slices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 311
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "/action"

    .line 330
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/intent"

    .line 331
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceUris(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_3

    .line 339
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 341
    sget-object p1, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 344
    :cond_3
    sget-object p1, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 346
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 347
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->grantAllowlistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 7

    .line 162
    iget-boolean v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSlicePinned:Z

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSlicePinned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mFirstSlicePinned:Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x55b

    const/4 v4, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 167
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 173
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 181
    :cond_1
    new-instance v1, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 185
    :cond_2
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 188
    :cond_3
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 194
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    invoke-static {v0, p1}, Lcom/android/settings/slices/VolumeSliceHelper;->unregisterUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-static {v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->unregisterReceivers(Landroid/content/Context;Landroid/net/Uri;)V

    .line 204
    :cond_0
    new-instance v0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V
    .locals 1

    .line 444
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceRelayReceiver;

    invoke-static {p0, p2, v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->registerReceiver(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 389
    new-instance p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
