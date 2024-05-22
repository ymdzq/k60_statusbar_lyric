.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/unfold/SysUIUnfoldComponent;


# instance fields
.field public foldAodAnimationControllerProvider:Ljavax/inject/Provider;

.field public keyguardUnfoldTransitionProvider:Ljavax/inject/Provider;

.field public notificationPanelUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

.field public final p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field public final p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field public final p3:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field public statusBarMoveFromCenterAnimationControllerProvider:Ljavax/inject/Provider;

.field public final sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public unfoldHapticsPlayerProvider:Ljavax/inject/Provider;

.field public unfoldLightRevealOverlayAnimationProvider:Ljavax/inject/Provider;

.field public unfoldTransitionWallpaperControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p2:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p3:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->p1:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 15
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->initialize(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final getFoldAodAnimationController()Lcom/android/systemui/unfold/FoldAodAnimationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->foldAodAnimationControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getKeyguardUnfoldTransition()Lcom/android/keyguard/KeyguardUnfoldTransition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->keyguardUnfoldTransitionProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardUnfoldTransition;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationPanelUnfoldAnimationController()Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->notificationPanelUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getStatusBarMoveFromCenterAnimationController()Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->statusBarMoveFromCenterAnimationControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getUnfoldHapticsPlayer()Lcom/android/systemui/unfold/UnfoldHapticsPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldHapticsPlayerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getUnfoldKeyguardVisibilityManager()Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->unfoldKeyguardVisibilityManagerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManager;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getUnfoldLightRevealOverlayAnimation()Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldLightRevealOverlayAnimationProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getUnfoldTransitionWallpaperController()Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldTransitionWallpaperControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->keyguardUnfoldTransitionProvider:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 20
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->statusBarMoveFromCenterAnimationControllerProvider:Ljavax/inject/Provider;

    .line 36
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 38
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 44
    const/4 v1, 0x2

    .line 46
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 47
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->notificationPanelUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

    .line 54
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 56
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 62
    const/4 v1, 0x3

    .line 64
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 65
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->foldAodAnimationControllerProvider:Ljavax/inject/Provider;

    .line 72
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 80
    const/4 v1, 0x4

    .line 82
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 83
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldTransitionWallpaperControllerProvider:Ljavax/inject/Provider;

    .line 90
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 92
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 98
    const/4 v1, 0x5

    .line 100
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 101
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldHapticsPlayerProvider:Ljavax/inject/Provider;

    .line 108
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;

    .line 110
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 112
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->sysUIUnfoldComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;

    .line 116
    const/4 v1, 0x6

    .line 118
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;I)V

    .line 119
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 122
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldLightRevealOverlayAnimationProvider:Ljavax/inject/Provider;

    .line 126
    return-void
    .line 128
.end method
