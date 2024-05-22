.class public final Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public bean:Lcom/miui/clock/module/ClockBean;

.field public templateId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/KeyguardClockContainer;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onClockBeanChange(Lcom/miui/clock/module/ClockBean;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    iput-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->bean:Lcom/miui/clock/module/ClockBean;

    .line 16
    const-string p1, "doodle"

    .line 18
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    xor-int/2addr p1, v1

    .line 25
    iget-object v2, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 26
    iput-boolean p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mClockCanScale:Z

    .line 28
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->bean:Lcom/miui/clock/module/ClockBean;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 34
    move-result p1

    .line 37
    const/16 v3, 0xa

    .line 38
    if-ne p1, v3, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    if-nez v1, :cond_7

    .line 44
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 46
    const-string v1, "classic_plus"

    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 53
    if-nez p1, :cond_7

    .line 54
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 56
    if-eqz p1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateClockAnima(Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 65
    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {v2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 69
    move-result v1

    .line 72
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateNotification(Z)V

    .line 73
    :cond_3
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 76
    if-eqz p1, :cond_4

    .line 78
    iget-boolean v1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mToAod:Z

    .line 80
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateToAod(Z)V

    .line 82
    :cond_4
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 85
    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->initView()V

    .line 89
    :cond_5
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 92
    iget-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->$context:Landroid/content/Context;

    .line 94
    if-eqz p1, :cond_6

    .line 96
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 98
    move-result v3

    .line 101
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 102
    invoke-virtual {p1, v3}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->setBackgroundBlurEnableChange(Z)V

    .line 104
    :cond_6
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 107
    if-eqz p1, :cond_7

    .line 109
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 111
    move-result v1

    .line 114
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 115
    iput-boolean v1, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHighTextEnable:Z

    .line 117
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 119
    const-string/jumbo p1, "smart_frame"

    .line 121
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    move-result p0

    .line 127
    if-nez p0, :cond_8

    .line 128
    iput-object v0, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 130
    :cond_8
    iget-object p0, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 132
    if-eqz p0, :cond_a

    .line 134
    iget-object p1, v2, Lcom/android/keyguard/clock/KeyguardClockContainer;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 136
    if-nez p1, :cond_9

    .line 138
    goto :goto_2

    .line 140
    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->setSmartFrameView(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;)V

    .line 143
    :cond_a
    :goto_2
    invoke-virtual {v2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateSmallDateClockAndMagazineView()V

    .line 146
    return-void
    .line 149
.end method

.method public final onDualClockChange(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 2
    iput-boolean p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mIsShowDualClock:Z

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mDualClockObserver:Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 6
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mShowDualClock:Z

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mShowDualClock:Z

    .line 13
    move p1, v3

    .line 15
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v4

    .line 21
    if-ge p1, v4, :cond_0

    .line 22
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;

    .line 28
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mShowDualClock:Z

    .line 30
    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;->onDualShowClockChanged(Z)V

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->bean:Lcom/miui/clock/module/ClockBean;

    .line 38
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 42
    move-result p1

    .line 45
    const/16 v1, 0xa

    .line 46
    if-ne p1, v1, :cond_1

    .line 48
    const/4 v3, 0x1

    .line 50
    :cond_1
    if-nez v3, :cond_2

    .line 51
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 53
    const-string v1, "classic_plus"

    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_8

    .line 61
    :cond_2
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 63
    if-eqz p1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateClockAnima(Ljava/lang/String;)V

    .line 69
    :cond_3
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 72
    if-eqz p1, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 76
    move-result v1

    .line 79
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateNotification(Z)V

    .line 80
    :cond_4
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 83
    if-eqz p1, :cond_5

    .line 85
    iget-boolean v1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mToAod:Z

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateToAod(Z)V

    .line 89
    :cond_5
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 92
    if-eqz p1, :cond_6

    .line 94
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->initView()V

    .line 96
    :cond_6
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->$context:Landroid/content/Context;

    .line 101
    if-eqz p1, :cond_7

    .line 103
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 105
    move-result v1

    .line 108
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 109
    invoke-virtual {p1, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->setBackgroundBlurEnableChange(Z)V

    .line 111
    :cond_7
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 114
    if-eqz p1, :cond_8

    .line 116
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 118
    move-result p0

    .line 121
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 122
    iput-boolean p0, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHighTextEnable:Z

    .line 124
    :cond_8
    invoke-virtual {v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateSmallDateClockAndMagazineView()V

    .line 126
    return-void
    .line 129
.end method

.method public final onMiuiClockInfoChange(Lcom/miui/clock/module/ClockBean;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->bean:Lcom/miui/clock/module/ClockBean;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 19
    move-result p1

    .line 22
    const/16 v0, 0xa

    .line 23
    if-ne p1, v0, :cond_1

    .line 25
    const/4 p1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_1
    if-nez p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 32
    const-string v0, "classic_plus"

    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_8

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 42
    iget-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->templateId:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateClockAnima(Ljava/lang/String;)V

    .line 50
    :cond_3
    iget-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 53
    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 57
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateNotification(Z)V

    .line 61
    :cond_4
    iget-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 64
    if-eqz v0, :cond_5

    .line 66
    iget-boolean v1, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mToAod:Z

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->updateToAod(Z)V

    .line 70
    :cond_5
    iget-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 73
    if-eqz v0, :cond_6

    .line 75
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/AnimationHelper;->initView()V

    .line 77
    :cond_6
    iget-object v0, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->$context:Landroid/content/Context;

    .line 82
    if-eqz v0, :cond_7

    .line 84
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 86
    move-result v1

    .line 89
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->setBackgroundBlurEnableChange(Z)V

    .line 92
    :cond_7
    iget-object p1, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 95
    if-eqz p1, :cond_8

    .line 97
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 99
    move-result p0

    .line 102
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 103
    iput-boolean p0, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHighTextEnable:Z

    .line 105
    :cond_8
    return-void
    .line 107
.end method
