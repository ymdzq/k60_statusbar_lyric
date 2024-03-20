.class public Lcom/android/settings/display/ScreenColorPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ScreenColorPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

.field private mCoolView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private mCustomView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

.field private mLastCheckId:I

.field private mNatureView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private mWarmView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;


# direct methods
.method static bridge synthetic -$$Nest$fputmLastCheckId(Lcom/android/settings/display/ScreenColorPreference;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mLastCheckId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ScreenColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ScreenColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget p1, Lcom/android/settings/R$layout;->screen_color_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private updateTextColor(Z)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 136
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorPreference;->mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 139
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public enablePick(IZ)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mNatureView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCoolView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mWarmView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCustomView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "screen_color_level"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    sget v1, Lcom/android/settings/R$id;->nature_color:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mNatureView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 53
    sget v1, Lcom/android/settings/R$id;->cool_color:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCoolView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 54
    sget v1, Lcom/android/settings/R$id;->warm_color:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mWarmView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 55
    sget v1, Lcom/android/settings/R$id;->custom_color:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCustomView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 56
    sget v1, Lcom/android/settings/R$id;->filter_sort_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mFilterSortView2:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    .line 57
    sget v1, Lcom/android/settings/R$id;->screen_color_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/ScreenColorBitMapView;

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

    .line 58
    new-instance v2, Lcom/android/settings/display/ScreenColorPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/display/ScreenColorPreference$1;-><init>(Lcom/android/settings/display/ScreenColorPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/display/ScreenColorBitMapView;->setCallback(Lcom/android/settings/display/ScreenColorBitMapView$Callback;)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_level"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 70
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 72
    new-instance v0, Lcom/android/settings/display/ScreenColorPreference$2;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ScreenColorPreference$2;-><init>(Lcom/android/settings/display/ScreenColorPreference;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenColorPreference;->updateTextColor(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mNatureView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCoolView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mWarmView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mCustomView:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mLastCheckId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    sget v1, Lcom/android/settings/R$id;->nature_color:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/ScreenColorBitMapView;->setCircleLocation(I)V

    goto :goto_0

    .line 98
    :cond_1
    sget v1, Lcom/android/settings/R$id;->warm_color:I

    if-ne v0, v1, :cond_2

    .line 99
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference;->mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-virtual {v0, v2}, Lcom/android/settings/display/ScreenColorBitMapView;->setCircleLocation(I)V

    goto :goto_0

    .line 101
    :cond_2
    sget v1, Lcom/android/settings/R$id;->cool_color:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 102
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/display/ScreenColorPreference;->mBitMapView:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/ScreenColorBitMapView;->setCircleLocation(I)V

    goto :goto_0

    .line 104
    :cond_3
    sget v1, Lcom/android/settings/R$id;->custom_color:I

    if-ne v0, v1, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 108
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenColorPreference;->mLastCheckId:I

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenColorPreference;->updateTextColor(Z)V

    return-void
.end method
