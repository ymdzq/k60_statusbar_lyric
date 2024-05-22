.class public Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mChronometerView:Landroid/widget/Chronometer;

.field public mProgressAnimator:Landroid/animation/ValueAnimator;

.field public final mProgressBackView:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    move-result-object p1

    .line 17
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 18
    const-string p3, "miui.focus.chronometerId"

    .line 20
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 22
    move-result p2

    .line 25
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 26
    const-string p3, "miui.focus.backprogressId"

    .line 28
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 33
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 34
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p2

    .line 39
    check-cast p2, Landroid/widget/Chronometer;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mChronometerView:Landroid/widget/Chronometer;

    .line 42
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/ProgressBar;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressBackView:Landroid/widget/ProgressBar;

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->handleCustomView()V

    .line 54
    return-void
    .line 57
.end method


# virtual methods
.method public final getCustomViewMargin()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 14
    const-string v1, "miui.customHideBorder"

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    return v2

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p0

    .line 31
    const v0, 0x7f070d91    # @dimen/notification_custom_view_margin '9.82dp'

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final getExtraMeasureHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->getCustomViewMargin()I

    .line 2
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x2

    .line 6
    return p0
    .line 8
.end method

.method public final handleCustomView()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->setCustomViewMargin()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 11
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 13
    move-result-object v5

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mChronometerView:Landroid/widget/Chronometer;

    .line 17
    if-eqz v0, :cond_4

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressBackView:Landroid/widget/ProgressBar;

    .line 21
    if-eqz v1, :cond_4

    .line 23
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 25
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    iget-object v2, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 32
    const-string v3, "miui.focus.backProgressEnable"

    .line 34
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 43
    :cond_1
    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 46
    const-string/jumbo v2, "timerType"

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 51
    move-result v1

    .line 54
    iget-object v2, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 55
    const-string/jumbo v3, "timerCurrent"

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 60
    move-result-wide v2

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 64
    move-result v4

    .line 67
    div-int v4, v1, v4

    .line 68
    int-to-long v7, v4

    .line 70
    sget-boolean v4, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 71
    if-eqz v4, :cond_2

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v9, "tickInit current="

    .line 77
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 89
    const-string v9, "FocusNotification"

    .line 90
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 95
    move-result v1

    .line 98
    const/4 v4, 0x2

    .line 99
    if-ge v1, v4, :cond_3

    .line 100
    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    move-result-wide v9

    .line 112
    mul-long/2addr v2, v7

    .line 113
    sub-long/2addr v9, v2

    .line 114
    invoke-virtual {v0, v9, v10}, Landroid/widget/Chronometer;->setBase(J)V

    .line 115
    :goto_0
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;

    .line 118
    move-object v1, v9

    .line 120
    move-object v2, p0

    .line 121
    move-wide v3, v7

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;JLandroid/app/Notification;Z)V

    .line 123
    invoke-virtual {v0, v9}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 126
    :cond_4
    :goto_1
    return-void
    .line 129
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->handleCustomView()V

    .line 2
    return-void
    .line 5
.end method

.method public setCustomViewMargin()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->getCustomViewMargin()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v1

    .line 13
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 27
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public setVisible(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    return-void
    .line 16
.end method
