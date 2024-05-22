.class public final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$FoldListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->context:Landroid/content/Context;

    .line 2
    new-instance v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$init$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;I)V

    .line 7
    invoke-direct {p0, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 10
    return-void
    .line 13
.end method
