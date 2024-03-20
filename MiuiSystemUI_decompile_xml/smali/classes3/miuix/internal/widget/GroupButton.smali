.class public Lmiuix/internal/widget/GroupButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final STATE_FIRST_H:[I

.field public static final STATE_FIRST_V:[I

.field public static final STATE_LAST_H:[I

.field public static final STATE_LAST_V:[I

.field public static final STATE_MIDDLE_H:[I

.field public static final STATE_MIDDLE_V:[I

.field public static final STATE_SINGLE_H:[I


# instance fields
.field public mButtonSelectorBackground:Landroid/graphics/drawable/Drawable;

.field public mButtonSelectorBackgroundResId:I

.field public mPrimary:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f040708    # @attr/state_first_v

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    .line 9
    const v0, 0x7f04070f    # @attr/state_middle_v

    .line 11
    filled-new-array {v0}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    .line 18
    const v0, 0x7f04070a    # @attr/state_last_v

    .line 20
    filled-new-array {v0}, [I

    .line 23
    move-result-object v0

    .line 26
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    .line 27
    const v0, 0x7f040707    # @attr/state_first_h

    .line 29
    filled-new-array {v0}, [I

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    .line 36
    const v0, 0x7f04070e    # @attr/state_middle_h

    .line 38
    filled-new-array {v0}, [I

    .line 41
    move-result-object v0

    .line 44
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    .line 45
    const v0, 0x7f040709    # @attr/state_last_h

    .line 47
    filled-new-array {v0}, [I

    .line 50
    move-result-object v0

    .line 53
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    .line 54
    const v0, 0x7f040713    # @attr/state_single_h

    .line 56
    filled-new-array {v0}, [I

    .line 59
    move-result-object v0

    .line 62
    sput-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    .line 63
    return-void
    .line 65
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lmiuix/appcompat/R$styleable;->GroupButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/GroupButton;->mButtonSelectorBackgroundResId:I

    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/internal/widget/GroupButton;->mPrimary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    throw p0
.end method


# virtual methods
.method public getButtonSelectorBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/widget/GroupButton;->mButtonSelectorBackground:Landroid/graphics/drawable/Drawable;

    .line 6
    if-nez v1, :cond_0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget v1, p0, Lmiuix/internal/widget/GroupButton;->mButtonSelectorBackgroundResId:I

    .line 12
    if-eqz v1, :cond_0

    .line 14
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lmiuix/internal/widget/GroupButton;->mButtonSelectorBackground:Landroid/graphics/drawable/Drawable;

    .line 22
    :cond_0
    iget-object p0, p0, Lmiuix/internal/widget/GroupButton;->mButtonSelectorBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    return-object p0
    .line 26
.end method

.method public final onCreateDrawableState(I)[I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 15
    if-eqz v1, :cond_e

    .line 17
    move-object v1, v0

    .line 19
    check-cast v1, Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 26
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    move v5, v3

    .line 32
    move v6, v5

    .line 33
    move v7, v4

    .line 34
    move v8, v7

    .line 35
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    move-result v9

    .line 39
    if-ge v5, v9, :cond_3

    .line 40
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v9

    .line 45
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 46
    move-result v9

    .line 49
    if-nez v9, :cond_2

    .line 50
    add-int/lit8 v6, v6, 0x1

    .line 52
    if-ge v5, v2, :cond_1

    .line 54
    move v7, v3

    .line 56
    :cond_1
    if-le v5, v2, :cond_2

    .line 57
    move v8, v3

    .line 59
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    if-ne v6, v4, :cond_4

    .line 63
    move v3, v4

    .line 65
    :cond_4
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_SINGLE_H:[I

    .line 66
    if-ne v1, v4, :cond_8

    .line 68
    add-int/lit8 p1, p1, 0x2

    .line 70
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    .line 72
    move-result-object p0

    .line 75
    invoke-static {p0, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 76
    if-nez v3, :cond_7

    .line 79
    if-eqz v7, :cond_5

    .line 81
    sget-object p1, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_V:[I

    .line 83
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 85
    goto :goto_1

    .line 88
    :cond_5
    if-eqz v8, :cond_6

    .line 89
    sget-object p1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_V:[I

    .line 91
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 93
    goto :goto_1

    .line 96
    :cond_6
    sget-object p1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_V:[I

    .line 97
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 99
    :cond_7
    :goto_1
    return-object p0

    .line 102
    :cond_8
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 103
    move-result v1

    .line 106
    add-int/2addr p1, v4

    .line 107
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    .line 108
    move-result-object p0

    .line 111
    if-eqz v3, :cond_9

    .line 112
    invoke-static {p0, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 114
    goto :goto_3

    .line 117
    :cond_9
    sget-object p1, Lmiuix/internal/widget/GroupButton;->STATE_LAST_H:[I

    .line 118
    sget-object v0, Lmiuix/internal/widget/GroupButton;->STATE_FIRST_H:[I

    .line 120
    if-eqz v7, :cond_b

    .line 122
    if-eqz v1, :cond_a

    .line 124
    goto :goto_2

    .line 126
    :cond_a
    move-object p1, v0

    .line 127
    :goto_2
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 128
    goto :goto_3

    .line 131
    :cond_b
    if-eqz v8, :cond_d

    .line 132
    if-eqz v1, :cond_c

    .line 134
    move-object p1, v0

    .line 136
    :cond_c
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 137
    goto :goto_3

    .line 140
    :cond_d
    sget-object p1, Lmiuix/internal/widget/GroupButton;->STATE_MIDDLE_H:[I

    .line 141
    invoke-static {p0, p1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 143
    :goto_3
    return-object p0

    .line 146
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    .line 147
    move-result-object p0

    .line 150
    return-object p0
    .line 151
.end method
