.class public Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mFixedHeightMajor:Landroid/util/TypedValue;

.field public mFixedHeightMinor:Landroid/util/TypedValue;

.field public mFixedWidthMajor:Landroid/util/TypedValue;

.field public mFixedWidthMinor:Landroid/util/TypedValue;

.field public mFloatingTheme:Z

.field public mIsInDialogMode:Z

.field public mMaxHeightMajor:Landroid/util/TypedValue;

.field public mMaxHeightMinor:Landroid/util/TypedValue;

.field public mMaxWidthMajor:Landroid/util/TypedValue;

.field public mMaxWidthMinor:Landroid/util/TypedValue;

.field public mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 8
    new-instance v1, Landroid/graphics/Point;

    .line 10
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 12
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 25
    new-instance v1, Landroid/graphics/Point;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 29
    invoke-static {p1, v1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 32
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 35
    if-nez p2, :cond_0

    .line 37
    goto/16 :goto_0

    .line 39
    :cond_0
    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 43
    move-result-object p1

    .line 46
    const/16 p2, 0x16

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Landroid/util/TypedValue;

    .line 55
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 57
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 62
    :cond_1
    const/16 p2, 0x13

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Landroid/util/TypedValue;

    .line 73
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 75
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 78
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 80
    :cond_2
    const/16 p2, 0x15

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    new-instance v1, Landroid/util/TypedValue;

    .line 91
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 93
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 96
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 98
    :cond_3
    const/16 p2, 0x14

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 103
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    new-instance v1, Landroid/util/TypedValue;

    .line 109
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 114
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 116
    :cond_4
    const/16 p2, 0x1c

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 121
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    new-instance v1, Landroid/util/TypedValue;

    .line 127
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 129
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 132
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 134
    :cond_5
    const/16 p2, 0x1b

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    new-instance v1, Landroid/util/TypedValue;

    .line 145
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 147
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 150
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 152
    :cond_6
    const/16 p2, 0x19

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 157
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 161
    new-instance v1, Landroid/util/TypedValue;

    .line 163
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 165
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 168
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 170
    :cond_7
    const/16 p2, 0x1a

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 175
    move-result v1

    .line 178
    if-eqz v1, :cond_8

    .line 179
    new-instance v1, Landroid/util/TypedValue;

    .line 181
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 183
    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 186
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 188
    :cond_8
    const/16 p2, 0xa

    .line 191
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 193
    move-result p2

    .line 196
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    :goto_0
    return-void
    .line 202
.end method


# virtual methods
.method public final getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    if-ne v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 24
    const/4 v2, 0x1

    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    move-object p3, p4

    .line 34
    :goto_1
    invoke-virtual {p0, p3, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 35
    move-result p3

    .line 38
    if-lez p3, :cond_2

    .line 39
    const/high16 p0, 0x40000000    # 2.0f

    .line 41
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    move-result p1

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    if-eqz v2, :cond_3

    .line 48
    goto :goto_2

    .line 50
    :cond_3
    move-object p5, p6

    .line 51
    :goto_2
    invoke-virtual {p0, p5, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    .line 52
    move-result p0

    .line 55
    if-lez p0, :cond_4

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 58
    move-result p1

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result p0

    .line 65
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    move-result p1

    .line 69
    :cond_4
    :goto_3
    return p1
    .line 70
.end method

.method public final onConfigurationChanged()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    instance-of v0, v1, Landroid/view/ContextThemeWrapper;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move-object v0, v1

    .line 12
    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v2

    .line 18
    const-string v3, "getThemeResId"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    const/4 v4, 0x0

    .line 21
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :try_start_2
    invoke-static {v0, v2, v4}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/RuntimeException;

    .line 42
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    :catch_1
    move-exception v0

    .line 48
    const-string v2, "FloatingABOLayoutSpec"

    .line 49
    const-string v3, "catch theme resource get exception"

    .line 51
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    if-lez v0, :cond_0

    .line 57
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 64
    invoke-direct {v2, v1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 65
    move-object v1, v2

    .line 68
    :cond_0
    const v0, 0x7f0408c6    # @attr/windowFixedWidthMinor

    .line 69
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 72
    move-result-object v0

    .line 75
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 76
    const v0, 0x7f0408c3    # @attr/windowFixedHeightMajor

    .line 78
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 81
    move-result-object v0

    .line 84
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 85
    const v0, 0x7f0408c5    # @attr/windowFixedWidthMajor

    .line 87
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 90
    move-result-object v0

    .line 93
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 94
    const v0, 0x7f0408c4    # @attr/windowFixedHeightMinor

    .line 96
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 99
    move-result-object v0

    .line 102
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 103
    const v0, 0x7f0408cc    # @attr/windowMaxWidthMinor

    .line 105
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 108
    move-result-object v0

    .line 111
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 112
    const v0, 0x7f0408cb    # @attr/windowMaxWidthMajor

    .line 114
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 117
    move-result-object v0

    .line 120
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 121
    const v0, 0x7f0408ca    # @attr/windowMaxHeightMinor

    .line 123
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 126
    move-result-object v0

    .line 129
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 130
    const v0, 0x7f0408c9    # @attr/windowMaxHeightMajor

    .line 132
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;

    .line 135
    move-result-object v0

    .line 138
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    move-result-object v0

    .line 148
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 149
    new-instance v0, Landroid/graphics/Point;

    .line 151
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 153
    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 156
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 159
    return-void
    .line 161
.end method

.method public final resolveDimension(Landroid/util/TypedValue;Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 4
    if-eqz v0, :cond_2

    .line 6
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 11
    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 13
    move-result p0

    .line 16
    :goto_0
    float-to-int p0, p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 22
    if-eqz p2, :cond_1

    .line 24
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 29
    :goto_1
    int-to-float p0, p0

    .line 31
    invoke-virtual {p1, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 32
    move-result p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    :goto_2
    return p0
    .line 38
.end method
