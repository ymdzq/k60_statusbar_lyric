.class public final Lcom/android/systemui/qs/tiles/RotationLockTile$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$2;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRotationLockStateChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$2;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
