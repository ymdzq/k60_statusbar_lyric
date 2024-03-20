.class public final Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHijackFocus:Z

.field public mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x101006d    # @android:attr/dropDownListViewStyle

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public final hasWindowFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public final isFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public final isInTouchMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method
