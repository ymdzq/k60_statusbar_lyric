.class public final Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 2
    filled-new-array {p1}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 4
    move-result-object p2

    .line 7
    const/4 p3, 0x0

    .line 8
    move p4, p3

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$AllAnimationsForPropertyFinishedEndListener;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 12
    move-result v1

    .line 15
    if-ge p4, v1, :cond_1

    .line 16
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    const/4 p3, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez p3, :cond_2

    .line 33
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Runnable;

    .line 49
    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_2
    return-void
    .line 56
.end method
