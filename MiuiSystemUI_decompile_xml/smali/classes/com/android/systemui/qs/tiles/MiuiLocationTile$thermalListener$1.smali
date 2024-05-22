.class public final Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiLocationTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isGpsAvailable()Z

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalAvailable:Z

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalAvailable:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
