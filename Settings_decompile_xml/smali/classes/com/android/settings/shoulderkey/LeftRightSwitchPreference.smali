.class public Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "LeftRightSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private mHandler:Landroid/os/Handler;

.field private mLastCheckId:I

.field private mLeftShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field private mRightShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p2, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget p1, Lcom/android/settings/R$layout;->left_right_switch_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 39
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    sget v0, Lcom/android/settings/R$id;->filter_sort_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 42
    sget v0, Lcom/android/settings/R$id;->left_shoulder_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLeftShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 43
    sget v0, Lcom/android/settings/R$id;->right_shoulder_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mRightShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 45
    iget-object p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setTabIncatorVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLeftShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLeftShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mRightShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 55
    iget v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLastCheckId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 58
    :cond_0
    sget v0, Lcom/android/settings/R$id;->left_shoulder_key:I

    if-ne p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object v1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLeftShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mFilterSortView:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object v1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mRightShoulderKeyView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    :goto_0
    iput p1, p0, Lcom/android/settings/shoulderkey/LeftRightSwitchPreference;->mLastCheckId:I

    return-void
.end method
