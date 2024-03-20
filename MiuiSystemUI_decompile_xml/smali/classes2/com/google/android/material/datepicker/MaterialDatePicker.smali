.class public final Lcom/google/android/material/datepicker/MaterialDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

.field public calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public confirmButton:Landroid/widget/Button;

.field public edgeToEdgeEnabled:Z

.field public fullscreen:Z

.field public headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

.field public inputMode:I

.field public negativeButtonText:Ljava/lang/CharSequence;

.field public negativeButtonTextResId:I

.field public final onCancelListeners:Ljava/util/LinkedHashSet;

.field public final onDismissListeners:Ljava/util/LinkedHashSet;

.field public overrideThemeResId:I

.field public pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

.field public positiveButtonText:Ljava/lang/CharSequence;

.field public positiveButtonTextResId:I

.field public titleText:Ljava/lang/CharSequence;

.field public titleTextResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 27
    return-void
    .line 29
.end method

.method public static getPaddedPickerWidth(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f070c6f    # @dimen/mtrl_calendar_content_padding '12.0dp'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    move-result v0

    .line 12
    new-instance v1, Lcom/google/android/material/datepicker/Month;

    .line 13
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 15
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    .line 19
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 22
    const v2, 0x7f070c75    # @dimen/mtrl_calendar_day_width '36.0dp'

    .line 24
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v2

    .line 30
    const v3, 0x7f070c83    # @dimen/mtrl_calendar_month_horizontal_padding '2.0dp'

    .line 31
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 34
    move-result p0

    .line 37
    mul-int/lit8 v0, v0, 0x2

    .line 38
    mul-int/2addr v2, v1

    .line 40
    add-int/2addr v2, v0

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    mul-int/2addr v1, p0

    .line 44
    add-int/2addr v1, v2

    .line 45
    return v1
    .line 46
.end method

.method public static isFullscreen(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const v0, 0x101020d    # @android:attr/windowFullscreen

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(ILandroid/content/Context;)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public static readMaterialCalendarStyleBoolean(ILandroid/content/Context;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0404c3    # @attr/materialCalendarStyle

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 11
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 15
    filled-new-array {p0}, [I

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 21
    move-result-object p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return p1
    .line 33
.end method


# virtual methods
.method public final getDateSelector()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 2
    const-string v0, "DATE_SELECTOR_KEY"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 7
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 15
    const-string v0, "DATE_SELECTOR_KEY"

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
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 34
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 41
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 42
    const-string v0, "TITLE_TEXT_KEY"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 46
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 50
    const-string v0, "INPUT_MODE_KEY"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 54
    move-result v0

    .line 57
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 58
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 62
    move-result v0

    .line 65
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    .line 66
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 70
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 74
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 78
    move-result v0

    .line 81
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    .line 82
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 90
    return-void
    .line 92
.end method

.method public final onCreateDialog()Landroid/app/Dialog;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 23
    move-result v2

    .line 26
    iput-boolean v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 27
    const-class v2, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    const v4, 0x7f0401c6    # @attr/colorSurface

    .line 35
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 38
    move-result-object v2

    .line 41
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 42
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 44
    const v5, 0x7f0404c3    # @attr/materialCalendarStyle

    .line 46
    const v6, 0x7f1407fa    # @style/Widget.MaterialComponents.MaterialCalendar

    .line 49
    invoke-direct {v4, v1, v3, v5, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    iput-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 55
    invoke-virtual {v4, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 60
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 69
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 75
    move-result-object v1

    .line 78
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 79
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    .line 81
    move-result v1

    .line 84
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 85
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 89
    throw v3
    .line 92
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 2
    if-eqz p3, :cond_0

    .line 4
    const p3, 0x7f0d026e    # @layout/mtrl_picker_fullscreen 'res/layout/mtrl_picker_fullscreen.xml'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const p3, 0x7f0d026d    # @layout/mtrl_picker_dialog 'res/layout/mtrl_picker_dialog.xml'

    .line 10
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 20
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 21
    if-eqz p3, :cond_1

    .line 23
    const p3, 0x7f0a0659    # @id/mtrl_calendar_frame

    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p3

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    .line 34
    move-result v1

    .line 37
    const/4 v2, -0x2

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    const p3, 0x7f0a065a    # @id/mtrl_calendar_main_pane

    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    .line 55
    move-result v1

    .line 58
    const/4 v2, -0x1

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :goto_1
    const p3, 0x7f0a0665    # @id/mtrl_picker_header_selection_text

    .line 66
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p3

    .line 72
    check-cast p3, Landroid/widget/TextView;

    .line 73
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 75
    const/4 v0, 0x1

    .line 77
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat$Api19Impl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 78
    const p3, 0x7f0a0667    # @id/mtrl_picker_header_toggle

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p3

    .line 87
    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 88
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 90
    const p3, 0x7f0a066b    # @id/mtrl_picker_title_text

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p3

    .line 98
    check-cast p3, Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 101
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    goto :goto_2

    .line 108
    :cond_2
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 109
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :goto_2
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 114
    const-string v1, "TOGGLE_BUTTON_TAG"

    .line 116
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 121
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 123
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 125
    const v2, 0x10100a0    # @android:attr/state_checked

    .line 128
    filled-new-array {v2}, [I

    .line 131
    move-result-object v2

    .line 134
    const v3, 0x7f0812b3    # @drawable/material_ic_calendar_black_24dp 'res/drawable/material_ic_calendar_black_24dp.xml'

    .line 135
    invoke-static {v3, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 138
    move-result-object v3

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    const/4 v2, 0x0

    .line 145
    new-array v3, v2, [I

    .line 146
    const v4, 0x7f0812b5    # @drawable/material_ic_edit_black_24dp 'res/drawable/material_ic_edit_black_24dp.xml'

    .line 148
    invoke-static {v4, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 151
    move-result-object p2

    .line 154
    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 161
    iget p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 163
    if-eqz p3, :cond_3

    .line 165
    goto :goto_3

    .line 167
    :cond_3
    move v0, v2

    .line 168
    :goto_3
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 169
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 172
    const/4 p3, 0x0

    .line 174
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 175
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 178
    invoke-virtual {p2}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 180
    move-result v0

    .line 183
    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 186
    move-result-object p2

    .line 189
    const v0, 0x7f13083a    # @string/mtrl_picker_toggle_to_calendar_input_mode 'Switch to calendar input mode'

    .line 190
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 196
    goto :goto_4

    .line 197
    :cond_4
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 198
    move-result-object p2

    .line 201
    const v0, 0x7f13083c    # @string/mtrl_picker_toggle_to_text_input_mode 'Switch to text input mode'

    .line 202
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    move-result-object p2

    .line 208
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 209
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 214
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;

    .line 216
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 218
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const p2, 0x7f0a021a    # @id/confirm_button

    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    move-result-object p1

    .line 230
    check-cast p1, Landroid/widget/Button;

    .line 231
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 235
    throw p3
    .line 238
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 33
    return-void
    .line 36
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 5
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    const-string v0, "DATE_SELECTOR_KEY"

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 18
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 20
    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 22
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 25
    iget-object v2, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 27
    if-eqz v2, :cond_0

    .line 29
    iget-wide v2, v2, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v2

    .line 36
    iput-object v2, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 37
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 39
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    iget-object v3, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 44
    const-string v4, "DEEP_COPY_VALIDATOR_KEY"

    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    new-instance v3, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 51
    iget-wide v5, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 53
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 55
    move-result-object v6

    .line 58
    iget-wide v7, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 59
    invoke-static {v7, v8}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 61
    move-result-object v7

    .line 64
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 65
    move-result-object v2

    .line 68
    move-object v8, v2

    .line 69
    check-cast v8, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 70
    iget-object v2, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 72
    if-nez v2, :cond_1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 77
    move-result-wide v1

    .line 80
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    .line 81
    move-result-object v1

    .line 84
    :goto_0
    move-object v9, v1

    .line 85
    iget v10, v0, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->firstDayOfWeek:I

    .line 86
    move-object v5, v3

    .line 88
    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;I)V

    .line 89
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 92
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 97
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v0, "TITLE_TEXT_KEY"

    .line 104
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 108
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 111
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 118
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 122
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 125
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 132
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    return-void
    .line 139
.end method

.method public final onStart()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_b

    .line 16
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 19
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    .line 27
    if-nez v1, :cond_c

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 31
    move-result-object v1

    .line 34
    const v3, 0x7f0a03a2    # @id/fullscreen_header

    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v3

    .line 45
    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    .line 46
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 54
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 56
    move-result v3

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v3, v2

    .line 65
    :goto_0
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x1

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v6

    .line 73
    if-nez v6, :cond_1

    .line 74
    goto :goto_1

    .line 76
    :cond_1
    move v6, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    move v6, v5

    .line 79
    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v7

    .line 83
    const v8, 0x1010031    # @android:attr/colorBackground

    .line 84
    const/high16 v9, -0x1000000

    .line 87
    invoke-static {v7, v8, v9}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    .line 89
    move-result v7

    .line 92
    if-eqz v6, :cond_3

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v3

    .line 98
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v6

    .line 102
    invoke-virtual {v0, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 109
    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 112
    invoke-virtual {v0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 115
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 118
    move-result v3

    .line 121
    invoke-static {v3}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    .line 122
    move-result v3

    .line 125
    invoke-static {v4}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    .line 126
    move-result v7

    .line 129
    if-nez v7, :cond_5

    .line 130
    if-eqz v3, :cond_4

    .line 132
    goto :goto_3

    .line 134
    :cond_4
    move v3, v4

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    :goto_3
    move v3, v5

    .line 137
    :goto_4
    invoke-static {v0, v3}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 138
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v3

    .line 144
    invoke-static {v3}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    .line 145
    move-result v3

    .line 148
    invoke-static {v4}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    .line 149
    move-result v6

    .line 152
    if-nez v6, :cond_7

    .line 153
    if-eqz v3, :cond_6

    .line 155
    goto :goto_5

    .line 157
    :cond_6
    move v3, v4

    .line 158
    goto :goto_6

    .line 159
    :cond_7
    :goto_5
    move v3, v5

    .line 160
    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 161
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 164
    invoke-direct {v6, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 166
    iget-object v0, v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 169
    iget-object v6, v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;->mWindow:Landroid/view/Window;

    .line 171
    const/16 v7, 0x10

    .line 173
    if-eqz v3, :cond_9

    .line 175
    if-eqz v6, :cond_8

    .line 177
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 179
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    .line 183
    move-result v4

    .line 186
    or-int/2addr v4, v7

    .line 187
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 188
    :cond_8
    invoke-interface {v0, v7, v7}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 191
    goto :goto_7

    .line 194
    :cond_9
    if-eqz v6, :cond_a

    .line 195
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 197
    move-result-object v3

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    .line 201
    move-result v6

    .line 204
    const/16 v8, -0x11

    .line 205
    and-int/2addr v6, v8

    .line 207
    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 208
    :cond_a
    invoke-interface {v0, v4, v7}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 211
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 214
    move-result v0

    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 218
    move-result-object v3

    .line 221
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    new-instance v4, Lcom/google/android/material/datepicker/MaterialDatePicker$3;

    .line 224
    invoke-direct {v4, v3, v1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker$3;-><init>(ILandroid/view/View;I)V

    .line 226
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 229
    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 231
    iput-boolean v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    .line 234
    goto :goto_8

    .line 236
    :cond_b
    const/4 v1, -0x2

    .line 237
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 241
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    move-result-object v1

    .line 248
    const v3, 0x7f070c77    # @dimen/mtrl_calendar_dialog_background_inset '16.0dp'

    .line 249
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 252
    move-result v9

    .line 255
    new-instance v1, Landroid/graphics/Rect;

    .line 256
    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    .line 261
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 263
    move-object v4, v3

    .line 265
    move v6, v9

    .line 266
    move v7, v9

    .line 267
    move v8, v9

    .line 268
    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 269
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 275
    move-result-object v0

    .line 278
    new-instance v3, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 281
    move-result-object v4

    .line 284
    invoke-direct {v3, v4, v1}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 285
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    :cond_c
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 291
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 294
    if-eqz v0, :cond_e

    .line 296
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 298
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 301
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 303
    invoke-direct {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 305
    new-instance v4, Landroid/os/Bundle;

    .line 308
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 310
    const-string v5, "THEME_RES_ID_KEY"

    .line 313
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v6, "GRID_SELECTOR_KEY"

    .line 318
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    const-string v6, "CALENDAR_CONSTRAINTS_KEY"

    .line 323
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 328
    const-string v7, "CURRENT_MONTH_KEY"

    .line 330
    invoke-virtual {v4, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 332
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 335
    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 338
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 340
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    .line 342
    move-result v1

    .line 345
    if-eqz v1, :cond_d

    .line 346
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 348
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 351
    new-instance v3, Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    .line 353
    invoke-direct {v3}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;-><init>()V

    .line 355
    new-instance v4, Landroid/os/Bundle;

    .line 358
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 360
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v0, "DATE_SELECTOR_KEY"

    .line 366
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 368
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 371
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 374
    goto :goto_9

    .line 377
    :cond_d
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 378
    :goto_9
    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 380
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 385
    throw v2

    .line 388
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()V

    .line 389
    throw v2
    .line 392
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 6
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 9
    return-void
    .line 12
.end method
