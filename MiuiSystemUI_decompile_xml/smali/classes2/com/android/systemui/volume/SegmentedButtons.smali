.class public Lcom/android/systemui/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MEDIUM:Landroid/graphics/Typeface;

.field public static final REGULAR:Landroid/graphics/Typeface;


# instance fields
.field public mSelectedValue:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sans-serif"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    .line 9
    const-string v0, "sans-serif-medium"

    .line 11
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 13
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    .line 17
    return-void
    .line 19
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    new-instance p0, Lcom/android/systemui/volume/ConfigurableTexts;

    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public getSelectedValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 11
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 14
    move-result p2

    .line 17
    if-ge p1, p2, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 23
    check-cast p2, Landroid/widget/TextView;

    .line 24
    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 36
    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    .line 44
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    return-void
    .line 52
.end method
