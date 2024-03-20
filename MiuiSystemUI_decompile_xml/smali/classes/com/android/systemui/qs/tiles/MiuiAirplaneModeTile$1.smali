.class public final Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->sltListener:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$sltListener$1;

    .line 8
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method
