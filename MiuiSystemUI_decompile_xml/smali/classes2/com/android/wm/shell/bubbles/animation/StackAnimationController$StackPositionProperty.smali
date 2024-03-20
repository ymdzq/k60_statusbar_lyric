.class public final Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->this$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 1

    .line 1
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->this$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 4
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 8
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 21
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 23
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->this$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 6
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 8
    return-void
    .line 11
.end method
