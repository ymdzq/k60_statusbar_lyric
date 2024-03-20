.class public Lcom/android/settings/display/ScreenColorSeekBarPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ScreenColorSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mDegreePerEntry:D

.field private mLevel:I

.field private mLevelTexts:[Ljava/lang/CharSequence;

.field private mSeekBarThumbOffset:I

.field private mSeekBarThumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ScreenColorSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 p1, 0x4049000000000000L    # 50.0

    .line 35
    iput-wide p1, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDegreePerEntry:D

    .line 46
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorSeekBarPreference;->generateLevelTextColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private generateLevelTextColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    const v0, 0x10100a1    # @android:attr/state_selected

    .line 175
    filled-new-array {v0}, [I

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 178
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 183
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 184
    filled-new-array {v0, v5}, [[I

    move-result-object v0

    .line 185
    sget v5, Lcom/android/settings/R$attr;->preferencePrimaryTextColor:I

    invoke-virtual {p0, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 186
    iget p0, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    filled-new-array {v3, p0}, [I

    move-result-object p0

    .line 187
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private levelToProgress(I)I
    .locals 2

    int-to-double v0, p1

    .line 171
    iget-wide p0, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDegreePerEntry:D

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method private progressToLevel(I)I
    .locals 4

    int-to-double v0, p1

    .line 167
    iget-wide p0, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDegreePerEntry:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p0, v2

    add-double/2addr v0, v2

    div-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method private setSeekBarProgress(Landroid/widget/SeekBar;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget p0, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mSeekBarThumbWidth:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mSeekBarThumbOffset:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 140
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 10

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    iput v2, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mSeekBarThumbOffset:I

    .line 69
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mSeekBarThumbWidth:I

    .line 73
    :cond_1
    sget v2, Lcom/android/settings/R$id;->level_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 76
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 74
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 77
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    .line 81
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v8

    :goto_2
    or-int/lit8 v4, v4, 0x10

    .line 84
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    if-ne v3, v9, :cond_5

    if-nez v2, :cond_4

    move v4, v8

    :cond_4
    or-int/lit8 v4, v4, 0x10

    .line 88
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_5
    const/16 v4, 0x11

    .line 92
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 93
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    :goto_3
    invoke-virtual {p1, v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget v2, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mLevel:I

    invoke-direct {p0, v2}, Lcom/android/settings/display/ScreenColorSeekBarPreference;->levelToProgress(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/ScreenColorSeekBarPreference;->setSeekBarProgress(Landroid/widget/SeekBar;I)V

    move v0, v1

    .line 101
    :goto_4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mLevelTexts:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mLevel:I

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_8

    .line 106
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 108
    :cond_8
    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mColorStateList:Landroid/content/res/ColorStateList;

    goto :goto_6

    .line 109
    :cond_9
    iget-object v3, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 110
    invoke-virtual {v2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    .line 109
    invoke-virtual {v4, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 108
    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 59
    sget p1, Lcom/android/settings/R$layout;->preference_screen_color:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/display/ScreenColorSeekBarPreference;->progressToLevel(I)I

    move-result p1

    .line 155
    iget p2, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mLevel:I

    if-eq p1, p2, :cond_1

    .line 156
    iput p1, p0, Lcom/android/settings/display/ScreenColorSeekBarPreference;->mLevel:I

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
