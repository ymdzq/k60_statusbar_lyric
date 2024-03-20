.class public final Lcom/android/keyguard/KeyguardVisibilityHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardViewVisibilityAnimating:Z

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const-string v0, "KeyguardVisibilityHelper"

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final setViewVisibility(IIZZ)V
    .locals 4

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->getAnimatorTag()I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 40
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 42
    move-result v1

    .line 45
    const/16 v2, 0x8

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 48
    if-nez v1, :cond_2

    .line 50
    const-string p1, "Direct set Visibility GONE Not Default Theme"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 62
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    const/4 v1, 0x1

    .line 68
    if-nez p3, :cond_3

    .line 69
    if-ne p2, v1, :cond_3

    .line 71
    if-ne p1, v1, :cond_4

    .line 73
    :cond_3
    if-eqz p4, :cond_5

    .line 75
    :cond_4
    const-string p1, "Direct set Visibility FullShade GONE"

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 82
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 87
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    goto :goto_0

    .line 93
    :cond_5
    const/4 p3, 0x2

    .line 94
    if-ne p2, p3, :cond_6

    .line 95
    if-ne p1, v1, :cond_6

    .line 97
    const-string p1, "Direct set Visibility old=SHADE_LOCK new=KEYGUARD"

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 109
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 111
    goto :goto_0

    .line 114
    :cond_6
    if-ne p1, v1, :cond_7

    .line 115
    const-string p1, "Direct set Visibility new=KEYGUARD"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 129
    goto :goto_0

    .line 132
    :cond_7
    const-string p1, "Direct set Visibility to GONE"

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 143
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 145
    :goto_0
    return-void
    .line 148
.end method
