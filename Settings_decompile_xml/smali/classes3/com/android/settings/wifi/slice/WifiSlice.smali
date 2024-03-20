.class public Lcom/android/settings/wifi/slice/WifiSlice;
.super Ljava/lang/Object;
.source "WifiSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;
    }
.end annotation


# static fields
.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x3


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 93
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    iput-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    return-void
.end method

.method private getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0x4000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 321
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    const/high16 v0, 0x10000000

    .line 326
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 329
    invoke-static {p0, p3, p1, p4}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method private getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->keywords_wifi:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 400
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 401
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;-><init>()V

    .line 402
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 403
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;
    .locals 5

    .line 226
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 227
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiSlice;->getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 230
    iget-object p3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, p3}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p3, 0x0

    .line 235
    invoke-static {p0, p3, p1}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 237
    invoke-virtual {p2, p0}, Landroidx/slice/builders/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;

    :cond_1
    :goto_0
    return-object p2
.end method

.method private getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    .line 333
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 336
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 339
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 340
    invoke-virtual {v2, v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryAction()Landroid/app/PendingIntent;
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 394
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isCallerExemptUid(Landroid/content/Context;)Z
    .locals 4

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->config_exempt_wifi_permission_uid_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling uid name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 170
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isGuestUser(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 157
    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    return v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method

.method private static isPermissionGranted(Landroid/content/Context;)Z
    .locals 7

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 184
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 191
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    .line 194
    :goto_0
    new-instance v5, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v6}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 196
    invoke-virtual {v5, v1, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object p0

    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v4

    :cond_1
    return v2

    .line 186
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create Context for package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiSlice"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isWifiEnabled()Z
    .locals 1

    .line 383
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 408
    const-class p0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    return-object p0
.end method

.method protected getEndIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 278
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_settings_24dp:I

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSecurity()I

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$drawable;->ic_friction_lock_closed:I

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getHeaderRow(ZLcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getPrimaryAction()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    invoke-static {v0, p1, v1, p2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    .line 214
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 215
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    .line 216
    invoke-virtual {p2, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_0
    return-object p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 365
    const-class v1, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 369
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-string v3, "main_toggle_wifi"

    const/16 v5, 0x25b

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/settings/slices/CustomSliceable;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 6

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isWifiEnabled()Z

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/slice/WifiSlice;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "WifiSlice"

    const-string v4, "Guest user is not allowed to configure Wi-Fi!"

    .line 107
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "User is a guest"

    const-string v5, "232798363"

    filled-new-array {v5, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x534e4554

    invoke-static {v4, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 109
    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/slice/WifiSlice;->isCallerExemptUid(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/slice/WifiSlice;->isPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    .line 116
    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    if-eqz v0, :cond_c

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getResults()Ljava/util/List;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    move v0, v3

    goto :goto_2

    .line 125
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-lez v0, :cond_6

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {v1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    .line 131
    invoke-direct {p0, v4, v1, v4}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZLcom/android/settings/wifi/slice/WifiSliceItem;Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    .line 135
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isApRowCollapsed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 140
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4
    const/4 v4, 0x3

    if-ge v3, v4, :cond_b

    if-ge v3, v0, :cond_9

    .line 143
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_5

    :cond_9
    if-ne v3, v0, :cond_a

    .line 145
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/slice/WifiSlice;->getLoadingRow(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_5

    .line 147
    :cond_a
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 148
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v4, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 152
    :cond_b
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 120
    :cond_c
    :goto_6
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 379
    sget p0, Lcom/android/settings/R$string;->menu_key_network:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 99
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 5

    .line 290
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 292
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v1

    const-string v2, "key_chosen_wifientry_key"

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 295
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->pref_title_network_details:I

    .line 297
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v2, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 298
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 299
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v1, 0x67

    .line 300
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 302
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/WifiDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 308
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getActivityAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0

    .line 311
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key_wifi_slice_uri"

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 314
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settings/wifi/slice/WifiSlice;->getBroadcastAction(ILandroid/content/Intent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    const v1, 0x1010429    # @android:attr/colorControlNormal

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v1

    .line 272
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldShowXLevelIcon()Z

    move-result p1

    .line 271
    invoke-static {v1, p1}, Lcom/android/settingslib/wifi/WifiUtils;->getInternetIconResource(IZ)I

    move-result p1

    .line 270
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 273
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 274
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method protected getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 5

    .line 243
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 245
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v2, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiEntryAction(Lcom/android/settings/wifi/slice/WifiSliceItem;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getEndIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {v0, p0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_0
    return-object v0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 352
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 351
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 353
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
