.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;


# instance fields
.field public calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field public current:Lcom/google/android/material/datepicker/Month;

.field public dayFrame:Landroid/view/View;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public themeResId:I

.field public yearFrame:Landroid/view/View;

.field public yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 2
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 4
    const-string v0, "NAVIGATION_PREV_TAG"

    .line 6
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 8
    const-string v0, "NAVIGATION_NEXT_TAG"

    .line 10
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 12
    const-string v0, "SELECTOR_TOGGLE_TAG"

    .line 14
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 7
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 15
    const-string v0, "GRID_SELECTOR_KEY"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 23
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 32
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 34
    const-string v0, "CURRENT_MONTH_KEY"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 42
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 44
    return-void
    .line 46
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 8
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    .line 13
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 18
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 24
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 26
    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 28
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    const v1, 0x7f0d0267    # @layout/mtrl_calendar_vertical 'res/layout/mtrl_calendar_vertical.xml'

    .line 36
    move v4, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const v1, 0x7f0d0262    # @layout/mtrl_calendar_horizontal 'res/layout/mtrl_calendar_horizontal.xml'

    .line 41
    move v4, v3

    .line 44
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p2

    .line 56
    const v1, 0x7f070c86    # @dimen/mtrl_calendar_navigation_height '48.0dp'

    .line 57
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v1

    .line 63
    const v5, 0x7f070c87    # @dimen/mtrl_calendar_navigation_top_padding '4.0dp'

    .line 64
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    move-result v5

    .line 70
    add-int/2addr v5, v1

    .line 71
    const v1, 0x7f070c85    # @dimen/mtrl_calendar_navigation_bottom_padding '4.0dp'

    .line 72
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 75
    move-result v1

    .line 78
    add-int/2addr v1, v5

    .line 79
    const v5, 0x7f070c76    # @dimen/mtrl_calendar_days_of_week_height '24.0dp'

    .line 80
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    move-result v5

    .line 86
    sget v6, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 87
    const v7, 0x7f070c71    # @dimen/mtrl_calendar_day_height '32.0dp'

    .line 89
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v7

    .line 95
    mul-int/2addr v7, v6

    .line 96
    add-int/lit8 v6, v6, -0x1

    .line 97
    const v8, 0x7f070c84    # @dimen/mtrl_calendar_month_vertical_padding '0.0dp'

    .line 99
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 102
    move-result v8

    .line 105
    mul-int/2addr v8, v6

    .line 106
    add-int/2addr v8, v7

    .line 107
    const v6, 0x7f070c6e    # @dimen/mtrl_calendar_bottom_padding '0.0dp'

    .line 108
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 111
    move-result p2

    .line 114
    add-int/2addr v1, v5

    .line 115
    add-int/2addr v1, v8

    .line 116
    add-int/2addr v1, p2

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 118
    const p2, 0x7f0a0658    # @id/mtrl_calendar_days_of_week

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p2

    .line 127
    check-cast p2, Landroid/widget/GridView;

    .line 128
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    .line 130
    invoke-direct {v1, p0, v3}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 132
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 138
    iget v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->firstDayOfWeek:I

    .line 140
    new-instance v5, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    .line 142
    if-lez v1, :cond_1

    .line 144
    invoke-direct {v5, v1}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>(I)V

    .line 146
    goto :goto_1

    .line 149
    :cond_1
    invoke-direct {v5}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    .line 150
    :goto_1
    invoke-virtual {p2, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 156
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 158
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 161
    const p2, 0x7f0a065b    # @id/mtrl_calendar_months

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object p2

    .line 170
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    new-instance p2, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 177
    invoke-direct {p2, p0, v4, v4}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;II)V

    .line 180
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 192
    new-instance p2, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 195
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 197
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 199
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 201
    invoke-direct {p2, p3, v0, v1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/MaterialCalendar$3;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 212
    move-result-object v0

    .line 215
    const v1, 0x7f0b00d4    # @integer/mtrl_calendar_year_selector_span '3'

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 219
    move-result v0

    .line 222
    const v1, 0x7f0a065e    # @id/mtrl_calendar_year_selector_frame

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    move-result-object v4

    .line 229
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    iput-object v4, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 236
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 241
    invoke-direct {v5, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(II)V

    .line 243
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    new-instance v4, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 251
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 253
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    new-instance v4, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    .line 261
    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 263
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 266
    :cond_2
    const v0, 0x7f0a061a    # @id/month_navigation_fragment_toggle

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object v4

    .line 275
    if-eqz v4, :cond_3

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object v0

    .line 281
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 282
    sget-object v4, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 284
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 286
    new-instance v4, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    .line 289
    invoke-direct {v4, p0, v2}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 291
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 294
    const v4, 0x7f0a061c    # @id/month_navigation_previous

    .line 297
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object v4

    .line 303
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 304
    sget-object v5, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 306
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 308
    const v5, 0x7f0a061b    # @id/month_navigation_next

    .line 311
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    move-result-object v5

    .line 317
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 318
    sget-object v6, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 320
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    move-result-object v1

    .line 328
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 329
    const v1, 0x7f0a0657    # @id/mtrl_calendar_day_selector_frame

    .line 331
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    move-result-object v1

    .line 337
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 338
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 345
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    .line 347
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 354
    new-instance v6, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    .line 356
    invoke-direct {v6, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    .line 358
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 361
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    .line 364
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    .line 372
    invoke-direct {v0, p0, p2, v3}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;I)V

    .line 374
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    .line 380
    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;I)V

    .line 382
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :cond_3
    invoke-static {p3}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 388
    move-result p3

    .line 391
    if-nez p3, :cond_4

    .line 392
    new-instance p3, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 394
    invoke-direct {p3}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 396
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 401
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 404
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 406
    iget-object p2, p2, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 408
    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 410
    iget-object v0, p2, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 412
    instance-of v0, v0, Ljava/util/GregorianCalendar;

    .line 414
    if-eqz v0, :cond_5

    .line 416
    iget v0, p0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 418
    iget v1, p2, Lcom/google/android/material/datepicker/Month;->year:I

    .line 420
    sub-int/2addr v0, v1

    .line 422
    mul-int/lit8 v0, v0, 0xc

    .line 423
    iget p0, p0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 425
    iget p2, p2, Lcom/google/android/material/datepicker/Month;->month:I

    .line 427
    sub-int/2addr p0, p2

    .line 429
    add-int/2addr p0, v0

    .line 430
    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 431
    return-object p1

    .line 434
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 435
    const-string p1, "Only Gregorian calendars are supported."

    .line 437
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 439
    throw p0
    .line 442
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    const-string v0, "GRID_SELECTOR_KEY"

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 15
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    const-string v0, "CURRENT_MONTH_KEY"

    .line 22
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 24
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    return-void
    .line 29
.end method

.method public final setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 8
    iget-object v0, v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 10
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 12
    iget-object v1, v0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    .line 14
    instance-of v2, v1, Ljava/util/GregorianCalendar;

    .line 16
    const-string v3, "Only Gregorian calendars are supported."

    .line 18
    if-eqz v2, :cond_5

    .line 20
    iget v2, p1, Lcom/google/android/material/datepicker/Month;->year:I

    .line 22
    iget v4, v0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 24
    sub-int/2addr v2, v4

    .line 26
    mul-int/lit8 v2, v2, 0xc

    .line 27
    iget v5, p1, Lcom/google/android/material/datepicker/Month;->month:I

    .line 29
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->month:I

    .line 31
    sub-int/2addr v5, v0

    .line 33
    add-int/2addr v5, v2

    .line 34
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 35
    instance-of v1, v1, Ljava/util/GregorianCalendar;

    .line 37
    if-eqz v1, :cond_4

    .line 39
    iget v1, v2, Lcom/google/android/material/datepicker/Month;->year:I

    .line 41
    sub-int/2addr v1, v4

    .line 43
    mul-int/lit8 v1, v1, 0xc

    .line 44
    iget v2, v2, Lcom/google/android/material/datepicker/Month;->month:I

    .line 46
    sub-int/2addr v2, v0

    .line 48
    add-int/2addr v2, v1

    .line 49
    sub-int v0, v5, v2

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 52
    move-result v1

    .line 55
    const/4 v2, 0x3

    .line 56
    const/4 v3, 0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    if-le v1, v2, :cond_0

    .line 59
    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v4

    .line 63
    :goto_0
    if-lez v0, :cond_1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    move v3, v4

    .line 67
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 68
    if-eqz v1, :cond_2

    .line 70
    if-eqz v3, :cond_2

    .line 72
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    add-int/lit8 v0, v5, -0x3

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 78
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    .line 83
    invoke-direct {v0, p0, v5}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 88
    goto :goto_2

    .line 91
    :cond_2
    if-eqz v1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    add-int/lit8 v0, v5, 0x3

    .line 96
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 98
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    .line 103
    invoke-direct {v0, p0, v5}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 108
    goto :goto_2

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    .line 114
    invoke-direct {v0, p0, v5}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 119
    :goto_2
    return-void

    .line 122
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0

    .line 128
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0
    .line 134
.end method

.method public final setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 2
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 4
    const/16 v1, 0x8

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 23
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 25
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    .line 27
    iget-object v0, v0, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 29
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 31
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 33
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->year:I

    .line 35
    sub-int/2addr v3, v0

    .line 37
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 38
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 52
    if-ne p1, v0, :cond_1

    .line 54
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    .line 68
    :cond_1
    :goto_0
    return-void
    .line 71
.end method
