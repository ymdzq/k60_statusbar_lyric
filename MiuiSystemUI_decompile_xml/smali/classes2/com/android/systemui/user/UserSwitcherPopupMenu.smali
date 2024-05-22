.class public final Lcom/android/systemui/user/UserSwitcherPopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public adapter:Landroid/widget/ListAdapter;

.field public final context:Landroid/content/Context;

.field public final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 18
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    .line 22
    return-void
    .line 25
.end method


# virtual methods
.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->adapter:Landroid/widget/ListAdapter;

    .line 5
    return-void
    .line 7
.end method

.method public final show()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 16
    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 18
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    .line 27
    const v3, 0x7f07011b    # @dimen/bouncer_user_switcher_popup_divider_height '4.0dp'

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 36
    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    .line 39
    const v3, 0x7f07011c    # @dimen/bouncer_user_switcher_popup_header_height '12.0dp'

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v2

    .line 47
    iget-object v3, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    .line 48
    new-instance v4, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;

    .line 50
    invoke-direct {v4, v2, v3}, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;-><init>(ILandroid/content/Context;)V

    .line 52
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 56
    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->context:Landroid/content/Context;

    .line 59
    new-instance v5, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;

    .line 61
    invoke-direct {v5, v2, v4}, Lcom/android/systemui/user/UserSwitcherPopupMenu$createSpacer$1;-><init>(ILandroid/content/Context;)V

    .line 63
    invoke-virtual {v0, v5, v3, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->adapter:Landroid/widget/ListAdapter;

    .line 69
    if-eqz v2, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;->res:Landroid/content/res/Resources;

    .line 73
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    move-result-object v4

    .line 78
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    int-to-double v4, v4

    .line 81
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 82
    mul-double/2addr v4, v6

    .line 84
    double-to-int v4, v4

    .line 85
    const/high16 v5, -0x80000000

    .line 86
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 88
    move-result v4

    .line 91
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    .line 92
    move-result v5

    .line 95
    move v6, v1

    .line 96
    move v7, v6

    .line 97
    :goto_0
    if-ge v6, v5, :cond_0

    .line 98
    invoke-interface {v2, v6, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    move-result-object v8

    .line 103
    invoke-virtual {v8, v4, v1}, Landroid/view/View;->measure(II)V

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 107
    move-result v8

    .line 110
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 111
    move-result v7

    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    goto :goto_0

    .line 117
    :cond_0
    move v1, v7

    .line 118
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 119
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 122
    return-void
    .line 125
.end method
