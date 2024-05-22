.class public final Lcom/android/systemui/controls/ui/ControlViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ATTR_DISABLED:[I

.field public static final ATTR_ENABLED:[I

.field public static final FORCE_PANEL_DEVICES:Ljava/util/Set;


# instance fields
.field public final baseLayer:Landroid/graphics/drawable/GradientDrawable;

.field public behavior:Lcom/android/systemui/controls/ui/Behavior;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final chevronIcon:Landroid/widget/ImageView;

.field public final clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field public final icon:Landroid/widget/ImageView;

.field public isLoading:Z

.field public lastAction:Landroid/service/controls/actions/ControlAction;

.field public lastChallengeDialog:Landroid/app/Dialog;

.field public final layout:Landroid/view/ViewGroup;

.field public nextStatusText:Ljava/lang/CharSequence;

.field public final onDialogCancel:Lkotlin/jvm/functions/Function0;

.field public stateAnimator:Landroid/animation/ValueAnimator;

.field public final status:Landroid/widget/TextView;

.field public statusAnimator:Landroid/animation/Animator;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final toggleBackgroundIntensity:F

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final uid:I

.field public userInteractionInProgress:Z

.field public visibleDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x31

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    const/16 v1, 0x32

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 22
    const v0, 0x101009e    # @android:attr/state_enabled

    .line 24
    filled-new-array {v0}, [I

    .line 27
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    .line 31
    const v0, -0x101009e

    .line 33
    filled-new-array {v0}, [I

    .line 36
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    .line 40
    return-void
    .line 42
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 15
    iput p7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p2

    .line 26
    const p3, 0x7f090008    # @fraction/controls_toggle_bg_intensity '5.0%'

    .line 27
    const/4 p4, 0x1

    .line 30
    invoke-virtual {p2, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    .line 31
    move-result p2

    .line 34
    iput p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    .line 35
    const p2, 0x7f0a0412    # @id/icon

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 43
    check-cast p2, Landroid/widget/ImageView;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 46
    const p2, 0x7f0a08dc    # @id/status

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 54
    check-cast p2, Landroid/widget/TextView;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 57
    const-string p3, ""

    .line 59
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 61
    const p3, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 63
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 66
    move-result-object p3

    .line 69
    check-cast p3, Landroid/widget/TextView;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 72
    const p3, 0x7f0a08ff    # @id/subtitle

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 77
    move-result-object p3

    .line 80
    check-cast p3, Landroid/widget/TextView;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 83
    const p3, 0x7f0a01e7    # @id/chevron_icon

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 88
    move-result-object p3

    .line 91
    check-cast p3, Landroid/widget/ImageView;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->chevronIcon:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p3

    .line 99
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 100
    new-instance p3, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;

    .line 102
    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 104
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 109
    move-result-object p1

    .line 112
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 115
    const p3, 0x7f0a01f5    # @id/clip_layer

    .line 118
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object p3

    .line 124
    check-cast p3, Landroid/graphics/drawable/ClipDrawable;

    .line 125
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 127
    const p3, 0x7f0a0100    # @id/background

    .line 129
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 132
    move-result-object p1

    .line 135
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 140
    return-void
    .line 143
.end method


# virtual methods
.method public final action(Landroid/service/controls/actions/ControlAction;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 10
    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 16
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 27
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 31
    if-nez v2, :cond_1

    .line 33
    const-string p0, "ControlsBindingControllerImpl"

    .line 35
    const-string p1, "No actions can occur outside of an active subscription. Ignoring."

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;

    .line 50
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 52
    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    .line 57
    :goto_0
    return-void
    .line 60
.end method

.method public final animateStatusChange(ZLkotlin/jvm/functions/Function0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 9
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    return-void

    .line 14
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 15
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "alpha"

    .line 19
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 21
    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_2

    .line 24
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    new-array p1, v1, [F

    .line 29
    const p2, 0x3ee66666    # 0.45f

    .line 31
    aput p2, p1, v4

    .line 34
    invoke-static {v3, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 40
    const/4 p2, -0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 44
    const-wide/16 v0, 0x1f4

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 52
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    const-wide/16 v0, 0x384

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 59
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    new-array p1, v1, [F

    .line 68
    const/4 v5, 0x0

    .line 70
    aput v5, p1, v4

    .line 71
    invoke-static {v3, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 73
    move-result-object p1

    .line 76
    const-wide/16 v5, 0xc8

    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    sget-object v7, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {p1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    new-instance v8, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;

    .line 87
    invoke-direct {v8, v0, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;-><init>(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    new-array p2, v1, [F

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    aput v0, p2, v4

    .line 99
    invoke-static {v3, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 101
    move-result-object p2

    .line 104
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    invoke-virtual {p2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 111
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 113
    filled-new-array {p1, p2}, [Landroid/animation/Animator;

    .line 116
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 120
    new-instance p1, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;

    .line 123
    invoke-direct {p1, v4, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;-><init>(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 131
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    .line 134
    :goto_0
    return-void
    .line 136
.end method

.method public final applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, -0x3e8

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 19
    move-result v0

    .line 22
    :goto_1
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 25
    move-result-object v2

    .line 28
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlWithState;->componentName:Landroid/content/ComponentName;

    .line 29
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 31
    invoke-static {v3, v2, v0, p1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    move-result-object v2

    .line 44
    iget v4, p1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    .line 45
    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 47
    move-result-object v9

    .line 50
    iget-object v7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 53
    move-result-object v0

    .line 56
    iget-object v10, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 61
    move-result-object v0

    .line 64
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    move p3, v2

    .line 72
    :cond_2
    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;

    .line 73
    move-object v4, v0

    .line 75
    move-object v5, p0

    .line 76
    move v6, p2

    .line 77
    move-object v8, p1

    .line 78
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    .line 79
    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v0

    .line 88
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 89
    move-result-object v4

    .line 92
    const v5, 0x7f0600c3    # @color/control_default_background '@color/GM2_grey_900'

    .line 93
    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 96
    move-result v0

    .line 99
    if-eqz p2, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 102
    move-result-object p2

    .line 105
    iget-object p2, p2, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 106
    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p2}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    .line 110
    move-result-object p2

    .line 113
    if-eqz p2, :cond_3

    .line 114
    const p1, 0x101009e    # @android:attr/state_enabled

    .line 116
    filled-new-array {p1}, [I

    .line 119
    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 123
    move-result v3

    .line 126
    invoke-virtual {p2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 127
    move-result p1

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object p2

    .line 135
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 136
    move-result-object v3

    .line 139
    iget p1, p1, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    .line 140
    invoke-virtual {p2, p1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 142
    move-result p1

    .line 145
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object p1

    .line 149
    const/16 p2, 0xff

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p2

    .line 155
    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    .line 156
    move-result-object p1

    .line 159
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 160
    move-result-object p1

    .line 163
    goto :goto_3

    .line 164
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 169
    move-result-object p2

    .line 172
    invoke-virtual {p1, v5, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 173
    move-result p1

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object p1

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object p2

    .line 184
    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    .line 185
    move-result-object p1

    .line 188
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    move-result-object p1

    .line 192
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object p2

    .line 196
    check-cast p2, Ljava/lang/Number;

    .line 197
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 199
    move-result v5

    .line 202
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object p1

    .line 206
    check-cast p1, Ljava/lang/Number;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 209
    move-result p1

    .line 212
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 213
    instance-of p2, p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 215
    if-eqz p2, :cond_5

    .line 217
    iget p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    .line 219
    invoke-static {v0, v5, p2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 221
    move-result v0

    .line 224
    :cond_5
    move v7, v0

    .line 225
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 226
    invoke-virtual {p2}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 228
    move-result-object v10

    .line 231
    if-eqz v10, :cond_b

    .line 232
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    .line 237
    if-eqz v0, :cond_6

    .line 239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 244
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 246
    if-eqz p3, :cond_9

    .line 248
    instance-of p3, v10, Landroid/graphics/drawable/GradientDrawable;

    .line 250
    if-eqz p3, :cond_7

    .line 252
    move-object p3, v10

    .line 254
    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 255
    invoke-virtual {p3}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 257
    move-result-object p3

    .line 260
    if-eqz p3, :cond_7

    .line 261
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 263
    move-result p3

    .line 266
    move v4, p3

    .line 267
    goto :goto_4

    .line 268
    :cond_7
    move v4, v5

    .line 269
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 270
    move-result-object p3

    .line 273
    if-eqz p3, :cond_8

    .line 274
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 276
    move-result p3

    .line 279
    move v6, p3

    .line 280
    goto :goto_5

    .line 281
    :cond_8
    move v6, v7

    .line 282
    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 283
    move-result v8

    .line 286
    invoke-virtual {p2}, Landroid/graphics/drawable/ClipDrawable;->getAlpha()I

    .line 287
    move-result p2

    .line 290
    filled-new-array {p2, p1}, [I

    .line 291
    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 295
    move-result-object p1

    .line 298
    new-instance p2, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;

    .line 299
    move-object v3, p2

    .line 301
    move-object v9, p0

    .line 302
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder$startBackgroundAnimation$1$1;-><init>(IIIIFLcom/android/systemui/controls/ui/ControlViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    new-instance p2, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;

    .line 309
    invoke-direct {p2, v1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;-><init>(ILjava/lang/Object;)V

    .line 311
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    const-wide/16 p2, 0x2bc

    .line 317
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    sget-object p2, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    .line 322
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 327
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    .line 330
    goto :goto_6

    .line 332
    :cond_9
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    instance-of p0, v10, Landroid/graphics/drawable/GradientDrawable;

    .line 336
    if-eqz p0, :cond_a

    .line 338
    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    .line 340
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 342
    :cond_a
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 345
    const/high16 p0, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 350
    :cond_b
    :goto_6
    return-void
    .line 353
.end method

.method public final bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;I)Lcom/android/systemui/controls/ui/Behavior;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->get()Ljava/lang/Object;

    .line 2
    move-result-object p2

    .line 5
    check-cast p2, Lcom/android/systemui/controls/ui/Behavior;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    :cond_0
    invoke-interface {p2, p0}, Lcom/android/systemui/controls/ui/Behavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 26
    move-object p1, p2

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 30
    move-result-object p0

    .line 33
    invoke-interface {p1, p0, p3}, Lcom/android/systemui/controls/ui/Behavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V

    .line 34
    return-object p1
    .line 37
.end method

.method public final bindData(Lcom/android/systemui/controls/ui/ControlWithState;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 15
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 17
    const/4 v4, 0x0

    .line 19
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 20
    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 24
    move-result v0

    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v0, v5, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v1}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    move v0, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x4

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->chevronIcon:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 73
    const/4 v2, 0x1

    .line 74
    if-eqz v1, :cond_8

    .line 75
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 79
    new-instance v3, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;

    .line 82
    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 84
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 92
    check-cast v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 94
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    .line 96
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    goto :goto_4

    .line 102
    :cond_5
    iget-object v3, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 103
    if-eqz v3, :cond_6

    .line 105
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    .line 107
    goto :goto_3

    .line 109
    :cond_6
    move-object v3, v0

    .line 110
    :goto_3
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result p1

    .line 114
    if-eqz p1, :cond_8

    .line 115
    iget-object p1, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v1, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->showSettingsDialogIfNeeded(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    .line 122
    iget-object p1, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 125
    if-eqz p1, :cond_7

    .line 127
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    .line 129
    :cond_7
    iput-object v0, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 132
    :cond_8
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 136
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    .line 140
    move-result v3

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 144
    move-result-object v5

    .line 147
    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 148
    if-eqz v5, :cond_9

    .line 150
    invoke-virtual {v5}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 152
    move-result-object v0

    .line 155
    :cond_9
    if-nez v0, :cond_a

    .line 156
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 158
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 160
    move-result v5

    .line 163
    invoke-static {v3, v0, v5}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {p0, v1, v0, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;I)Lcom/android/systemui/controls/ui/Behavior;

    .line 168
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 174
    if-eqz p1, :cond_b

    .line 177
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 179
    if-nez p1, :cond_b

    .line 181
    move v4, v2

    .line 183
    :cond_b
    if-eqz v4, :cond_c

    .line 184
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 186
    check-cast p1, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    .line 188
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    .line 190
    :cond_c
    return-void
    .line 193
.end method

.method public final getControlStatus()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public final getCws()Lcom/android/systemui/controls/ui/ControlWithState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getDeviceType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 15
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 19
    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    .line 21
    :goto_0
    return p0
    .line 23
.end method

.method public final setErrorStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f1302f6    # @string/controls_error_failed 'Error, try again'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;

    .line 15
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    .line 21
    return-void
.end method

.method public final setStatusText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 17
    return-void
    .line 19
.end method

.method public final updateContentDescription()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " "

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    return-void
    .line 51
.end method

.method public final updateStatusRow$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->chevronIcon:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 20
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    if-eqz p5, :cond_0

    .line 26
    invoke-virtual {p5}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    .line 28
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 34
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    .line 37
    move-result-object p2

    .line 40
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    :goto_0
    if-nez p2, :cond_5

    .line 48
    instance-of p2, p3, Landroid/graphics/drawable/StateListDrawable;

    .line 50
    if-eqz p2, :cond_4

    .line 52
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object p2

    .line 63
    instance-of p2, p2, Landroid/graphics/drawable/StateListDrawable;

    .line 64
    if-nez p2, :cond_2

    .line 66
    :cond_1
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_2
    if-eqz p1, :cond_3

    .line 71
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    .line 73
    goto :goto_1

    .line 75
    :cond_3
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    .line 76
    :goto_1
    const/4 p2, 0x1

    .line 78
    invoke-virtual {v1, p1, p2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 79
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 86
    move-result p0

    .line 89
    const/16 p1, 0x34

    .line 90
    if-eq p0, p1, :cond_5

    .line 92
    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 94
    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 101
    return-void
    .line 104
.end method

.method public final usePanel()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 2
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 18
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 26
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 32
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 34
    :cond_1
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 47
    :goto_2
    return p0
    .line 48
.end method
