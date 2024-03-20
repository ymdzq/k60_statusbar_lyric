.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic $configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->$view:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->$view:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 14
    const v2, 0x7f07031c    # @dimen/dream_overlay_exit_y_offset '40.0dp'

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;-><init>(I)V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 27
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    return-void
    .line 32
.end method
