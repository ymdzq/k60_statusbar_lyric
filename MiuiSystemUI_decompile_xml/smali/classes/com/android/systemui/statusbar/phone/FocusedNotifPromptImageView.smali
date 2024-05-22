.class public Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mListener:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView$OnVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->mListener:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView$OnVisibilityChangedListener;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateRectToHome()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public setVisibilityChangedListener(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView$OnVisibilityChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->mListener:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView$OnVisibilityChangedListener;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;

    .line 9
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateRectToHome()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
