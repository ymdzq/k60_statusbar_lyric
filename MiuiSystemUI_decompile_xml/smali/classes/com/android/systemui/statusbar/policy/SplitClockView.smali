.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAmPmView:Landroid/widget/TextClock;

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/policy/SplitClockView$1;

.field public mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    new-instance v3, Landroid/content/IntentFilter;

    .line 5
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    const-string v0, "android.intent.action.TIME_SET"

    .line 10
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 15
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 20
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 25
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 30
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    .line 39
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 41
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 48
    return-void
    .line 51
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a099a    # @id/time_view

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextClock;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 14
    const v0, 0x7f0a00b4    # @id/am_pm_view

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextClock;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 33
    invoke-virtual {p0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 35
    return-void
    .line 38
.end method

.method public final updatePatterns()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v1

    .line 21
    move v5, v3

    .line 22
    :goto_0
    const/4 v6, -0x1

    .line 23
    if-ltz v4, :cond_6

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v7

    .line 29
    const/16 v8, 0x61

    .line 30
    if-ne v7, v8, :cond_0

    .line 32
    move v8, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v8, v3

    .line 36
    :goto_1
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 37
    move-result v7

    .line 40
    if-eqz v8, :cond_1

    .line 41
    move v5, v2

    .line 43
    :cond_1
    if-nez v8, :cond_5

    .line 44
    if-eqz v7, :cond_2

    .line 46
    goto :goto_3

    .line 48
    :cond_2
    if-ne v4, v1, :cond_3

    .line 49
    goto :goto_2

    .line 51
    :cond_3
    if-eqz v5, :cond_4

    .line 52
    add-int/2addr v4, v2

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    :goto_2
    move v4, v6

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    if-eqz v5, :cond_4

    .line 61
    move v4, v3

    .line 63
    :goto_4
    if-ne v4, v6, :cond_7

    .line 64
    const-string v1, ""

    .line 66
    move-object v2, v1

    .line 68
    move-object v1, v0

    .line 69
    goto :goto_5

    .line 70
    :cond_7
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 78
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 84
    invoke-virtual {v3, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 104
    invoke-virtual {p0, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 106
    return-void
    .line 109
.end method
