.class public final Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHighlightColor:I

.field public final mIndexerTextSize:I

.field public final mIndexes:[Ljava/lang/String;

.field public final mNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    array-length v3, v1

    .line 17
    new-array v3, v3, [Ljava/lang/String;

    .line 18
    iput-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 20
    array-length v3, v1

    .line 22
    move v4, v2

    .line 23
    move v5, v4

    .line 24
    :goto_0
    if-ge v4, v3, :cond_1

    .line 25
    aget-object v6, v1, v4

    .line 27
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 29
    add-int/lit8 v8, v5, 0x1

    .line 31
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 36
    aput-object v6, v7, v5

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 39
    move v5, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const v1, 0x7f030002    # @array/alphabet_table

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 50
    :cond_1
    const/4 v1, 0x4

    .line 52
    const v3, 0x7f06042d    # @color/miuix_appcompat_alphabet_indexer_text_light 'res/color/miuix_appcompat_alphabet_indexer_text_light.xml'

    .line 53
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 56
    move-result v1

    .line 59
    invoke-static {v1, p1}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 60
    move-result-object p1

    .line 63
    const v1, 0x10100a1    # @android:attr/state_selected

    .line 64
    filled-new-array {v1}, [I

    .line 67
    move-result-object v1

    .line 70
    const v3, 0x7f060422    # @color/miuix_appcompat_alphabet_indexer_highlight_text_color '@color/miuix_color_blue_light_primary_default'

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 74
    move-result v3

    .line 77
    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 78
    move-result v1

    .line 81
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mHighlightColor:I

    .line 82
    const v1, 0x10102fe    # @android:attr/state_activated

    .line 84
    filled-new-array {v1}, [I

    .line 87
    move-result-object v1

    .line 90
    const v3, 0x7f06041e    # @color/miuix_appcompat_alphabet_indexer_activated_text_color '#99000000'

    .line 91
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 94
    move-result v3

    .line 97
    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 98
    new-array v1, v2, [I

    .line 101
    const v2, 0x7f06042a    # @color/miuix_appcompat_alphabet_indexer_text_color '#66000000'

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 106
    move-result v2

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 110
    move-result p1

    .line 113
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 114
    const p1, 0x7f070a29    # @dimen/miuix_appcompat_alphabet_indexer_text_size '8.0dp'

    .line 116
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    move-result p1

    .line 122
    const/4 v0, 0x5

    .line 123
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 124
    move-result p1

    .line 127
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    .line 128
    return-void
    .line 130
.end method
