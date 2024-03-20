.class public final Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceHidePresentationIds:Ljava/util/List;

.field public final mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

.field public final mDisplayCallback:Lcom/android/keyguard/KeyguardDisplayManager$1;

.field public final mDisplayService:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field public mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$2;

.field public final mNavigationBarControllerLazy:Ldagger/Lazy;

.field public final mPresentations:Landroid/util/SparseArray;

.field public mShowing:Z

.field public final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 6
    new-instance v0, Landroid/view/DisplayInfo;

    .line 8
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayCallback:Lcom/android/keyguard/KeyguardDisplayManager$1;

    .line 27
    new-instance v1, Lcom/android/keyguard/KeyguardDisplayManager$2;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardDisplayManager$2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    .line 31
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$2;

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mNavigationBarControllerLazy:Ldagger/Lazy;

    .line 38
    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 40
    new-instance p2, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    .line 44
    invoke-interface {p6, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 55
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 56
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 58
    iput-object p4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 60
    check-cast p4, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 62
    invoke-virtual {p4, v0, p5}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 64
    iput-object p7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

    .line 67
    iput-object p8, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p1

    .line 74
    const p2, 0x7f03008f    # @array/miui_config_hideKeyguardPresentationDisplayIds

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 78
    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 82
    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 86
    move-result-object p1

    .line 89
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 90
    move-result-object p2

    .line 93
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 97
    check-cast p1, Ljava/util/List;

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceHidePresentationIds:Ljava/util/List;

    .line 100
    return-void
    .line 102
.end method


# virtual methods
.method public final showPresentation(Landroid/view/Display;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "KeyguardDisplayManager"

    .line 4
    sget-boolean v3, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    if-eqz v3, :cond_1

    .line 10
    const-string v4, "Cannot show Keyguard on null display"

    .line 12
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    const-string v5, "display owner package name : "

    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 35
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v4, "com.miui.carlink"

    .line 39
    invoke-virtual {p1}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    :cond_1
    :goto_0
    move v4, v1

    .line 51
    goto/16 :goto_2

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 54
    move-result v4

    .line 57
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    if-nez v4, :cond_3

    .line 63
    if-eqz v3, :cond_1

    .line 65
    const-string v4, "Do not show KeyguardPresentation on the default display"

    .line 67
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 72
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 73
    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 75
    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    .line 78
    and-int/lit8 v5, v4, 0x4

    .line 80
    if-eqz v5, :cond_4

    .line 82
    if-eqz v3, :cond_1

    .line 84
    const-string v4, "Do not show KeyguardPresentation on a private display"

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_0

    .line 91
    :cond_4
    and-int/lit16 v4, v4, 0x200

    .line 92
    if-eqz v4, :cond_5

    .line 94
    if-eqz v3, :cond_1

    .line 96
    const-string v4, "Do not show KeyguardPresentation on an unlocked display"

    .line 98
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_0

    .line 103
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 104
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 106
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 108
    if-eqz v4, :cond_7

    .line 110
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

    .line 112
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mIsInConcurrentDisplayState:Z

    .line 114
    if-eqz v5, :cond_6

    .line 116
    iget-object v4, v4, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mRearDisplayPhysicalAddress:Landroid/view/DisplayAddress$Physical;

    .line 118
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    .line 122
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Landroid/view/DisplayAddress$Physical;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    move v4, v0

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    move v4, v1

    .line 134
    :goto_1
    if-eqz v4, :cond_7

    .line 135
    if-eqz v3, :cond_1

    .line 137
    const-string v4, "Do not show KeyguardPresentation when occluded and concurrent display is active"

    .line 139
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_0

    .line 144
    :cond_7
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 145
    move-result v4

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v4

    .line 152
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceHidePresentationIds:Ljava/util/List;

    .line 153
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 155
    move-result v4

    .line 158
    if-eqz v4, :cond_8

    .line 159
    if-eqz v3, :cond_1

    .line 161
    const-string v4, "Do not show KeyguardPresentation on a specific display"

    .line 163
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    goto :goto_0

    .line 168
    :cond_8
    move v4, v0

    .line 169
    :goto_2
    if-nez v4, :cond_9

    .line 170
    return v1

    .line 172
    :cond_9
    if-eqz v3, :cond_a

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    const-string v4, "Keyguard enabled on display: "

    .line 177
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 188
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_a
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 192
    move-result v3

    .line 195
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 198
    move-result-object v5

    .line 201
    check-cast v5, Landroid/app/Presentation;

    .line 202
    if-nez v5, :cond_b

    .line 204
    new-instance v5, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    .line 206
    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    .line 208
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 210
    invoke-direct {v5, v6, p1, v7}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;)V

    .line 212
    new-instance p1, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda1;

    .line 215
    invoke-direct {p1, p0, v5, v3}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;Landroid/app/Presentation;I)V

    .line 217
    invoke-virtual {v5, p1}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 220
    :try_start_0
    invoke-virtual {v5}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_3

    .line 226
    :catch_0
    move-exception p0

    .line 227
    const-string p1, "Invalid display:"

    .line 228
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v5, 0x0

    .line 233
    :goto_3
    if-eqz v5, :cond_b

    .line 234
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    return v0

    .line 239
    :cond_b
    return v1
    .line 240
.end method

.method public final updateDisplays(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 4
    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 6
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 10
    move-result-object p1

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v0, :cond_2

    .line 17
    aget-object v3, p1, v2

    .line 19
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 21
    move-result v4

    .line 24
    invoke-virtual {p0, v4, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateNavigationBarVisibility(IZ)V

    .line 25
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardDisplayManager;->showPresentation(Landroid/view/Display;)Z

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 36
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 39
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    :goto_1
    if-ltz v0, :cond_1

    .line 45
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    move-result v2

    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateNavigationBarVisibility(IZ)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    check-cast v2, Landroid/app/Presentation;

    .line 58
    invoke-virtual {v2}, Landroid/app/Presentation;->dismiss()V

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 66
    :cond_2
    return-void
    .line 69
.end method

.method public final updateNavigationBarVisibility(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mNavigationBarControllerLazy:Ldagger/Lazy;

    .line 10
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 18
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 27
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 36
    move-result-object p0

    .line 39
    const/16 p1, 0x8

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :goto_0
    return-void
    .line 45
.end method
