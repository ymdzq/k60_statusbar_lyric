.class public Lcom/android/systemui/globalactions/GlobalActionsItem;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    const v0, 0x102000b    # @android:id/message

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/TextView;

    .line 9
    return-object p0
    .line 11
.end method


# virtual methods
.method public final isTruncated()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsItem;->getTextView()Landroid/widget/TextView;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 14
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 26
    move-result p0

    .line 29
    if-lez p0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1
    .line 34
.end method

.method public setMarquee(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsItem;->getTextView()Landroid/widget/TextView;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    return-void
    .line 19
.end method
