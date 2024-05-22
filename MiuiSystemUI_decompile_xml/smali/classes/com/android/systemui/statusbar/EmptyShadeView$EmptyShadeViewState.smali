.class public final Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 5
    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 11
    int-to-float v0, v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 18
    move-result p0

    .line 21
    int-to-float p0, p0

    .line 22
    const v1, 0x3f19999a    # 0.6f

    .line 23
    mul-float/2addr p0, v1

    .line 26
    cmpg-float p0, v0, p0

    .line 27
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-gtz p0, :cond_0

    .line 31
    move p0, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p0, v1

    .line 35
    :goto_0
    if-eqz p0, :cond_1

    .line 36
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 38
    if-eqz p0, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method
