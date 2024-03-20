.class public Lcom/android/settings/widget/MagicSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "MagicSeekBarPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 33
    sget p1, Lcom/android/settings/R$layout;->magic_seekbar_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget p1, Lcom/android/settings/R$layout;->magic_seekbar_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 39
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/RestrictedSizeAdjustView;

    const v1, 0x1020016    # @android:id/title

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v1

    sub-int/2addr p1, v1

    .line 47
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v1, p1, p0, p1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
