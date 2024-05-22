.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$onAfterRenderList$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $panelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$onAfterRenderList$1;->$panelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

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
    if-eqz v0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$onAfterRenderList$1;->$panelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 14
    const/4 v1, 0x1

    .line 16
    if-eqz p0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    move p0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    xor-int/2addr p0, v1

    .line 32
    iput-boolean p0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mHasNotification:Z

    .line 33
    iget-object v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->doAnimationToNotification(ZZ)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method
