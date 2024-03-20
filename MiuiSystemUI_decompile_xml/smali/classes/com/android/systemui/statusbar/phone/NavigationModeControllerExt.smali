.class public final Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

.field public static mContentResolver:Landroid/content/ContentResolver;

.field public static final mElderlyModeObserver:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

.field public static final mFullScreenGestureListener:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

.field public static final mHandler:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

.field public static final mHandlerForPost:Landroid/os/Handler;

.field public static mHideGestureLine:Z

.field public static final mHideGestureLineObserver:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

.field public static mIsFsgMode:Z

.field public static final mNavButtonPosListener:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

.field public static mNavPos:I

.field public static final mOverlayManager$delegate:Lkotlin/Lazy;

.field public static final navigationBarController$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$navigationBarController$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$navigationBarController$2;

    .line 9
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->navigationBarController$delegate:Lkotlin/Lazy;

    .line 15
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;

    .line 17
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mOverlayManager$delegate:Lkotlin/Lazy;

    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandlerForPost:Landroid/os/Handler;

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    move-result-object v0

    .line 39
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

    .line 40
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;-><init>(Landroid/os/Looper;)V

    .line 42
    sput-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 47
    const/4 v2, 0x1

    .line 49
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;-><init>(ILcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;)V

    .line 50
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mFullScreenGestureListener:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 55
    const/4 v2, 0x3

    .line 57
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;-><init>(ILcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;)V

    .line 58
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mNavButtonPosListener:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 63
    const/4 v2, 0x2

    .line 65
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;-><init>(ILcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;)V

    .line 66
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mHideGestureLineObserver:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 71
    const/4 v2, 0x0

    .line 73
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;-><init>(ILcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mHandler$1;)V

    .line 74
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mElderlyModeObserver:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mElderlyModeObserver$1;

    .line 77
    return-void
    .line 79
.end method

.method public static getMOverlayManager()Landroid/content/om/IOverlayManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mOverlayManager$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/om/IOverlayManager;

    .line 8
    return-object v0
    .line 10
.end method

.method public static isOverlay(ILjava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p0}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Can\'t get overlay info for user "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, " "

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    const-string p1, "CentralSurfaces"

    .line 34
    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const/4 p0, 0x0

    .line 39
    :goto_0
    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    const/4 p0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    :goto_1
    return p0
    .line 51
.end method

.method public static updateOverlayManager()V
    .locals 9

    .line 1
    const-string/jumbo v0, "setEnabledExclusiveInCategory currentUserId :"

    .line 2
    const-string/jumbo v1, "setEnabled currentUserId  :"

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 8
    move-result v2

    .line 11
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 12
    const-string v4, "com.android.systemui.gesture.line.overlay"

    .line 14
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->isOverlay(ILjava/lang/String;)Z

    .line 16
    move-result v5

    .line 19
    const-string v6, "CentralSurfaces"

    .line 20
    const-string v7, "NavigationModeControllerExt"

    .line 22
    const/4 v8, 0x0

    .line 24
    if-eq v3, v5, :cond_1

    .line 25
    if-eqz v3, :cond_0

    .line 27
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 44
    move-result-object v0

    .line 47
    invoke-interface {v0, v4, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 67
    move-result-object v0

    .line 70
    invoke-interface {v0, v4, v8, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v5, "Can\'t apply overlay for user "

    .line 78
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 89
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 93
    invoke-static {v8, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->isOverlay(ILjava/lang/String;)Z

    .line 95
    move-result v0

    .line 98
    if-eq v3, v0, :cond_3

    .line 99
    if-eqz v3, :cond_2

    .line 101
    :try_start_1
    const-string/jumbo v0, "setEnabledExclusiveInCategory"

    .line 103
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 109
    move-result-object v0

    .line 112
    invoke-interface {v0, v4, v8}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    .line 113
    goto :goto_1

    .line 116
    :cond_2
    const-string/jumbo v0, "setEnabled"

    .line 117
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->getMOverlayManager()Landroid/content/om/IOverlayManager;

    .line 123
    move-result-object v0

    .line 126
    invoke-interface {v0, v4, v8, v8}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    const-string v1, "Can\'t apply overlay for user owner"

    .line 132
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :cond_3
    :goto_1
    return-void
    .line 137
.end method
