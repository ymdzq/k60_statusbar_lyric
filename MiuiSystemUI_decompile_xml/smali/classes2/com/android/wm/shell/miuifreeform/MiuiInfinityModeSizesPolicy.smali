.class public abstract Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;


# static fields
.field public static final DESKTOP_PADDING_BOTTOM_DP:F = 78.0f

.field public static FORBIDDEN_PACKAGES:Ljava/util/List; = null

.field public static FORBIDDEN_WINDOWS:Ljava/util/List; = null

.field public static final PADDING_BOTTOM_DP:F = 26.0f

.field public static final PADDING_LEFT_DP:F = 20.0f

.field public static final TAG:Ljava/lang/String; = "MiuiInfinityModeSizesPolicy"

.field private static sActivityManager:Landroid/app/ActivityManager;

.field protected static sFreeformBlackList:Ljava/util/List;

.field protected static sFreeformWhiteList:Ljava/util/List;


# instance fields
.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mLevelsPool:Ljava/util/ArrayList;

.field public final mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

.field public final mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

.field public final mSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

.field public mTaskChangingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_PACKAGES:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_WINDOWS:Ljava/util/List;

    .line 14
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_PACKAGES:Ljava/util/List;

    .line 16
    const-string v1, "com.xiaomi.mirror"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_PACKAGES:Ljava/util/List;

    .line 23
    const-string v1, "com.android.quicksearchbox"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_PACKAGES:Ljava/util/List;

    .line 30
    const-string v1, "com.miui.otaprovision"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_WINDOWS:Ljava/util/List;

    .line 37
    const-string v1, "com.android.settings.connecteddevice.usb.UsbModeChooserActivity"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_WINDOWS:Ljava/util/List;

    .line 44
    const-string v1, "com.miui.permcenter.permissions.SystemAppPermissionDialogActivity"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_WINDOWS:Ljava/util/List;

    .line 51
    const-string v1, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
    .line 58
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mLevelsPool:Ljava/util/ArrayList;

    .line 10
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_NULL:I

    .line 12
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mTaskChangingType:I

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 23
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 25
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mSizeLevelConfig:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p0

    .line 32
    const-string p1, "activity"

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Landroid/app/ActivityManager;

    .line 39
    sput-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sActivityManager:Landroid/app/ActivityManager;

    .line 41
    return-void
    .line 43
.end method

.method public static activityManager()Landroid/app/ActivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sActivityManager:Landroid/app/ActivityManager;

    .line 2
    return-object v0
    .line 4
.end method

