.class public final Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChipVisibilityRefreshed(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

    .line 4
    check-cast v0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    new-instance v0, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$privacyChipVisibilityConstraints$1;

    .line 17
    invoke-direct {v0, p1}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$privacyChipVisibilityConstraints$1;-><init>(F)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 22
    const p1, 0x7f0a0752    # @id/qqs_header_constraint

    .line 24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$privacyChipVisibilityConstraints$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 34
    return-void
    .line 37
.end method
