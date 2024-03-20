.class public final Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider;


# instance fields
.field public final callbacks:Ljava/util/Map;

.field public final context:Landroid/content/Context;

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;


# direct methods
.method public constructor <init>(Landroid/hardware/devicestate/DeviceStateManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->context:Landroid/content/Context;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->callbacks:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->context:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 9
    invoke-virtual {v1, p2, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider;->callbacks:Ljava/util/Map;

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
    .line 21
.end method
