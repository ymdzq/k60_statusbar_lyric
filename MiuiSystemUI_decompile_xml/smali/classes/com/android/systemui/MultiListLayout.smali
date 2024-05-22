.class public abstract Lcom/android/systemui/MultiListLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

.field public mRotation:I

.field public mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public abstract getAnimationOffsetX()F
.end method

.method public abstract getAnimationOffsetY()F
.end method

.method public abstract getListView()Landroid/view/ViewGroup;
.end method

.method public abstract getSeparatedView()Landroid/view/ViewGroup;
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    .line 7
    move-result p1

    .line 10
    iget v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    .line 11
    if-eq p1, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;->onRotate()V

    .line 21
    :cond_0
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    .line 24
    :cond_1
    return-void
    .line 26
.end method

.method public onUpdateList()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllItems()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->countItems(Z)I

    .line 13
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-lez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    .line 22
    move-result-object p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    if-eqz v1, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    const/16 v2, 0x8

    .line 31
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    :cond_2
    return-void
    .line 36
.end method

.method public removeAllItems()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public removeAllListViews()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    .line 2
    return-void
    .line 4
.end method

.method public abstract setDivisionView(Landroid/view/View;)V
.end method

.method public setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6
    return-void
    .line 9
.end method

.method public setOutsideTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 12
    return-void
    .line 15
.end method

.method public setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    .line 2
    return-void
    .line 4
.end method
