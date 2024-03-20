.class public abstract Lmiuix/internal/util/TaggingDrawableUtil;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final STATES_TAGS:[I

.field public static final STATE_SET_FIRST:[I

.field public static final STATE_SET_LAST:[I

.field public static final STATE_SET_MIDDLE:[I

.field public static final STATE_SET_SINGLE:[I

.field public static mPaddingLarge:I = -0x1

.field public static mPaddingSingle:I = -0x1

.field public static mPaddingSmall:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x10100a3    # @android:attr/state_single

    .line 2
    const v1, 0x10100a4    # @android:attr/state_first

    .line 5
    const v2, 0x10100a5    # @android:attr/state_middle

    .line 8
    const v3, 0x10100a6    # @android:attr/state_last

    .line 11
    filled-new-array {v0, v1, v2, v3}, [I

    .line 14
    move-result-object v4

    .line 17
    sput-object v4, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 18
    filled-new-array {v0}, [I

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    .line 24
    filled-new-array {v1}, [I

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    .line 30
    filled-new-array {v2}, [I

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 36
    filled-new-array {v3}, [I

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    .line 42
    return-void
    .line 44
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .locals 11

    .line 1
    if-eqz p0, :cond_8

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_4

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 11
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 17
    sget-object v3, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 19
    sget v4, Lmiuix/internal/graphics/drawable/TaggingDrawable;->$r8$clinit:I

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    .line 23
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    if-ge v6, v4, :cond_3

    .line 29
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    .line 31
    move-result-object v7

    .line 34
    array-length v8, v7

    .line 35
    move v9, v5

    .line 36
    :goto_1
    if-ge v9, v8, :cond_2

    .line 37
    aget v10, v7, v9

    .line 39
    invoke-static {v3, v10}, Ljava/util/Arrays;->binarySearch([II)I

    .line 41
    move-result v10

    .line 44
    if-ltz v10, :cond_1

    .line 45
    move v5, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 55
    new-instance v1, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 57
    invoke-direct {v1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    move-object v0, v1

    .line 65
    :cond_4
    instance-of v1, v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 66
    if-eqz v1, :cond_8

    .line 68
    check-cast v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    .line 70
    if-ne p2, v2, :cond_5

    .line 72
    sget-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    .line 74
    goto :goto_3

    .line 76
    :cond_5
    if-nez p1, :cond_6

    .line 77
    sget-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    .line 79
    goto :goto_3

    .line 81
    :cond_6
    add-int/lit8 v1, p2, -0x1

    .line 82
    if-ne p1, v1, :cond_7

    .line 84
    sget-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    .line 86
    goto :goto_3

    .line 88
    :cond_7
    sget-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 89
    :goto_3
    invoke-virtual {v0, v1}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)V

    .line 91
    :cond_8
    :goto_4
    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 94
    return-void
    .line 97
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .locals 7

    .line 1
    if-eqz p0, :cond_8

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 19
    move-result v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    const/4 v3, 0x1

    .line 26
    const/4 v4, -0x1

    .line 27
    if-ne p2, v3, :cond_2

    .line 28
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 30
    if-ne p1, v4, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 37
    const p2, 0x7f070aae    # @dimen/miuix_appcompat_drop_down_menu_padding_single_item '16.0dp'

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result p1

    .line 44
    sput p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 45
    :cond_1
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 50
    if-ne v5, v4, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v5

    .line 57
    const v6, 0x7f070aaf    # @dimen/miuix_appcompat_drop_down_menu_padding_small '12.0dp'

    .line 58
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result v5

    .line 64
    sput v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 65
    :cond_3
    sget v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 67
    if-ne v5, v4, :cond_4

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v4

    .line 74
    const v5, 0x7f070aad    # @dimen/miuix_appcompat_drop_down_menu_padding_large '20.0dp'

    .line 75
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    move-result v4

    .line 81
    sput v4, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 82
    :cond_4
    if-nez p1, :cond_5

    .line 84
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 86
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 88
    goto :goto_1

    .line 90
    :cond_5
    sub-int/2addr p2, v3

    .line 91
    if-ne p1, p2, :cond_6

    .line 92
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 94
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 96
    goto :goto_1

    .line 98
    :cond_6
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 99
    :goto_0
    move p2, p1

    .line 101
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result v3

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v0

    .line 109
    const v4, 0x7f070aa9    # @dimen/miuix_appcompat_drop_down_item_min_height '50.0dp'

    .line 110
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 113
    move-result v0

    .line 116
    if-lez v3, :cond_7

    .line 117
    if-ge v3, v0, :cond_7

    .line 119
    sub-int/2addr v0, v3

    .line 121
    div-int/lit8 v0, v0, 0x2

    .line 122
    add-int/2addr p1, v0

    .line 124
    add-int/2addr p2, v0

    .line 125
    :cond_7
    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 126
    :cond_8
    :goto_2
    return-void
    .line 129
.end method
