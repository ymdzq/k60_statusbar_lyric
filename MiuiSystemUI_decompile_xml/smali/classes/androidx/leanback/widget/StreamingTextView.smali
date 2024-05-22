.class Landroidx/leanback/widget/StreamingTextView;
.super Landroid/widget/EditText;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field public static final STREAM_POSITION_PROPERTY:Landroidx/leanback/widget/StreamingTextView$1;


# instance fields
.field public mOneDot:Landroid/graphics/Bitmap;

.field public final mRandom:Ljava/util/Random;

.field public mStreamPosition:I

.field public mStreamingAnimation:Landroid/animation/ObjectAnimator;

.field public mTwoDot:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\S+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    new-instance v0, Landroidx/leanback/widget/StreamingTextView$1;

    .line 10
    invoke-direct {v0}, Landroidx/leanback/widget/StreamingTextView$1;-><init>()V

    .line 12
    sput-object v0, Landroidx/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroidx/leanback/widget/StreamingTextView$1;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public getStreamPosition()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 2
    return p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f08127b    # @drawable/lb_text_dot_one 'res/drawable-xhdpi/lb_text_dot_one.png'

    .line 9
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    const v2, 0x3fa66666    # 1.3f

    .line 21
    mul-float/2addr v1, v2

    .line 24
    float-to-int v1, v1

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    mul-float/2addr v3, v2

    .line 31
    float-to-int v3, v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 43
    const v1, 0x7f08127d    # @drawable/lb_text_dot_two 'res/drawable-xhdpi/lb_text_dot_two.png'

    .line 44
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 51
    move-result v1

    .line 54
    int-to-float v1, v1

    .line 55
    mul-float/2addr v1, v2

    .line 56
    float-to-int v1, v1

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    move-result v3

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v3, v2

    .line 63
    float-to-int v2, v3

    .line 64
    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Landroidx/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    .line 69
    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 72
    iget-object v0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 78
    :cond_0
    const-string v0, ""

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
    .line 86
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-string p0, "androidx.leanback.widget.StreamingTextView"

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 2
    return-void
    .line 5
.end method
