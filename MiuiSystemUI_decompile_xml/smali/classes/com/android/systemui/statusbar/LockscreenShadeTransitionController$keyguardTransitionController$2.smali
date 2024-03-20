.class final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionControllerFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;->create(Lcom/android/systemui/shade/ShadeViewController;)Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