.method public static inFreeformBlackList(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformBlackList:Ljava/util/List;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->activityManager()Landroid/app/ActivityManager;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getFreeformBlackList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformBlackList:Ljava/util/List;

    .line 14
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformBlackList:Ljava/util/List;

    .line 16
    if-nez v0, :cond_1

    .line 18
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "inFreeformWhiteList  empty blacklist"

    .line 22
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 38
    if-eqz p0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string/jumbo p0, "unknown"

    .line 47
    :goto_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformBlackList:Ljava/util/List;

    .line 50
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 55
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "inFreeformBlackList  result:"

    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, " packname:"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v0
    .line 83
.end method

.method public static inFreeformWhiteList(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformWhiteList:Ljava/util/List;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->getFreeformResizeableWhiteList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformWhiteList:Ljava/util/List;

    .line 10
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformWhiteList:Ljava/util/List;

    .line 12
    if-nez v0, :cond_1

    .line 14
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "inFreeformWhiteList  empty wihtelist"

    .line 18
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x5

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 43
    if-eqz p0, :cond_4

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const-string/jumbo p0, "unknown"

    .line 52
    :goto_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sFreeformWhiteList:Ljava/util/List;

    .line 55
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 60
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "inFreeformWhiteList  result:"

    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, " packageName:"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v0
    .line 88
.end method

.method public static isFreeform(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x5

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public static isFullscreen(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
    .line 11
.end method

.method public static isLandscapeApp(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 5
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    :goto_0
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 20
    move-result-object v2

    .line 23
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 24
    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 26
    invoke-virtual {v2, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationLandscape(I)Z

    .line 28
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getForceLandscapeApplicationInSystem()Ljava/util/List;

    .line 38
    move-result-object p0

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 48
    :cond_2
    return v0
    .line 49
.end method

.method public static isNotSupportFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isSupportFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    return p0
    .line 8
.end method

.method public static isPortraitApp(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 8
    move-result-object v0

    .line 11
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 12
    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 14
    invoke-virtual {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationPortrait(I)Z

    .line 16
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method

.method public static isSupportFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->unSupportedFreeformInDesktop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->sActivityManager:Landroid/app/ActivityManager;

    .line 16
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 20
    move-result-object v2

    .line 23
    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 29
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    const-class v4, Ljava/lang/Boolean;

    .line 34
    const-string v5, "getTaskResizeableForFreeform"

    .line 36
    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    return v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 53
    move-result p0

    .line 56
    const/4 v0, 0x5

    .line 57
    if-ne p0, v0, :cond_2

    .line 58
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "If don\u2019t support freeform, it shouldn\u2019t be freeform."

    .line 62
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v1

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    return p0
    .line 69
.end method

.method private static unSupportedFreeformInDesktop(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getDesktopModeLaunchFullscreenAppListInSystem()Ljava/util/List;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 28
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->isTranslucent()Z

    .line 51
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_3
    return v0

    .line 56
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 57
    return p0
    .line 58
.end method


# virtual methods
.method public forceUpdateSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_MODE:I

    .line 2
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_BOUNDS:I

    .line 4
    or-int/2addr v0, v1

    .line 6
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_FREEFORM_ADDED:I

    .line 7
    or-int/2addr v0, v1

    .line 9
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_ACTIVITY_SWITCH:I

    .line 10
    or-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 15
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {p0, v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 23
    return-void
    .line 26
.end method

.method public getMaxLevelHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 4
    int-to-float p0, p0

    .line 6
    return p0
    .line 7
.end method

.method public getMaxLevelWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 4
    int-to-float p0, p0

    .line 6
    return p0
    .line 7
.end method

.method public getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 4
    return p0
    .line 6
.end method

.method public getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 4
    return p0
    .line 6
.end method

.method public getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, ""

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 25
    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_3
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 34
    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    :cond_4
    return-object p0
    .line 42
.end method

.method public abstract getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
.end method

.method public isForbiddenWindow(Landroid/app/TaskInfo;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    iget-object p0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 10
    if-nez p0, :cond_1

    .line 12
    iget-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 14
    :cond_1
    const/4 p1, 0x1

    .line 16
    if-nez p0, :cond_2

    .line 17
    return p1

    .line 19
    :cond_2
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_PACKAGES:Ljava/util/List;

    .line 20
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "isForbiddenWindow package :"

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return p1

    .line 55
    :cond_3
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->FORBIDDEN_WINDOWS:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "isForbiddenWindow window :"

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return p1

    .line 91
    :cond_4
    return v0
    .line 92
.end method

.method public isGameApp(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isInTopGameListInSystem(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 35
    if-eqz p1, :cond_2

    .line 37
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/high16 p1, 0x2000000

    .line 41
    and-int/2addr p0, p1

    .line 43
    if-ne p0, p1, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    move p0, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    move p0, v1

    .line 49
    :goto_1
    if-eqz p0, :cond_3

    .line 50
    return v1

    .line 52
    :catch_0
    :cond_3
    return v0
    .line 53
.end method

.method public isGameOrFullScreenVideoWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isGameApp(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isLandscapeVideo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public isLandscape()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayHeight()I

    .line 4
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayWidth()I

    .line 10
    move-result p0

    .line 13
    if-ge v0, p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public isLandscapeVideo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityHasSurfaceOrTextureView()Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isLandscape()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "isLandscapeVideo  result:"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return p0
    .line 36
.end method

.method public isNeedFixedRatio(ZZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isLandscape()Z

    .line 5
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isLandscape()Z

    .line 14
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    return v0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method

.method public isOrientationOmnidirectional(I)Z
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    const/4 p0, 0x4

    .line 11
    if-eq p1, p0, :cond_1

    .line 12
    const/4 p0, 0x5

    .line 14
    if-eq p1, p0, :cond_1

    .line 15
    const/16 p0, 0xa

    .line 17
    if-eq p1, p0, :cond_1

    .line 19
    const/16 p0, 0xd

    .line 21
    if-ne p1, p0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
    .line 29
.end method

.method public maybeGameOrFullScreenVideoWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityMediaSize:Landroid/graphics/Rect;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "maybeGameOrFullScreenVideoWindow mTopActivityMediaSize:"

    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityMediaSize:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v1

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isGameApp(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 41
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    return v1

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
    .line 49
.end method

.method public policyUpdateByByTaskChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 10
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_NULL:I

    .line 13
    if-eq p3, v1, :cond_0

    .line 15
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "onTaskInfoChanged taskInfo:"

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    invoke-static {v1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0, p3, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public policyUpdateByDesktopModeChanged(ZLcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "policyUpdateByDesktopModeChanged taskWrapperInfo:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 21
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 23
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 27
    move-result-object p1

    .line 30
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_DKT_MODE:I

    .line 31
    invoke-interface {p0, v0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 33
    return-void
    .line 36
.end method

.method public policyUpdateByFreeformAddIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "policyUpdateByFreeformAddIfNeed miuiFreeformModeTaskInfo:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_MODE:I

    .line 21
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_BOUNDS:I

    .line 23
    or-int/2addr v0, v1

    .line 25
    sget v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->CHANGE_FREEFORM_ADDED:I

    .line 26
    or-int/2addr v0, v1

    .line 28
    invoke-interface {p0, v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDynamicStrategy;->policyUpdateIfNeed(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 29
    return-void
    .line 32
.end method

.method public topActivityConfOriIsLandscape(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 1

    .line 1
    const/4 p0, -0x2

    .line 2
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getRequestedOrientation()I

    .line 5
    move-result p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, p0

    .line 10
    :goto_0
    if-ne p2, p0, :cond_1

    .line 11
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    iget p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 17
    :cond_1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationLandscape(I)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_2
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v0, "topActivityConfOriIsLandscape dynamicOrientation:"

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 p0, 0x0

    .line 51
    return p0
    .line 52
.end method

.method public topActivityConfOriIsPortrait(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 1

    .line 1
    const/4 p0, -0x2

    .line 2
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getRequestedOrientation()I

    .line 5
    move-result p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, p0

    .line 10
    :goto_0
    if-ne p2, p0, :cond_1

    .line 11
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    iget p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 17
    :cond_1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isOrientationPortrait(I)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_2
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v0, "topActivityConfOriIsPortrait dynamicOrientation:"

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 p0, 0x0

    .line 51
    return p0
    .line 52
.end method

.method public topActivitySupportOmnidirectional(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 7
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getRequestedOrientation()I

    .line 9
    move-result p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isOrientationOmnidirectional(I)Z

    .line 13
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->isOrientationOmnidirectional(I)Z

    .line 19
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return v0

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizesPolicy;->TAG:Ljava/lang/String;

    .line 27
    const-string/jumbo p1, "top activity support orientation of omnidirectional\uff01"

    .line 29
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    return v0
    .line 37
.end method
