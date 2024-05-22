.class public final Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$1;->this$0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$1;->this$0:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->resources:Landroid/content/res/Resources;

    .line 4
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 6
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->inSplitShade:Z

    .line 10
    const v0, 0x7f0710c5    # @dimen/split_shade_scrim_transition_distance '600.0dp'

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p1

    .line 18
    iput p1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->splitShadeScrimTransitionDistance:I

    .line 19
    return-void
    .line 21
.end method
