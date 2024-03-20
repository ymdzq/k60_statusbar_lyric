.class public final synthetic Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/QuietModeTile;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/QuietModeTile;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/QuietModeTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/QuietModeTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    invoke-interface {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
