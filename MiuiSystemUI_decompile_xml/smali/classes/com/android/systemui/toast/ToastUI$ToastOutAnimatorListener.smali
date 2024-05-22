.class public final Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mPrevCallback:Landroid/app/ITransientNotificationCallback;

.field public final mPrevPresenter:Landroid/widget/ToastPresenter;

.field public mShowNextToastRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/toast/ToastUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/ToastUI;Landroid/widget/ToastPresenter;Landroid/app/ITransientNotificationCallback;Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->this$0:Lcom/android/systemui/toast/ToastUI;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevPresenter:Landroid/widget/ToastPresenter;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevCallback:Landroid/app/ITransientNotificationCallback;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevPresenter:Landroid/widget/ToastPresenter;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mPrevCallback:Landroid/app/ITransientNotificationCallback;

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->mShowNextToastRunnable:Ljava/lang/Runnable;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;->this$0:Lcom/android/systemui/toast/ToastUI;

    .line 16
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI;->mToastOutAnimatorListener:Lcom/android/systemui/toast/ToastUI$ToastOutAnimatorListener;

    .line 19
    return-void
    .line 21
.end method
