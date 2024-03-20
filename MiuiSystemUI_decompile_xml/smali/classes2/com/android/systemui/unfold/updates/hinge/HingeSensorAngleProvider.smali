.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;


# instance fields
.field public final listeners:Ljava/util/List;

.field public final sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

.field public final sensorManager:Landroid/hardware/SensorManager;

.field public final singleThreadBgExecutor:Ljava/util/concurrent/Executor;

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/util/Consumer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final start()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final stop()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method
