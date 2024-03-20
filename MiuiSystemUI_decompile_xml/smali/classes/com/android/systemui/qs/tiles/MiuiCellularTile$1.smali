.class public final Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onThermalChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isCellularAvailable()Z

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
