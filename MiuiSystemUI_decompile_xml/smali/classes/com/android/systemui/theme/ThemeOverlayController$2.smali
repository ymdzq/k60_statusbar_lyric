.class public final Lcom/android/systemui/theme/ThemeOverlayController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never be invoked, all messages should arrive on the overload that has a user id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mCurrentColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 6
    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wallpaper_changed_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_changed_1"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.miwallpaper"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    :cond_2
    const-string v0, "onColorsChanged: getPackageName"

    const-string v1, "ThemeOverlayController"

    .line 10
    invoke-static {v0, v2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    const/4 v3, 0x0

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    .line 12
    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-boolean v4, v4, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    if-eqz v4, :cond_4

    const-string v4, "com.miui.aod"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v4, v2, Lcom/android/systemui/theme/ThemeOverlayController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 13
    iget v4, v4, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eqz v4, :cond_5

    .line 14
    iget-object v0, v2, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p3, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "colors received; processing deferred until screen off: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-boolean v3, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    .line 18
    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColors:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredWallpaperColorsFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$2;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/theme/ThemeOverlayController;->-$$Nest$mhandleWallpaperColors(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;II)V

    return-void
.end method
