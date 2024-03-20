.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;
.super Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPositionUpdated(IIF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 6
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->offsetGlyphsForStepClockAnimation(FII)V

    .line 8
    return-void
    .line 11
.end method
