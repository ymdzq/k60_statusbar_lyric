.class public Lcom/android/systemui/statusbar/OperatorNameView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final update(ZZLcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    if-eqz p1, :cond_0

    .line 5
    move p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p1

    .line 18
    const-string v2, "airplane_mode_on"

    .line 19
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_1
    if-eqz p2, :cond_3

    .line 28
    if-eqz v0, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/OperatorNameView;->updateText(Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;)V

    .line 33
    return-void

    .line 36
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    return-void
    .line 44
.end method

.method public final updateText(Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    iget v1, p1, Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;->mSimState:I

    .line 10
    const/4 v2, 0x5

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v4

    .line 19
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    iget-object p1, p1, Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    move v3, v4

    .line 33
    :goto_1
    if-eqz v3, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
    .line 41
.end method
