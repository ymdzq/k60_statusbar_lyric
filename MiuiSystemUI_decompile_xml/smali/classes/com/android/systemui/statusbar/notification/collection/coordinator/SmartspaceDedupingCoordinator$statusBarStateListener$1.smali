.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->recordStatusBarState(I)V

    .line 4
    return-void
    .line 7
.end method
