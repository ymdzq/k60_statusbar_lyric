.class public final synthetic Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;->INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getUnfoldLightRevealOverlayAnimation()Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
