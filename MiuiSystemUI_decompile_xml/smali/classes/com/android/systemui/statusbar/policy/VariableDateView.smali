.class public final Lcom/android/systemui/statusbar/policy/VariableDateView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public freezeSwitching:Z

.field public final longerPattern:Ljava/lang/String;

.field public onMeasureListener:Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;

.field public final shorterPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 5
    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/systemui/R$styleable;->VariableDateView:[I

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p2

    .line 15
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    const v0, 0x7f130b62    # @string/system_ui_date_pattern '@android:string/zen_mode_default_events_name'

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->longerPattern:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    const v0, 0x7f13000b    # @string/abbrev_month_day_no_year 'MMMd'

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->shorterPattern:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
    .line 50
.end method


# virtual methods
.method public final getFreezeSwitching()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->freezeSwitching:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getLongerPattern()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->longerPattern:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getShorterPattern()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->shorterPattern:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    .line 6
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    .line 11
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_5

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->freezeSwitching:Z

    .line 22
    if-nez v1, :cond_5

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->onMeasureListener:Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;

    .line 26
    if-eqz v1, :cond_5

    .line 28
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController$onMeasureListener$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 30
    iget v2, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->lastWidth:I

    .line 32
    if-eq v0, v2, :cond_5

    .line 34
    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 36
    move-object v3, v2

    .line 38
    check-cast v3, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 39
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getFreezeSwitching()Z

    .line 41
    move-result v4

    .line 44
    if-nez v4, :cond_4

    .line 45
    iget v4, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->lastWidth:I

    .line 47
    if-le v0, v4, :cond_0

    .line 49
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->datePattern:Ljava/lang/String;

    .line 51
    move-object v5, v2

    .line 53
    check-cast v5, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 54
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getLongerPattern()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 59
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    :cond_0
    iget v4, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->lastWidth:I

    .line 66
    const-string v5, ""

    .line 68
    if-ge v0, v4, :cond_1

    .line 70
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->datePattern:Ljava/lang/String;

    .line 72
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->currentTime:Ljava/util/Date;

    .line 81
    move-object v6, v2

    .line 83
    check-cast v6, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 84
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getLongerPattern()Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 89
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->getFormatFromPattern(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    .line 90
    move-result-object v6

    .line 93
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->getTextForFormat(Ljava/util/Date;Landroid/icu/text/DateFormat;)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 97
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 98
    move-result-object v7

    .line 101
    invoke-static {v6, v7}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 102
    move-result v6

    .line 105
    int-to-float v7, v0

    .line 106
    cmpg-float v6, v6, v7

    .line 107
    if-gtz v6, :cond_2

    .line 109
    check-cast v2, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 111
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getLongerPattern()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->changePattern(Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    move-object v6, v2

    .line 121
    check-cast v6, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 122
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getShorterPattern()Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 127
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->getFormatFromPattern(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    .line 128
    move-result-object v6

    .line 131
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/policy/VariableDateViewControllerKt;->getTextForFormat(Ljava/util/Date;Landroid/icu/text/DateFormat;)Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 135
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 136
    move-result-object v3

    .line 139
    invoke-static {v4, v3}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 140
    move-result v3

    .line 143
    cmpg-float v3, v3, v7

    .line 144
    if-gtz v3, :cond_3

    .line 146
    check-cast v2, Lcom/android/systemui/statusbar/policy/VariableDateView;

    .line 148
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/VariableDateView;->getShorterPattern()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->changePattern(Ljava/lang/String;)V

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->changePattern(Ljava/lang/String;)V

    .line 158
    :cond_4
    :goto_0
    iput v0, v1, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->lastWidth:I

    .line 161
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 163
    return-void
    .line 166
.end method

.method public final setFreezeSwitching(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateView;->freezeSwitching:Z

    .line 2
    return-void
    .line 4
.end method
