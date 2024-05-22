.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;


# instance fields
.field public final keyguardUserSwitcherComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;

.field public keyguardUserSwitcherControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUserSwitcherView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->keyguardUserSwitcherComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->keyguardUserSwitcherView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->initialize(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->keyguardUserSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl$SwitchingProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->keyguardUserSwitcherComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardUserSwitcherComponentImpl;->keyguardUserSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
    .line 20
.end method
