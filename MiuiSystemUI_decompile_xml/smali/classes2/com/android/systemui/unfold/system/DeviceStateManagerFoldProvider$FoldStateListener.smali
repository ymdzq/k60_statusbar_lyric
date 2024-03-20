.class public final Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener$1;

    .line 2
    invoke-direct {v0, p2}, Lcom/android/systemui/unfold/system/DeviceStateManagerFoldProvider$FoldStateListener$1;-><init>(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 7
    return-void
    .line 10
.end method
