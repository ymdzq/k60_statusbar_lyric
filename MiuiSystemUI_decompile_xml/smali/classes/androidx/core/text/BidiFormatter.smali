.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

.field public static final LRM_STRING:Ljava/lang/String;

.field public static final RLM_STRING:Ljava/lang/String;


# instance fields
.field public final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;

.field public final mFlags:I

.field public final mIsRtlContext:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 2
    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 4
    const/16 v1, 0x200e

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    sput-object v1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 12
    const/16 v1, 0x200f

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    sput-object v1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 20
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 22
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 26
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 29
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 31
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 34
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 37
    return-void
    .line 39
.end method

.method public constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 5
    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    .line 7
    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;

    .line 9
    return-void
    .line 11
.end method

.method public static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 9

    .line 1
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 2
    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    const/4 p0, 0x0

    .line 7
    iput p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 8
    move v1, p0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :cond_0
    :goto_0
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 13
    iget v5, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 15
    const/4 v6, -0x1

    .line 17
    const/4 v7, 0x1

    .line 18
    if-ge v4, v5, :cond_6

    .line 19
    if-nez v1, :cond_6

    .line 21
    iget-object v5, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 23
    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    move-result v4

    .line 28
    iput-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 29
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 31
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 37
    invoke-static {v5, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 39
    move-result v4

    .line 42
    iget v5, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 43
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 45
    move-result v8

    .line 48
    add-int/2addr v8, v5

    .line 49
    iput v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 50
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(I)B

    .line 52
    move-result v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 57
    add-int/2addr v4, v7

    .line 59
    iput v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 60
    iget-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 62
    const/16 v5, 0x700

    .line 64
    if-ge v4, v5, :cond_2

    .line 66
    sget-object v5, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 68
    aget-byte v4, v5, v4

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    .line 73
    move-result v4

    .line 76
    :goto_1
    if-eqz v4, :cond_4

    .line 77
    if-eq v4, v7, :cond_3

    .line 79
    const/4 v5, 0x2

    .line 81
    if-eq v4, v5, :cond_3

    .line 82
    const/16 v5, 0x9

    .line 84
    if-eq v4, v5, :cond_0

    .line 86
    packed-switch v4, :pswitch_data_0

    .line 88
    goto :goto_2

    .line 91
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 92
    move v2, p0

    .line 94
    goto :goto_0

    .line 95
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 96
    move v2, v7

    .line 98
    goto :goto_0

    .line 99
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 100
    move v2, v6

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-nez v3, :cond_5

    .line 104
    goto :goto_4

    .line 106
    :cond_4
    if-nez v3, :cond_5

    .line 107
    goto :goto_5

    .line 109
    :cond_5
    :goto_2
    move v1, v3

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-nez v1, :cond_7

    .line 112
    goto :goto_6

    .line 114
    :cond_7
    if-eqz v2, :cond_8

    .line 115
    move p0, v2

    .line 117
    goto :goto_6

    .line 118
    :cond_8
    :goto_3
    iget v2, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 119
    if-lez v2, :cond_a

    .line 121
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    .line 123
    move-result v2

    .line 126
    packed-switch v2, :pswitch_data_1

    .line 127
    goto :goto_3

    .line 130
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto :goto_3

    .line 133
    :pswitch_4
    if-ne v1, v3, :cond_9

    .line 134
    :goto_4
    move p0, v7

    .line 136
    goto :goto_6

    .line 137
    :pswitch_5
    if-ne v1, v3, :cond_9

    .line 138
    :goto_5
    move p0, v6

    .line 140
    goto :goto_6

    .line 141
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 142
    goto :goto_3

    .line 144
    :cond_a
    :goto_6
    return p0

    .line 145
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
    .line 160
.end method

.method public static getExitDir(Ljava/lang/CharSequence;)I
    .locals 6

    .line 1
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 2
    invoke-direct {v0, p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iget p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 7
    iput p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 9
    const/4 p0, 0x0

    .line 11
    move v1, p0

    .line 12
    :goto_0
    move v2, v1

    .line 13
    :cond_0
    :goto_1
    iget v3, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 14
    if-lez v3, :cond_6

    .line 16
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_4

    .line 22
    const/4 v4, 0x1

    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    const/4 v5, 0x2

    .line 27
    if-eq v3, v5, :cond_2

    .line 28
    const/16 v5, 0x9

    .line 30
    if-eq v3, v5, :cond_0

    .line 32
    packed-switch v3, :pswitch_data_0

    .line 34
    if-nez v1, :cond_0

    .line 37
    goto :goto_4

    .line 39
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_1

    .line 42
    :pswitch_1
    if-ne v1, v2, :cond_1

    .line 43
    goto :goto_2

    .line 45
    :pswitch_2
    if-ne v1, v2, :cond_1

    .line 46
    goto :goto_3

    .line 48
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    if-nez v2, :cond_3

    .line 52
    :goto_2
    move p0, v4

    .line 54
    goto :goto_5

    .line 55
    :cond_3
    if-nez v1, :cond_0

    .line 56
    goto :goto_4

    .line 58
    :cond_4
    if-nez v2, :cond_5

    .line 59
    :goto_3
    const/4 p0, -0x1

    .line 61
    goto :goto_5

    .line 62
    :cond_5
    if-nez v1, :cond_0

    .line 63
    :goto_4
    move v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_6
    :goto_5
    return p0

    .line 67
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 68
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    sget v1, Landroidx/core/text/TextUtilsCompat;->$r8$clinit:I

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 22
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;I)Z

    move-result p2

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    iget v1, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 5
    sget-object v4, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    sget-object v5, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const-string v6, ""

    iget-boolean p0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_7

    if-eqz p2, :cond_2

    .line 6
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v1, p1, v7}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez p0, :cond_4

    if-nez v1, :cond_3

    .line 8
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v7

    if-ne v7, v2, :cond_4

    :cond_3
    move-object v1, v5

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_6

    if-eqz v1, :cond_5

    .line 9
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v3, :cond_6

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    move-object v1, v6

    .line 10
    :goto_2
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    if-eq p2, p0, :cond_9

    if-eqz p2, :cond_8

    const/16 v1, 0x202b

    goto :goto_3

    :cond_8
    const/16 v1, 0x202a

    .line 11
    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 13
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-eqz p2, :cond_a

    .line 15
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_5

    :cond_a
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 16
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-nez p0, :cond_c

    if-nez p2, :cond_b

    .line 17
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v2, :cond_c

    :cond_b
    move-object v4, v5

    goto :goto_6

    :cond_c
    if-eqz p0, :cond_d

    if-eqz p2, :cond_e

    .line 18
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, v6

    .line 19
    :cond_e
    :goto_6
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;

    invoke-virtual {p0, p1, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
