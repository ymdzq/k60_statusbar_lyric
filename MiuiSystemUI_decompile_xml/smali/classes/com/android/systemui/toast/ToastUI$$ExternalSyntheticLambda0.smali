.class public final synthetic Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/toast/ToastUI;

.field public final synthetic f$1:Lcom/android/systemui/toast/SystemUIToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/ToastUI;Lcom/android/systemui/toast/SystemUIToast;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/ToastUI;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/toast/SystemUIToast;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/ToastUI;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/toast/SystemUIToast;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/toast/ToastUI;->updateToastViewShadow(Landroid/view/View;)V

    .line 17
    return-void

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/ToastUI;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/toast/ToastUI$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/toast/SystemUIToast;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mIsToastShowing:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/systemui/toast/ToastUI;->updateToastViewShadow(Landroid/view/View;)V

    .line 34
    :cond_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
