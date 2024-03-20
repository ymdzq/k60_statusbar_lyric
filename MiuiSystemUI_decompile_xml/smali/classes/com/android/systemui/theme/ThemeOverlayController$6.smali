.class public final Lcom/android/systemui/theme/ThemeOverlayController$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$6;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$6;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/WallpaperColors;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 24
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    .line 28
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    .line 34
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    invoke-static {p0, v1, v2, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->-$$Nest$mhandleWallpaperColors(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;II)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method
