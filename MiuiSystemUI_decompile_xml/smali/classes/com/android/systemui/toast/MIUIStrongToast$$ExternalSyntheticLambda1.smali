.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x3

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 13
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 16
    new-instance v0, Landroid/graphics/Region;

    .line 18
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    .line 20
    iget p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentTextHeight:I

    .line 22
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 28
    :cond_0
    return-void
    .line 31
.end method
