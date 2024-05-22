.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field public final synthetic $operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic $viewToAnimate:Landroid/view/View;

.field public final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    .line 1
    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2
    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    .line 6
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 8
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v3, p1, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 15
    const/4 p1, 0x2

    .line 18
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 3
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    :cond_0
    return-void
    .line 14
.end method
