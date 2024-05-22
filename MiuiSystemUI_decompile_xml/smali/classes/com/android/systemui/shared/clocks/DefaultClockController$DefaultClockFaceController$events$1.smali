.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ClockFaceEvents;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFontSettingChanged(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->targetRegion:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->isRegionDark:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    .line 6
    return-void
    .line 9
.end method

.method public final onTargetRegionChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->targetRegion:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onTimeTick()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshTime()V

    .line 6
    return-void
    .line 9
.end method
