.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final synthetic val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

.field public final synthetic val$toastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lcom/android/systemui/toast/SystemUIToast;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$toastView:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 8
    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3$1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
