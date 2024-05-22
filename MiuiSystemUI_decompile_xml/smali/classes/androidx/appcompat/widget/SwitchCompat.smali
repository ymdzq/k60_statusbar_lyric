.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CHECKED_STATE_SET:[I

.field public static final THUMB_POS:Landroidx/appcompat/widget/SwitchCompat$1;


# instance fields
.field public mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field public mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

.field public mEnforceSwitchWidth:Z

.field public mHasThumbTint:Z

.field public mHasThumbTintMode:Z

.field public mHasTrackTint:Z

.field public mHasTrackTintMode:Z

.field public final mMinFlingVelocity:I

.field public mOffLayout:Landroid/text/Layout;

.field public mOnLayout:Landroid/text/Layout;

.field public mPositionAnimator:Landroid/animation/ObjectAnimator;

.field public mShowText:Z

.field public mSplitTrack:Z

.field public mSwitchBottom:I

.field public mSwitchHeight:I

.field public mSwitchLeft:I

.field public mSwitchMinWidth:I

.field public mSwitchPadding:I

.field public mSwitchRight:I

.field public mSwitchTop:I

.field public mSwitchTransformationMethod:Landroidx/appcompat/text/AllCapsTransformationMethod;

.field public mSwitchWidth:I

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTextColors:Landroid/content/res/ColorStateList;

.field public mTextOff:Ljava/lang/CharSequence;

.field public mTextOffTransformed:Ljava/lang/CharSequence;

.field public mTextOn:Ljava/lang/CharSequence;

.field public mTextOnTransformed:Ljava/lang/CharSequence;

.field public final mTextPaint:Landroid/text/TextPaint;

.field public mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field public mThumbPosition:F

.field public mThumbTextPadding:I

.field public mThumbTintList:Landroid/content/res/ColorStateList;

.field public mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mThumbWidth:I

.field public mTouchMode:I

.field public final mTouchSlop:I

.field public mTouchX:F

.field public mTouchY:F

.field public mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public mTrackTintList:Landroid/content/res/ColorStateList;

.field public mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field public final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$1;

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/SwitchCompat$1;-><init>()V

    .line 4
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroidx/appcompat/widget/SwitchCompat$1;

    .line 7
    const v0, 0x10100a0    # @android:attr/state_checked

    .line 9
    filled-new-array {v0}, [I

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0407ba    # @attr/switchStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 7
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 11
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 12
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    .line 14
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;Landroid/view/View;)V

    .line 16
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 17
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 19
    sget-object v7, Landroidx/appcompat/R$styleable;->SwitchCompat:[I

    .line 20
    new-instance v3, Landroidx/appcompat/widget/TintTypedArray;

    .line 21
    invoke-virtual {p1, p2, v7, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-direct {v3, p1, v9}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/4 v11, 0x0

    .line 22
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    .line 23
    invoke-static/range {v5 .. v11}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v4, 0x2

    .line 24
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/16 v4, 0xb

    .line 26
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 28
    :cond_1
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    const/4 v4, 0x3

    .line 30
    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    const/16 v4, 0x8

    .line 31
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    const/4 v4, 0x5

    .line 32
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    const/4 v4, 0x6

    .line 33
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    const/4 v4, 0x4

    .line 34
    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    const/16 v4, 0x9

    .line 35
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 36
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 37
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    :cond_2
    const/16 v4, 0xa

    const/4 v5, -0x1

    .line 38
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 39
    invoke-static {v4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 40
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v6, v4, :cond_3

    .line 41
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 42
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 43
    :cond_3
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v4, :cond_5

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    :cond_5
    const/16 v4, 0xc

    .line 45
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 46
    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 47
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    :cond_6
    const/16 v4, 0xd

    .line 48
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 49
    invoke-static {v4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 50
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v4, v0, :cond_7

    .line 51
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 52
    iput-boolean v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 53
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_9

    .line 54
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    :cond_9
    const/4 v0, 0x7

    .line 55
    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 57
    :cond_a
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    .line 58
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 63
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 66
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 6
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;-><init>(Landroid/widget/TextView;)V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 13
    return-object p0
    .line 15
.end method

.method private getTargetCheckedState()Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    cmpl-float p0, p0, v0

    .line 6
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method private getThumbOffset()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 10
    sub-float/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 14
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    .line 16
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    mul-float/2addr v0, p0

    .line 21
    const/high16 p0, 0x3f000000    # 0.5f

    .line 22
    add-float/2addr v0, p0

    .line 24
    float-to-int p0, v0

    .line 25
    return p0
    .line 26
.end method

.method private getThumbScrollRange()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 20
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 22
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 24
    sub-int/2addr v2, p0

    .line 26
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 27
    sub-int/2addr v2, p0

    .line 29
    iget p0, v1, Landroid/graphics/Rect;->right:I

    .line 30
    sub-int/2addr v2, p0

    .line 32
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 33
    sub-int/2addr v2, p0

    .line 35
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 36
    sub-int/2addr v2, p0

    .line 38
    return v2

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0
    .line 41
.end method


# virtual methods
.method public final applyThumbTint()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 10
    if-eqz v1, :cond_3

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 54
    :cond_3
    return-void
    .line 57
.end method

.method public final applyTrackTint()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 10
    if-eqz v1, :cond_3

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 54
    :cond_3
    return-void
    .line 57
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 6
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 8
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    .line 12
    move-result v5

    .line 15
    add-int/2addr v5, v1

    .line 16
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    if-eqz v6, :cond_0

    .line 19
    invoke-static {v6}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 21
    move-result-object v6

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v6, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 26
    :goto_0
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    if-eqz v7, :cond_6

    .line 30
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 32
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 35
    add-int/2addr v5, v7

    .line 37
    if-eqz v6, :cond_4

    .line 38
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 40
    if-le v8, v7, :cond_1

    .line 42
    sub-int/2addr v8, v7

    .line 44
    add-int/2addr v1, v8

    .line 45
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 46
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 48
    if-le v7, v8, :cond_2

    .line 50
    sub-int/2addr v7, v8

    .line 52
    add-int/2addr v7, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v7, v2

    .line 55
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 56
    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 58
    if-le v8, v9, :cond_3

    .line 60
    sub-int/2addr v8, v9

    .line 62
    sub-int/2addr v3, v8

    .line 63
    :cond_3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 64
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    if-le v6, v8, :cond_5

    .line 68
    sub-int/2addr v6, v8

    .line 70
    sub-int v6, v4, v6

    .line 71
    goto :goto_2

    .line 73
    :cond_4
    move v7, v2

    .line 74
    :cond_5
    move v6, v4

    .line 75
    :goto_2
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    if-eqz v1, :cond_7

    .line 83
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 85
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 88
    sub-int v1, v5, v1

    .line 90
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 92
    add-int/2addr v5, v3

    .line 94
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 95
    add-int/2addr v5, v0

    .line 97
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 103
    move-result-object v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 109
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 112
    return-void
    .line 115
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 20
    move-result v1

    .line 23
    or-int/2addr v2, v1

    .line 24
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 29
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 35
    move-result v0

    .line 38
    or-int/2addr v2, v0

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 42
    :cond_2
    return-void
    .line 45
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    .line 13
    move-result v0

    .line 16
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 17
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 30
    add-int/2addr v0, p0

    .line 32
    :cond_1
    return v0
    .line 33
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    .line 13
    move-result v0

    .line 16
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 17
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 30
    add-int/2addr v0, p0

    .line 32
    :cond_1
    return v0
    .line 33
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getShowText()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 2
    return p0
    .line 4
.end method

.method public getSplitTrack()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 2
    return p0
    .line 4
.end method

.method public getSwitchMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getSwitchPadding()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getThumbPosition()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 2
    return p0
    .line 4
.end method

.method public getThumbTextPadding()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    return-object p0
    .line 4
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 19
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 31
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 35
    :cond_2
    return-void
    .line 37
.end method

.method public final makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    .line 2
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 8
    move-result p0

    .line 11
    float-to-double v0, p0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    move-result-wide v0

    .line 16
    double-to-int p0, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    move v3, p0

    .line 20
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 21
    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    move-object v0, v8

    .line 27
    move-object v1, p1

    .line 28
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 29
    return-object v8
    .line 32
.end method

.method public onCreateDrawableState(I)[I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    sget-object p0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    .line 14
    invoke-static {p1, p0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 16
    :cond_0
    return-object p1
    .line 19
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 15
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 18
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 20
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 22
    add-int/2addr v2, v4

    .line 24
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 25
    sub-int/2addr v3, v4

    .line 27
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    if-eqz v1, :cond_2

    .line 30
    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 32
    if-eqz v5, :cond_1

    .line 34
    if-eqz v4, :cond_1

    .line 36
    invoke-static {v4}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 38
    move-result-object v5

    .line 41
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 42
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 45
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 47
    add-int/2addr v6, v7

    .line 49
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 50
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 52
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 54
    sub-int/2addr v6, v5

    .line 56
    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    move-result v5

    .line 62
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 63
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 65
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 71
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    move-result v0

    .line 81
    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    .line 87
    move-result v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 93
    goto :goto_2

    .line 95
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 96
    :goto_2
    if-eqz v1, :cond_7

    .line 98
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 100
    move-result-object v5

    .line 103
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 104
    if-eqz v6, :cond_5

    .line 106
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 108
    const/4 v8, 0x0

    .line 110
    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 111
    move-result v6

    .line 114
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 115
    :cond_5
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 118
    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 120
    if-eqz v4, :cond_6

    .line 122
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 124
    move-result-object p0

    .line 127
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 128
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 130
    add-int/2addr v4, p0

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    .line 134
    move-result v4

    .line 137
    :goto_3
    div-int/lit8 v4, v4, 0x2

    .line 138
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 140
    move-result p0

    .line 143
    div-int/lit8 p0, p0, 0x2

    .line 144
    sub-int/2addr v4, p0

    .line 146
    add-int/2addr v2, v3

    .line 147
    div-int/lit8 v2, v2, 0x2

    .line 148
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 150
    move-result p0

    .line 153
    div-int/lit8 p0, p0, 0x2

    .line 154
    sub-int/2addr v2, p0

    .line 156
    int-to-float p0, v4

    .line 157
    int-to-float v2, v2

    .line 158
    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 162
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 165
    return-void
    .line 168
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-string p0, "android.widget.Switch"

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-string p0, "android.widget.Switch"

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 10
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 20
    :goto_0
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-static {p3}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 25
    move-result-object p3

    .line 28
    iget p4, p3, Landroid/graphics/Rect;->left:I

    .line 29
    iget p5, p1, Landroid/graphics/Rect;->left:I

    .line 31
    sub-int/2addr p4, p5

    .line 33
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result p4

    .line 37
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 38
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 40
    sub-int/2addr p3, p1

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move p4, p2

    .line 48
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 49
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    .line 55
    move-result p1

    .line 58
    add-int/2addr p1, p4

    .line 59
    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 60
    add-int/2addr p3, p1

    .line 62
    sub-int/2addr p3, p4

    .line 63
    sub-int/2addr p3, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    .line 66
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    .line 70
    move-result p3

    .line 73
    sub-int/2addr p1, p3

    .line 74
    sub-int p3, p1, p2

    .line 75
    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 77
    sub-int p1, p3, p1

    .line 79
    add-int/2addr p1, p4

    .line 81
    add-int/2addr p1, p2

    .line 82
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    .line 83
    move-result p2

    .line 86
    and-int/lit8 p2, p2, 0x70

    .line 87
    const/16 p4, 0x10

    .line 89
    if-eq p2, p4, :cond_4

    .line 91
    const/16 p4, 0x50

    .line 93
    if-eq p2, p4, :cond_3

    .line 95
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    .line 97
    move-result p2

    .line 100
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 101
    add-int/2addr p4, p2

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    .line 105
    move-result p2

    .line 108
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    .line 109
    move-result p4

    .line 112
    sub-int p4, p2, p4

    .line 113
    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 115
    sub-int p2, p4, p2

    .line 117
    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    .line 120
    move-result p2

    .line 123
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    .line 124
    move-result p4

    .line 127
    add-int/2addr p4, p2

    .line 128
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    .line 129
    move-result p2

    .line 132
    sub-int/2addr p4, p2

    .line 133
    div-int/lit8 p4, p4, 0x2

    .line 134
    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 136
    div-int/lit8 p5, p2, 0x2

    .line 138
    sub-int/2addr p4, p5

    .line 140
    add-int/2addr p2, p4

    .line 141
    move v0, p4

    .line 142
    move p4, p2

    .line 143
    move p2, v0

    .line 144
    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 145
    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 147
    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 149
    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 151
    return-void
    .line 153
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOnTransformed:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOffTransformed:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 30
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 37
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 42
    move-result v1

    .line 45
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 46
    sub-int/2addr v1, v3

    .line 48
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 49
    sub-int/2addr v1, v3

    .line 51
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 54
    move-result v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v1, v2

    .line 59
    move v3, v1

    .line 60
    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 61
    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 65
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    .line 67
    move-result v4

    .line 70
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 71
    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    .line 73
    move-result v5

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v4

    .line 80
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 81
    mul-int/lit8 v5, v5, 0x2

    .line 83
    add-int/2addr v5, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v5, v2

    .line 87
    :goto_1
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 88
    move-result v1

    .line 91
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 92
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 98
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 103
    move-result v2

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 108
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 111
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 113
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    if-eqz v4, :cond_5

    .line 117
    invoke-static {v4}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    .line 119
    move-result-object v4

    .line 122
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 123
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result v1

    .line 128
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 129
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result v0

    .line 134
    :cond_5
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mEnforceSwitchWidth:Z

    .line 135
    if-eqz v4, :cond_6

    .line 137
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 139
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 141
    mul-int/lit8 v5, v5, 0x2

    .line 143
    add-int/2addr v5, v1

    .line 145
    add-int/2addr v5, v0

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 147
    move-result v0

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 152
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 154
    move-result v1

    .line 157
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 158
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    .line 165
    move-result p1

    .line 168
    if-ge p1, v1, :cond_7

    .line 169
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I

    .line 171
    move-result p1

    .line 174
    invoke-virtual {p0, p1, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    .line 175
    :cond_7
    return-void
    .line 178
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_12

    .line 13
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    if-eq v0, v2, :cond_a

    .line 18
    if-eq v0, v5, :cond_0

    .line 20
    if-eq v0, v3, :cond_a

    .line 22
    goto/16 :goto_6

    .line 24
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 26
    if-eq v0, v2, :cond_8

    .line 28
    if-eq v0, v5, :cond_1

    .line 30
    goto/16 :goto_6

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result p1

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 42
    sub-float v1, p1, v1

    .line 44
    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    if-eqz v0, :cond_2

    .line 48
    int-to-float v0, v0

    .line 50
    div-float/2addr v1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    cmpl-float v0, v1, v4

    .line 53
    if-lez v0, :cond_3

    .line 55
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    .line 59
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    neg-float v1, v1

    .line 67
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 68
    add-float/2addr v1, v0

    .line 70
    cmpg-float v5, v1, v4

    .line 71
    if-gez v5, :cond_5

    .line 73
    goto :goto_1

    .line 75
    :cond_5
    cmpl-float v4, v1, v3

    .line 76
    if-lez v4, :cond_6

    .line 78
    move v4, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    move v4, v1

    .line 82
    :goto_1
    cmpl-float v0, v4, v0

    .line 83
    if-eqz v0, :cond_7

    .line 85
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 87
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 89
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 91
    :cond_7
    return v2

    .line 94
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 95
    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    move-result v1

    .line 102
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 103
    sub-float v3, v0, v3

    .line 105
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 107
    move-result v3

    .line 110
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 111
    int-to-float v4, v4

    .line 113
    cmpl-float v3, v3, v4

    .line 114
    if-gtz v3, :cond_9

    .line 116
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 118
    sub-float v3, v1, v3

    .line 120
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 122
    move-result v3

    .line 125
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 126
    int-to-float v4, v4

    .line 128
    cmpl-float v3, v3, v4

    .line 129
    if-lez v3, :cond_15

    .line 131
    :cond_9
    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 133
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    .line 135
    move-result-object p1

    .line 138
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 139
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 142
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 144
    return v2

    .line 146
    :cond_a
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 147
    if-ne v0, v5, :cond_11

    .line 149
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 153
    move-result v0

    .line 156
    if-ne v0, v2, :cond_b

    .line 157
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 159
    move-result v0

    .line 162
    if-eqz v0, :cond_b

    .line 163
    move v0, v2

    .line 165
    goto :goto_2

    .line 166
    :cond_b
    move v0, v1

    .line 167
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 168
    move-result v5

    .line 171
    if-eqz v0, :cond_f

    .line 172
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 174
    const/16 v6, 0x3e8

    .line 176
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 181
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 183
    move-result v0

    .line 186
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 187
    move-result v6

    .line 190
    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 191
    int-to-float v7, v7

    .line 193
    cmpl-float v6, v6, v7

    .line 194
    if-lez v6, :cond_e

    .line 196
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 198
    move-result v6

    .line 201
    if-eqz v6, :cond_c

    .line 202
    cmpg-float v0, v0, v4

    .line 204
    if-gez v0, :cond_d

    .line 206
    goto :goto_3

    .line 208
    :cond_c
    cmpl-float v0, v0, v4

    .line 209
    if-lez v0, :cond_d

    .line 211
    :goto_3
    move v0, v2

    .line 213
    goto :goto_4

    .line 214
    :cond_d
    move v0, v1

    .line 215
    goto :goto_4

    .line 216
    :cond_e
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    .line 217
    move-result v0

    .line 220
    goto :goto_4

    .line 221
    :cond_f
    move v0, v5

    .line 222
    :goto_4
    if-eq v0, v5, :cond_10

    .line 223
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 225
    :cond_10
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 228
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 231
    move-result-object v0

    .line 234
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 235
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    return v2

    .line 247
    :cond_11
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 248
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 250
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 252
    goto :goto_6

    .line 255
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 256
    move-result v0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 260
    move-result v3

    .line 263
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 264
    move-result v4

    .line 267
    if-eqz v4, :cond_15

    .line 268
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    if-nez v4, :cond_13

    .line 272
    goto :goto_5

    .line 274
    :cond_13
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    .line 275
    move-result v4

    .line 278
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 281
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 283
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 286
    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 288
    sub-int/2addr v5, v6

    .line 290
    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 291
    add-int/2addr v7, v4

    .line 293
    sub-int/2addr v7, v6

    .line 294
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 295
    add-int/2addr v4, v7

    .line 297
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 298
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 300
    add-int/2addr v4, v9

    .line 302
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 303
    add-int/2addr v4, v8

    .line 305
    add-int/2addr v4, v6

    .line 306
    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 307
    add-int/2addr v8, v6

    .line 309
    int-to-float v6, v7

    .line 310
    cmpl-float v6, v0, v6

    .line 311
    if-lez v6, :cond_14

    .line 313
    int-to-float v4, v4

    .line 315
    cmpg-float v4, v0, v4

    .line 316
    if-gez v4, :cond_14

    .line 318
    int-to-float v4, v5

    .line 320
    cmpl-float v4, v3, v4

    .line 321
    if-lez v4, :cond_14

    .line 323
    int-to-float v4, v8

    .line 325
    cmpg-float v4, v3, v4

    .line 326
    if-gez v4, :cond_14

    .line 328
    move v1, v2

    .line 330
    :cond_14
    :goto_5
    if-eqz v1, :cond_15

    .line 331
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 333
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 335
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 337
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    move-result p0

    .line 342
    return p0
    .line 343
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setAllCaps(Z)V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setAllCaps(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public setChecked(Z)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 5
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f130014    # @string/abc_capital_on 'ON'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 26
    new-instance v1, Landroidx/core/view/ViewCompat$1;

    .line 28
    const v3, 0x7f0a095d    # @id/tag_state_description

    .line 30
    const-class v4, Ljava/lang/CharSequence;

    .line 33
    const/16 v5, 0x40

    .line 35
    const/16 v6, 0x1e

    .line 37
    const/4 v7, 0x2

    .line 39
    move-object v2, v1

    .line 40
    invoke-direct/range {v2 .. v7}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 41
    invoke-virtual {v1, p0, v0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 48
    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v0

    .line 55
    const v1, 0x7f130013    # @string/abc_capital_off 'OFF'

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    :cond_2
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 63
    new-instance v1, Landroidx/core/view/ViewCompat$1;

    .line 65
    const v3, 0x7f0a095d    # @id/tag_state_description

    .line 67
    const-class v4, Ljava/lang/CharSequence;

    .line 70
    const/16 v5, 0x40

    .line 72
    const/16 v6, 0x1e

    .line 74
    const/4 v7, 0x2

    .line 76
    move-object v2, v1

    .line 77
    invoke-direct/range {v2 .. v7}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 78
    invoke-virtual {v1, p0, v0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWindowToken()Landroid/os/IBinder;

    .line 84
    move-result-object v0

    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    const/4 v2, 0x0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    if-eqz p1, :cond_3

    .line 99
    goto :goto_1

    .line 101
    :cond_3
    move v1, v2

    .line 102
    :goto_1
    sget-object p1, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroidx/appcompat/widget/SwitchCompat$1;

    .line 103
    const/4 v0, 0x1

    .line 105
    new-array v2, v0, [F

    .line 106
    const/4 v3, 0x0

    .line 108
    aput v1, v2, v3

    .line 109
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 111
    move-result-object p1

    .line 114
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 115
    const-wide/16 v1, 0xfa

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 122
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 124
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 127
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    goto :goto_3

    .line 132
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 133
    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 137
    :cond_5
    if-eqz p1, :cond_6

    .line 140
    goto :goto_2

    .line 142
    :cond_6
    move v1, v2

    .line 143
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 144
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 146
    :goto_3
    return-void
    .line 149
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 2
    return-void
    .line 5
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 19
    return-void
    .line 22
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 6
    move-result-object p1

    .line 9
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    return-void
    .line 13
.end method

.method public setShowText(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p2

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-static {v1, p1}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 22
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 29
    move-result-object p1

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 42
    :goto_1
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    int-to-float p1, p1

    .line 50
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 51
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    .line 53
    move-result v1

    .line 56
    cmpl-float v1, p1, v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 61
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 66
    :cond_2
    const/4 p1, 0x1

    .line 69
    const/4 v1, -0x1

    .line 70
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 71
    move-result v3

    .line 74
    const/4 v4, 0x2

    .line 75
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 76
    move-result v1

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eq v3, p1, :cond_5

    .line 81
    if-eq v3, v4, :cond_4

    .line 83
    if-eq v3, v0, :cond_3

    .line 85
    move-object p1, v5

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 89
    goto :goto_2

    .line 91
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 92
    goto :goto_2

    .line 94
    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 95
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 97
    const/16 p1, 0xe

    .line 100
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 102
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    new-instance p1, Landroidx/appcompat/text/AllCapsTransformationMethod;

    .line 108
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v0

    .line 113
    invoke-direct {p1, v0}, Landroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroidx/appcompat/text/AllCapsTransformationMethod;

    .line 117
    goto :goto_3

    .line 119
    :cond_6
    iput-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroidx/appcompat/text/AllCapsTransformationMethod;

    .line 120
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
    .line 135
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 11
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 6
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 14
    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const v0, 0x7f130013    # @string/abc_capital_off 'OFF'

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    .line 31
    const v2, 0x7f0a095d    # @id/tag_state_description

    .line 33
    const-class v3, Ljava/lang/CharSequence;

    .line 36
    const/16 v4, 0x40

    .line 38
    const/16 v5, 0x1e

    .line 40
    const/4 v6, 0x2

    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v6}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 44
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final setTextOffInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroidx/appcompat/text/AllCapsTransformationMethod;

    .line 8
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 10
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 23
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOffTransformed:Ljava/lang/CharSequence;

    .line 24
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 27
    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 14
    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const v0, 0x7f130014    # @string/abc_capital_on 'ON'

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    .line 31
    const v2, 0x7f0a095d    # @id/tag_state_description

    .line 33
    const-class v3, Ljava/lang/CharSequence;

    .line 36
    const/16 v4, 0x40

    .line 38
    const/16 v5, 0x1e

    .line 40
    const/4 v6, 0x2

    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v6}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;III)V

    .line 44
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final setTextOnInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroidx/appcompat/text/AllCapsTransformationMethod;

    .line 8
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 10
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 23
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTextOnTransformed:Ljava/lang/CharSequence;

    .line 24
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 27
    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->setupEmojiCompatLoadCallback()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 17
    return-void
    .line 20
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 7
    return-void
    .line 10
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 7
    return-void
    .line 10
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 17
    return-void
    .line 20
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 7
    return-void
    .line 10
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 7
    return-void
    .line 10
.end method

.method public final setupEmojiCompatLoadCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    .line 2
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 8
    iget-object v0, v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->mHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;

    .line 10
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal;->isEnabled()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 32
    move-result v1

    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    if-nez v1, :cond_3

    .line 39
    :cond_2
    new-instance v1, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    .line 41
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    .line 43
    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mEmojiCompatInitCallback:Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    .line 48
    :cond_3
    :goto_1
    return-void
    .line 51
.end method

.method public final toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    if-ne p1, p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method
