.class public final Lcom/android/systemui/qs/tiles/MiuiFlashlightTile$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiFlashlightTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiFlashlightTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiFlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiFlashlightTile;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiFlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiFlashlightTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiFlashlightTile;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method