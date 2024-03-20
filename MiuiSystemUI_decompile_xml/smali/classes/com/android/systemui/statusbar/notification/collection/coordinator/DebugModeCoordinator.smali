.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

.field public final filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 5
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 4
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->registerInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$attach$1;)V

    .line 14
    return-void
    .line 17
.end method
