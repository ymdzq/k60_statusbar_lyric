.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 12
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    .line 15
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v1, v4, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    .line 20
    move-result v0

    .line 23
    if-le v3, v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v2, v4

    .line 27
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    .line 28
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda6;

    .line 32
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 47
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda6;->run()V

    .line 53
    :goto_1
    return-void
    .line 56
.end method
