.class public final synthetic Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;->INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;

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
    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getFoldAodAnimationController()Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
