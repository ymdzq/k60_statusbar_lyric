.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/IOnBackInvokedCallback;

.field public final synthetic f$1:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/IOnBackInvokedCallback;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/IRemoteAnimationRunner;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/IOnBackInvokedCallback;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/IRemoteAnimationRunner;

    .line 4
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    .line 6
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 8
    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    .line 10
    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    .line 13
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method
