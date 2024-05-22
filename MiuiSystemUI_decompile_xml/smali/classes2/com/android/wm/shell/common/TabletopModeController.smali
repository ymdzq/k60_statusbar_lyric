.class public final Lcom/android/wm/shell/common/TabletopModeController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# static fields
.field public static final PREFER_TOP_HALF_IN_TABLETOP:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePosture:I

.field public final mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayRotation:I

.field public mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

.field public final mListeners:Ljava/util/List;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field final mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

.field public final mTabletopModeRotations:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.prefer_top_half_in_tabletop"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/common/TabletopModeController;->PREFER_TOP_HALF_IN_TABLETOP:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;

    .line 19
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/TabletopModeController;I)V

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    .line 25
    iput v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 27
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 30
    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    .line 34
    iput-object p4, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 36
    iput-object p5, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 38
    new-instance p1, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;

    .line 40
    const/4 p3, 0x1

    .line 42
    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/TabletopModeController;I)V

    .line 43
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 46
    return-void
    .line 49
.end method


# virtual methods
.method public final isInTabletopMode()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    .line 14
    iget p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 21
    check-cast v0, Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_1
    return v2
.end method

.method public final mayBroadcastOnTabletopModeChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 9
    if-eq v0, p1, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    .line 12
    new-instance v1, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;

    .line 14
    invoke-direct {v1, p1}, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mLastIsInTabletopModeForCallback:Ljava/lang/Boolean;

    .line 28
    :cond_1
    return-void
    .line 30
.end method

.method public final onDevicePostureOrDisplayRotationChanged(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    .line 2
    move-result v0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 6
    iput p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    .line 10
    move-result p1

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 16
    move-object v2, v1

    .line 18
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 19
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    if-nez v0, :cond_0

    .line 24
    if-eqz p1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mOnEnterTabletopModeCallback:Ljava/lang/Runnable;

    .line 28
    const-wide/16 p1, 0x3e8

    .line 30
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 32
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TabletopModeController;->mayBroadcastOnTabletopModeChange(Z)V

    .line 39
    :goto_0
    return-void
    .line 42
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 4
    move-result p2

    .line 7
    if-nez p1, :cond_0

    .line 8
    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 10
    if-eq p2, p1, :cond_0

    .line 12
    iget p1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public onInit()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePostureController:Lcom/android/wm/shell/common/DevicePostureController;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/common/DevicePostureController;->mListeners:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget v0, v0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    .line 18
    iget v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    .line 20
    if-eq v1, v0, :cond_1

    .line 22
    iget v1, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/common/TabletopModeController;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v0

    .line 39
    const v1, 0x1070042    # @android:array/config_disableApkUnlessMatchedSku_skus_list

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 43
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_9

    .line 49
    array-length v3, v0

    .line 51
    if-nez v3, :cond_2

    .line 52
    goto :goto_3

    .line 54
    :cond_2
    array-length v3, v0

    .line 55
    move v4, v2

    .line 56
    :goto_1
    if-ge v4, v3, :cond_8

    .line 57
    aget v5, v0, v4

    .line 59
    iget-object v6, p0, Lcom/android/wm/shell/common/TabletopModeController;->mTabletopModeRotations:Ljava/util/Set;

    .line 61
    if-eqz v5, :cond_6

    .line 63
    const/16 v7, 0x5a

    .line 65
    const/4 v8, 0x1

    .line 67
    if-eq v5, v7, :cond_5

    .line 68
    const/16 v7, 0xb4

    .line 70
    if-eq v5, v7, :cond_4

    .line 72
    const/16 v7, 0x10e

    .line 74
    if-eq v5, v7, :cond_3

    .line 76
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FOLDABLE_enabled:Z

    .line 78
    if-eqz v6, :cond_7

    .line 80
    int-to-long v5, v5

    .line 82
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    move-result-object v5

    .line 88
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 89
    move-result-object v5

    .line 92
    const v6, 0xdeea463

    .line 93
    invoke-static {v7, v6, v8, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    goto :goto_2

    .line 99
    :cond_3
    const/4 v5, 0x3

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v5

    .line 104
    check-cast v6, Landroid/util/ArraySet;

    .line 105
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_2

    .line 110
    :cond_4
    const/4 v5, 0x2

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v5

    .line 115
    check-cast v6, Landroid/util/ArraySet;

    .line 116
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_2

    .line 121
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v5

    .line 125
    check-cast v6, Landroid/util/ArraySet;

    .line 126
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_2

    .line 131
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v5

    .line 135
    check-cast v6, Landroid/util/ArraySet;

    .line 136
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 141
    goto :goto_1

    .line 143
    :cond_8
    return-void

    .line 144
    :cond_9
    :goto_3
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_FOLDABLE_enabled:Z

    .line 145
    if-eqz p0, :cond_a

    .line 147
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_FOLDABLE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 149
    const v0, 0x73f75efe

    .line 151
    invoke-static {p0, v0, v2, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_a
    return-void
    .line 157
.end method
