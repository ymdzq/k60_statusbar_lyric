.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$attach$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$attach$2;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$attach$2;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 4
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 28
    const-class p1, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 30
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 36
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 38
    if-eqz p1, :cond_0

    .line 40
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$onAfterRenderList$1;

    .line 42
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$onAfterRenderList$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V

    .line 44
    const-wide/16 v0, 0x32

    .line 47
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :cond_0
    return-void
    .line 52
.end method
