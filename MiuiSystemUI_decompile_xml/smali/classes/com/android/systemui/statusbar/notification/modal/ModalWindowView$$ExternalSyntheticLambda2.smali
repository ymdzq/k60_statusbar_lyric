.class public final synthetic Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    add-float/2addr v0, v1

    .line 19
    const/high16 v1, 0x41a00000    # 20.0f

    .line 20
    add-float/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 24
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mScreenHeight:I

    .line 26
    int-to-float v2, v2

    .line 28
    cmpl-float v3, v0, v2

    .line 29
    if-lez v3, :cond_0

    .line 31
    sub-float/2addr v0, v2

    .line 33
    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 36
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 38
    iget v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 40
    sub-float/2addr v2, v3

    .line 42
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 43
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 49
    move-result-object v0

    .line 52
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 53
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 55
    sub-float/2addr v1, v2

    .line 57
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 60
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 62
    sub-float/2addr v1, v2

    .line 64
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 65
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 71
    const/4 v1, 0x0

    .line 73
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 76
    :cond_1
    return-void
    .line 79
.end method
