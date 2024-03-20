.class public final Lcom/android/systemui/toast/ToastUI;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mCallback:Landroid/app/ITransientNotificationCallback;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mIAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field public mIsDarkMode:Z

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public mOrientation:I

.field public mPendingToastPkg:Ljava/lang/String;

.field public mPendingToastToken:Landroid/os/IBinder;

.field public mPresenter:Landroid/widget/ToastPresenter;

.field mToast:Lcom/android/systemui/toast/SystemUIToast;

.field public final mToastFactory:Lcom/android/systemui/toast/ToastFactory;

.field public final mToastLogger:Lcom/android/systemui/toast/ToastLogger;

.field public mToastOutAnimatorListener:Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/INotificationManager;Landroid/view/accessibility/IAccessibilityManager;Lcom/android/systemui/toast/ToastFactory;Lcom/android/systemui/toast/ToastLogger;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 8
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/toast/ToastUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/toast/ToastUI;->mNotificationManager:Landroid/app/INotificationManager;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI;->mIAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 12
    iput-object p5, p0, Lcom/android/systemui/toast/ToastUI;->mToastFactory:Lcom/android/systemui/toast/ToastFactory;

    .line 13
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 14
    iput-object p6, p0, Lcom/android/systemui/toast/ToastUI;->mToastLogger:Lcom/android/systemui/toast/ToastLogger;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/toast/ToastUI;->isDarkMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/toast/ToastUI;->mIsDarkMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/toast/ToastFactory;Lcom/android/systemui/toast/ToastLogger;)V
    .locals 8

    const-string v0, "notification"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    const-string v0, "accessibility"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    .line 5
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/toast/ToastUI;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/INotificationManager;Landroid/view/accessibility/IAccessibilityManager;Lcom/android/systemui/toast/ToastFactory;Lcom/android/systemui/toast/ToastLogger;)V

    return-void
.end method


# virtual methods
.method public final hideCurrentToast(Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    new-instance v2, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 11
    iget-object v4, p0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 13
    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;-><init>(Lcom/android/systemui/toast/ToastUI;Landroid/widget/ToastPresenter;Landroid/app/ITransientNotificationCallback;Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;)V

    .line 15
    iput-object v2, p0, Lcom/android/systemui/toast/ToastUI;->mToastOutAnimatorListener:Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    .line 18
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 23
    if-eqz p1, :cond_0

    .line 25
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 27
    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v2, Lcom/android/systemui/toast/ToastDefaultAnimation;->viewScaleX:Landroid/animation/ValueAnimator;

    .line 36
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, p1, Lcom/android/systemui/toast/SystemUIToast;->mIsToastShowing:Z

    .line 39
    new-instance v4, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v4, p0, p1, v3}, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/ToastUI;Lcom/android/systemui/toast/SystemUIToast;I)V

    .line 43
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 49
    iget-object p1, p1, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 51
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 59
    iget-object p1, p1, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 61
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 63
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 66
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 68
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 70
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 80
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 83
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 85
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 87
    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->run()V

    .line 91
    :cond_2
    :goto_0
    return-void
    .line 94
.end method

