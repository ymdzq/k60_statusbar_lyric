.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressBackView:Landroid/widget/ProgressBar;

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 19
    return-void
    .line 22
.end method
