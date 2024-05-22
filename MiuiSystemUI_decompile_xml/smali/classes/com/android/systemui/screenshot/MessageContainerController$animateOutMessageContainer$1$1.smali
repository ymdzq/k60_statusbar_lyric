.class public final Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 5
    iget-object p1, p1, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 7
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    move-object p1, v0

    .line 12
    :cond_0
    const/16 v1, 0x8

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->animateOut:Landroid/animation/Animator;

    .line 20
    return-void
    .line 22
.end method
