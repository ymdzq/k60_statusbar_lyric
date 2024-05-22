.class public final Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;
.super Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    .line 5
    const v1, 0x7f040285    # @attr/dropdownPreferenceStyle

    .line 7
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p2, v0, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 20
    const/4 v0, 0x4

    .line 22
    invoke-static {p2, v0, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->mValues:[Ljava/lang/CharSequence;

    .line 27
    const/4 v0, 0x3

    .line 29
    invoke-static {p2, v0, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 34
    const/4 v0, 0x2

    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    const/4 p2, 0x0

    .line 45
    if-lez v0, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 56
    move-result v0

    .line 59
    new-array v0, v0, [I

    .line 60
    move v1, v2

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 63
    move-result v3

    .line 66
    if-ge v1, v3, :cond_0

    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 69
    move-result v3

    .line 72
    aput v3, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    goto :goto_1

    .line 81
    :cond_1
    move-object v0, p2

    .line 82
    :goto_1
    if-nez v0, :cond_2

    .line 83
    iput-object p2, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 85
    goto :goto_4

    .line 87
    :cond_2
    array-length p1, v0

    .line 88
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v1

    .line 98
    :goto_2
    array-length v3, v0

    .line 99
    if-ge v2, v3, :cond_4

    .line 100
    aget v3, v0, v2

    .line 102
    if-lez v3, :cond_3

    .line 104
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object v3

    .line 109
    aput-object v3, p1, v2

    .line 110
    goto :goto_3

    .line 112
    :cond_3
    aput-object p2, p1, v2

    .line 113
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_2

    .line 117
    :cond_4
    iput-object p1, p0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 118
    :goto_4
    return-void
    .line 120
.end method