.method public final hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/widget/ToastPresenter;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 17
    invoke-virtual {v0}, Landroid/widget/ToastPresenter;->getToken()Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mToastLogger:Lcom/android/systemui/toast/ToastLogger;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 39
    sget-object v3, Lcom/android/systemui/toast/ToastLogger$logOnHideToast$2;->INSTANCE:Lcom/android/systemui/toast/ToastLogger$logOnHideToast$2;

    .line 41
    const-string v4, "ToastLog"

    .line 43
    iget-object v0, v0, Lcom/android/systemui/toast/ToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 45
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 47
    move-result-object v2

    .line 50
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 51
    invoke-interface {v2, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/systemui/toast/ToastUI;->hideCurrentToast(Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;)V

    .line 60
    return-void

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPendingToastPkg:Ljava/lang/String;

    .line 64
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 69
    const-string v2, "ToastUI"

    .line 70
    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mPendingToastToken:Landroid/os/IBinder;

    .line 74
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI;->mToastOutAnimatorListener:Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    .line 82
    iput-object v1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    .line 84
    const-string p0, "error, hide pending toast before show it."

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    const-string p0, "Attempt to hide non-current toast from package "

    .line 91
    invoke-static {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
    .line 96
.end method

.method public final isDarkMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 12
    and-int/lit8 p0, p0, 0x30

    .line 14
    const/16 v0, 0x20

    .line 16
    if-ne p0, v0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iget v0, p0, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    iput p1, p0, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 8
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p1, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    iget v0, p0, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 20
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mToastLogger:Lcom/android/systemui/toast/ToastLogger;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 32
    sget-object v3, Lcom/android/systemui/toast/ToastLogger$logOrientationChange$2;->INSTANCE:Lcom/android/systemui/toast/ToastLogger$logOrientationChange$2;

    .line 34
    const-string v4, "ToastLog"

    .line 36
    const/4 v5, 0x0

    .line 38
    iget-object v0, v0, Lcom/android/systemui/toast/ToastLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 39
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 41
    move-result-object v2

    .line 44
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 45
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 54
    iget v0, p0, Lcom/android/systemui/toast/ToastUI;->mOrientation:I

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/systemui/toast/SystemUIToast;->onOrientationChange(I)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 61
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 63
    invoke-virtual {p1}, Lcom/android/systemui/toast/SystemUIToast;->getXOffset()Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v2

    .line 72
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/toast/SystemUIToast;->getYOffset()Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v3

    .line 82
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/toast/SystemUIToast;->getHorizontalMargin()Ljava/lang/Integer;

    .line 85
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result p1

    .line 92
    int-to-float v4, p1

    .line 93
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/toast/SystemUIToast;->getVerticalMargin()Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result p1

    .line 103
    int-to-float v5, p1

    .line 104
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/toast/SystemUIToast;->getGravity()Ljava/lang/Integer;

    .line 107
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v6

    .line 114
    invoke-virtual/range {v1 .. v6}, Landroid/widget/ToastPresenter;->updateLayoutParams(IIFFI)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 118
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/toast/ToastUI;->isDarkMode()Z

    .line 122
    move-result p1

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/toast/ToastUI;->mIsDarkMode:Z

    .line 126
    if-eq p1, v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/toast/ToastUI;->isDarkMode()Z

    .line 130
    move-result p1

    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/toast/ToastUI;->mIsDarkMode:Z

    .line 134
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI;->mToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/SystemUIToast;->onUIModeChange(Z)V

    .line 138
    :cond_2
    return-void
    .line 141
.end method

.method public final showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    new-instance v11, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;

    .line 3
    move-object v0, v11

    .line 5
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move/from16 v3, p8

    .line 8
    move-object/from16 v4, p4

    .line 10
    move-object v5, p2

    .line 12
    move-object/from16 v6, p7

    .line 13
    move-object/from16 v7, p5

    .line 15
    move-object v8, p3

    .line 17
    move/from16 v9, p6

    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/toast/ToastUI;IILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/ITransientNotificationCallback;Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 20
    move-object v0, p2

    .line 23
    iput-object v0, v10, Lcom/android/systemui/toast/ToastUI;->mPendingToastPkg:Ljava/lang/String;

    .line 24
    move-object v0, p3

    .line 26
    iput-object v0, v10, Lcom/android/systemui/toast/ToastUI;->mPendingToastToken:Landroid/os/IBinder;

    .line 27
    iget-object v0, v10, Lcom/android/systemui/toast/ToastUI;->mToastOutAnimatorListener:Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    iput-object v11, v0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, v10, Lcom/android/systemui/toast/ToastUI;->mPresenter:Landroid/widget/ToastPresenter;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, v11}, Lcom/android/systemui/toast/ToastUI;->hideCurrentToast(Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v11}, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;->run()V

    .line 44
    :goto_0
    return-void
    .line 47
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateToastViewShadow(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/toast/ToastUI;->mContext:Landroid/content/Context;

    .line 4
    :try_start_0
    const-string v1, "getViewRootImpl"

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    move-result-object v1

    .line 16
    move-object/from16 v2, p1

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewRootImpl;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 27
    move-result-object v1

    .line 30
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 31
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    .line 36
    move-result-object v4

    .line 39
    new-instance v5, Landroid/graphics/Matrix;

    .line 40
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    .line 45
    const/16 v4, 0x9

    .line 48
    new-array v4, v4, [F

    .line 50
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 52
    const-string/jumbo v5, "setMiShadow"

    .line 55
    const/16 v6, 0x8

    .line 58
    new-array v7, v6, [Ljava/lang/Class;

    .line 60
    const-class v8, Landroid/view/SurfaceControl;

    .line 62
    const/4 v9, 0x0

    .line 64
    aput-object v8, v7, v9

    .line 65
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    const/4 v10, 0x1

    .line 69
    aput-object v8, v7, v10

    .line 70
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    const/4 v11, 0x2

    .line 74
    aput-object v8, v7, v11

    .line 75
    const/4 v12, 0x3

    .line 77
    aput-object v8, v7, v12

    .line 78
    const/4 v13, 0x4

    .line 80
    aput-object v8, v7, v13

    .line 81
    const/4 v14, 0x5

    .line 83
    aput-object v8, v7, v14

    .line 84
    const/4 v15, 0x6

    .line 86
    aput-object v8, v7, v15

    .line 87
    const-class v16, Landroid/graphics/RectF;

    .line 89
    const/16 v17, 0x7

    .line 91
    aput-object v16, v7, v17

    .line 93
    new-array v6, v6, [Ljava/lang/Object;

    .line 95
    aput-object v1, v6, v9

    .line 97
    const/16 v15, 0x59

    .line 99
    invoke-static {v15, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 101
    move-result v15

    .line 104
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v15

    .line 108
    aput-object v15, v6, v10

    .line 109
    const/4 v15, 0x0

    .line 111
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    move-result-object v15

    .line 115
    aput-object v15, v6, v11

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v15

    .line 121
    const v10, 0x7f071203    # @dimen/toast_y_offset_shadow '15.0dp'

    .line 122
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 125
    move-result v10

    .line 128
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v10

    .line 132
    aput-object v10, v6, v12

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    move-result-object v0

    .line 138
    const v10, 0x7f071201    # @dimen/toast_radius_shadow '35.0dp'

    .line 139
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 142
    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 146
    move-result-object v0

    .line 149
    aput-object v0, v6, v13

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 154
    move-result-object v0

    .line 157
    aput-object v0, v6, v14

    .line 158
    const/high16 v0, 0x42480000    # 50.0f

    .line 160
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 162
    move-result-object v10

    .line 165
    const/4 v12, 0x6

    .line 166
    aput-object v10, v6, v12

    .line 167
    new-instance v10, Landroid/graphics/RectF;

    .line 169
    aget v12, v4, v11

    .line 171
    aget v15, v4, v14

    .line 173
    aget v18, v4, v9

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 177
    move-result v0

    .line 180
    int-to-float v0, v0

    .line 181
    mul-float v18, v18, v0

    .line 182
    aget v0, v4, v11

    .line 184
    add-float v0, v18, v0

    .line 186
    aget v13, v4, v13

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 190
    move-result v2

    .line 193
    int-to-float v2, v2

    .line 194
    mul-float/2addr v13, v2

    .line 195
    aget v2, v4, v14

    .line 196
    add-float/2addr v13, v2

    .line 198
    invoke-direct {v10, v12, v15, v0, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    aput-object v10, v6, v17

    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 208
    move-result-object v0

    .line 211
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v0, "setCornerRadius"

    .line 215
    new-array v2, v11, [Ljava/lang/Class;

    .line 218
    const-class v4, Landroid/view/SurfaceControl;

    .line 220
    aput-object v4, v2, v9

    .line 222
    const/4 v4, 0x1

    .line 224
    aput-object v8, v2, v4

    .line 225
    new-array v5, v11, [Ljava/lang/Object;

    .line 227
    aput-object v1, v5, v9

    .line 229
    const/high16 v1, 0x42480000    # 50.0f

    .line 231
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    move-result-object v1

    .line 236
    aput-object v1, v5, v4

    .line 237
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    move-result-object v1

    .line 242
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 243
    move-result-object v0

    .line 246
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v2, "updateToastViewShadow Error:"

    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 273
    const-string v1, "ToastUI"

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_0
    return-void
    .line 279
.end method
