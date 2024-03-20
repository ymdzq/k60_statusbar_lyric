.class public Lcom/android/settings/development/MiuiOptimizationController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MiuiOptimizationController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLastStatus:Z

.field private mPhysicalDensity:I

.field private mPhysicalHeight:I

.field private mPhysicalWidth:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmLastStatus(Lcom/android/settings/development/MiuiOptimizationController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mLastStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mpositiveClick(Lcom/android/settings/development/MiuiOptimizationController;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->positiveClick(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/MiuiOptimizationController;->mLastStatus:Z

    .line 63
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/development/MiuiOptimizationController;->getPhysicalSize()V

    :cond_0
    const-string/jumbo p1, "window"

    .line 67
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method private enableDefaultFPS(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/development/MiuiOptimizationController;->getTopFps()F

    move-result p1

    float-to-int p1, p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiOptimization"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "peak_refresh_rate"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private getPhysicalSize()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/android/settings/development/MiuiOptimizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 215
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 216
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalHeight:I

    if-le v4, v5, :cond_0

    .line 217
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalWidth:I

    .line 218
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalHeight:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0x230

    .line 221
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalDensity:I

    return-void
.end method

.method private getTopFps()F
    .locals 5

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object p0

    .line 111
    array-length v1, p0

    const/high16 v2, 0x42700000    # 60.0f

    :goto_0
    if-ge v0, v1, :cond_1

    aget v3, p0, v0

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isResetDefaultBrowserInternational(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 8

    .line 343
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.mi.globalbrowser"

    .line 347
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x1

    const/16 v1, 0x1000

    .line 354
    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 355
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    .line 356
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 357
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 358
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 359
    :cond_2
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move v5, p2

    goto :goto_1

    :cond_3
    move v5, v0

    .line 360
    :goto_1
    iget-object v6, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    move v4, p2

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    if-nez v5, :cond_7

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v0, p2

    :cond_7
    :goto_3
    move p2, v0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return p2
.end method

.method private positiveClick(Ljava/lang/Boolean;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->whenChangeOptimizaion(Z)V

    return-void
.end method

.method private resetDefaultBrowserForCts(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.browser"

    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/development/MiuiOptimizationController;->isResetDefaultBrowserInternational(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 334
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private revokeHuanjiRuntimePermission()V
    .locals 6

    const-string v0, "android.permission.CAMERA"

    const-string v1, "com.miui.backup"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "com.miui.huanji"

    const-string v4, "MiuiOptimization"

    const-string/jumbo v5, "revokeHuanjiRuntimePermission"

    .line 269
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 272
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 274
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 276
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 278
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private switchMiuiBluetoothEnableState(Z)V
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchMiuiBluetoothEnableState isCts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiOptimization"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 291
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private switchResolution(IIII)V
    .locals 5

    const-string v0, "MiuiOptimization"

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.IWindowManager"

    .line 248
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTS switchResolution [ displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", density:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/android/settings/development/MiuiOptimizationController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0xff

    invoke-interface {p0, p2, v1, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 259
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 261
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 263
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw p0
.end method

.method private switchResolutionForCtsIfNeed(Z)V
    .locals 9

    const-string v0, ","

    .line 181
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 182
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/development/MiuiOptimizationController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/development/MiuiOptimizationController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v4, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "persist.sys.cts_resolution"

    if-eqz p1, :cond_1

    .line 187
    :try_start_1
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalWidth:I

    if-ne p1, v3, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p1, v4}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result p1

    .line 191
    iget v3, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalDensity:I

    .line 192
    iget v5, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalWidth:I

    .line 193
    iget v6, p0, Lcom/android/settings/development/MiuiOptimizationController;->mPhysicalHeight:I

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/MiuiOptimizationController;->getCtsResolution()[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 198
    aget v5, p1, v4

    const/4 v0, 0x1

    .line 199
    aget v6, p1, v0

    const/4 v0, 0x2

    .line 200
    aget v3, p1, v0

    const-string p1, ""

    .line 201
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-direct {p0, v4, v5, v6, v3}, Lcom/android/settings/development/MiuiOptimizationController;->switchResolution(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "MiuiOptimization"

    .line 208
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private whenChangeOptimizaion(Z)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->MIUI_OPTIMIZATION:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    xor-int/lit8 v0, p1, 0x1

    .line 168
    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiOptimizationController;->resetDefaultBrowserForCts(Z)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->setChecked(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiOptimizationController;->enableDefaultFPS(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 171
    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiOptimizationController;->switchResolutionForCtsIfNeed(Z)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/development/MiuiOptimizationController;->revokeHuanjiRuntimePermission()V

    xor-int/lit8 p1, p1, 0x1

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->switchMiuiBluetoothEnableState(Z)V

    return-void
.end method

.method private writeMiuiOptimizationOptions(Ljava/lang/Object;)V
    .locals 3

    .line 129
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    const-string/jumbo v0, "miui_close_optimization"

    const-string v1, ""

    .line 133
    invoke-static {v1, v0, v1}, Lcom/android/security/AdbUtils;->getInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/security/AdbUtils;->isIntentEnable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 137
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    sget v1, Lcom/android/settings/R$string;->open_optimization_message:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/settings/R$string;->close_optimization_message:I

    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/settings/R$string;->open_miui_optimization_title:I

    goto :goto_1

    .line 140
    :cond_3
    sget v1, Lcom/android/settings/R$string;->close_miui_optimization_title:I

    .line 139
    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/settings/R$string;->open_optimization_option:I

    goto :goto_2

    .line 142
    :cond_4
    sget v1, Lcom/android/settings/R$string;->close_optimization_option:I

    :goto_2
    new-instance v2, Lcom/android/settings/development/MiuiOptimizationController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/development/MiuiOptimizationController$2;-><init>(Lcom/android/settings/development/MiuiOptimizationController;Ljava/lang/Boolean;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->optimization_cancel:I

    new-instance v2, Lcom/android/settings/development/MiuiOptimizationController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/development/MiuiOptimizationController$1;-><init>(Lcom/android/settings/development/MiuiOptimizationController;Ljava/lang/Boolean;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    .line 156
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getCtsResolution()[I
    .locals 5

    const-string p0, ","

    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string/jumbo v1, "persist.sys.cts_resolution"

    const/4 v2, 0x0

    .line 226
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v4

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v4

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResolutionFromProperty exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiOptimization"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    return-object v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_experience_optimization"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/16 p3, 0x19

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 379
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->positiveClick(Ljava/lang/Boolean;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "miui_experience_optimization"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-direct {p0, p2}, Lcom/android/settings/development/MiuiOptimizationController;->writeMiuiOptimizationOptions(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 78
    sget-boolean p1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->setChecked(Z)V

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/development/MiuiOptimizationController;->mLastStatus:Z

    if-eq v0, p1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->whenChangeOptimizaion(Z)V

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/development/MiuiOptimizationController;->mLastStatus:Z

    :cond_0
    return-void
.end method
