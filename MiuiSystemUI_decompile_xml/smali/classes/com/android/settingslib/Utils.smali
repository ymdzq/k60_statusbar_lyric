.class public abstract Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final INCOMPATIBLE_CHARGER_WARNING_DISABLED:Ljava/lang/String; = "incompatible_charger_warning_disabled"

.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"


# direct methods
.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 9
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 12
    move-result-object p1

    .line 15
    const-class v1, Landroid/os/UserManager;

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/os/UserManager;

    .line 22
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 28
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 32
    move-result-object v1

    .line 35
    new-instance v2, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v2, p1}, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    .line 38
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 41
    move-result v1

    .line 44
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    .line 45
    move-result-object v2

    .line 48
    :try_start_0
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    .line 49
    invoke-direct {v3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 51
    iput-object p1, v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 54
    iput-boolean v1, v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    .line 56
    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 62
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v2}, Lcom/android/launcher3/icons/IconFactory;->close()V

    .line 66
    return-object p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_0
    throw p0
    .line 79
.end method

.method public static getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    filled-new-array {p0}, [I

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    throw p1
    .line 23
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;II)I
    .locals 0

    .line 1
    filled-new-array {p1}, [I

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    return p1
    .line 18
.end method

.method public static getColorStateListDefaultColor(ILandroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public static getThemeAttr(ILandroid/content/Context;)I
    .locals 0

    .line 1
    filled-new-array {p0}, [I

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    return p1
    .line 18
.end method

.method public static tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 8
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Landroid/net/vcn/VcnTransportInfo;

    .line 21
    invoke-virtual {p0}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 23
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return-object p0
    .line 29
.end method
