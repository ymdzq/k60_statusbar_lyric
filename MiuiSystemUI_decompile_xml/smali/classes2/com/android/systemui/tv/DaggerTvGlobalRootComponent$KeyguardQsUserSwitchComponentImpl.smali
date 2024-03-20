.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;


# instance fields
.field public final keyguardQsUserSwitchComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;

.field public keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

.field public final userAvatarContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->userAvatarContainer:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->initialize(Landroid/widget/FrameLayout;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl$SwitchingProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
    .line 20
.end method
