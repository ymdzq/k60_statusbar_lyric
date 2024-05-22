.class public final Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/MessageContainerController;->getAnimator(Z)Landroid/animation/Animator;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 23
    const/4 p0, 0x0

    .line 26
    return p0
    .line 27
.end method
