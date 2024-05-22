.class public Lcom/android/systemui/statusbar/notification/row/NotificationInfo;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActualHeight:I

.field public mAppName:Ljava/lang/String;

.field public mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

.field public mAppUid:I

.field public mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field public mAutomaticDescriptionView:Landroid/widget/TextView;

.field public mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field public mChosenImportance:Ljava/lang/Integer;

.field public mDelegatePkg:Ljava/lang/String;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public mINotificationManager:Landroid/app/INotificationManager;

.field public mIsAutomaticChosen:Z

.field public mIsDeviceProvisioned:Z

.field public mIsNonblockable:Z

.field public mIsSingleDefaultChannel:Z

.field public mIsSystemRegisteredCall:Z

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNumUniqueChannelsInRow:I

.field public final mOnAlert:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

.field public final mOnAutomatic:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

.field public final mOnDismissSettings:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

.field public mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field public final mOnSilent:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

.field public mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

.field public mPackageName:Ljava/lang/String;

.field public mPkgIcon:Landroid/graphics/drawable/Drawable;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPresentingChannelEditorDialog:Z

.field public mPressedApply:Z

.field public mPriorityDescriptionView:Landroid/widget/TextView;

.field public mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

.field public mShowAutomaticSetting:Z

.field public mSilentDescriptionView:Landroid/widget/TextView;

.field public mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z

.field public mStartingChannelImportance:I

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUniqueChannelsInRow:Ljava/util/Set;

.field public mWasShownHighPriority:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSkipPost:Z

    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 10
    const/4 p2, 0x1

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAutomatic:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 16
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 18
    const/4 p2, 0x2

    .line 20
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 26
    const/4 p2, 0x3

    .line 28
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 32
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 34
    const/4 p2, 0x4

    .line 36
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 40
    return-void
    .line 42
.end method

.method private getAlertingBehavior()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mShowAutomaticSetting:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 6
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 18
    return p0
    .line 20
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    const/16 v0, 0x655

    .line 4
    if-nez p0, :cond_0

    .line 6
    new-instance p0, Landroid/metrics/LogMaker;

    .line 8
    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    return-object p0
    .line 22
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 16
    return-object v1

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
    .line 21
.end method

.method private getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;I)V

    .line 5
    return-object v0
    .line 8
.end method


# virtual methods
.method public final applyAlertingBehavior(IZ)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Landroid/transition/TransitionSet;

    .line 7
    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    .line 9
    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 12
    new-instance v3, Landroid/transition/Fade;

    .line 15
    invoke-direct {v3, v0}, Landroid/transition/Fade;-><init>(I)V

    .line 17
    invoke-virtual {p2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 20
    move-result-object v3

    .line 23
    new-instance v4, Landroid/transition/ChangeBounds;

    .line 24
    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    .line 26
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 29
    move-result-object v3

    .line 32
    new-instance v4, Landroid/transition/Fade;

    .line 33
    invoke-direct {v4, v1}, Landroid/transition/Fade;-><init>(I)V

    .line 35
    const-wide/16 v5, 0x96

    .line 38
    invoke-virtual {v4, v5, v6}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    .line 40
    move-result-object v4

    .line 43
    const-wide/16 v5, 0xc8

    .line 44
    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 46
    move-result-object v4

    .line 49
    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 50
    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 52
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 56
    const-wide/16 v3, 0x15e

    .line 59
    invoke-virtual {p2, v3, v4}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 61
    invoke-virtual {p2, v5}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 64
    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 67
    :cond_0
    const p2, 0x7f0a00a3    # @id/alert

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p2

    .line 76
    const v3, 0x7f0a0888    # @id/silence

    .line 77
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v3

    .line 83
    const v4, 0x7f0a00f2    # @id/automatic

    .line 84
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v4

    .line 90
    const/16 v5, 0x8

    .line 91
    if-eqz p1, :cond_3

    .line 93
    if-eq p1, v1, :cond_2

    .line 95
    if-ne p1, v0, :cond_1

    .line 97
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAutomaticDescriptionView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;

    .line 114
    invoke-direct {v5, v4, p2, v3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    const-string p2, "Unrecognized alerting behavior: "

    .line 125
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 140
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAutomaticDescriptionView:Landroid/widget/TextView;

    .line 145
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;

    .line 150
    invoke-direct {v0, p2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    .line 155
    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAutomaticDescriptionView:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;

    .line 174
    invoke-direct {v0, p2, v3, v4, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->post(Ljava/lang/Runnable;)Z

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getAlertingBehavior()I

    .line 182
    move-result p2

    .line 185
    if-eq p2, p1, :cond_4

    .line 186
    goto :goto_1

    .line 188
    :cond_4
    move v1, v2

    .line 189
    :goto_1
    const p1, 0x7f0a02eb    # @id/done

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object p0

    .line 196
    check-cast p0, Landroid/widget/TextView;

    .line 197
    if-eqz v1, :cond_5

    .line 199
    const p1, 0x7f130546    # @string/inline_ok_button 'Apply'

    .line 201
    goto :goto_2

    .line 204
    :cond_5
    const p1, 0x7f130545    # @string/inline_done_button 'Done'

    .line 205
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    return-void
    .line 211
.end method

.method public final bindInlineControls()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSystemRegisteredCall:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const v2, 0x7f130545    # @string/inline_done_button 'Done'

    .line 5
    const v3, 0x7f0a09fa    # @id/turn_off_notifications

    .line 8
    const v4, 0x7f0a02eb    # @id/done

    .line 11
    const v5, 0x7f0a044c    # @id/interruptiveness_settings

    .line 14
    const v6, 0x7f0a069d    # @id/non_configurable_multichannel_text

    .line 17
    const v7, 0x7f0a069e    # @id/non_configurable_text

    .line 20
    const v8, 0x7f0a069c    # @id/non_configurable_call_text

    .line 23
    const/4 v9, 0x0

    .line 26
    const/16 v10, 0x8

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 72
    goto :goto_0

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 76
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 104
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 121
    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 125
    if-le v0, v1, :cond_2

    .line 127
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 132
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 139
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v0

    .line 146
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object v0

    .line 153
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 161
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 168
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object v0

    .line 175
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 182
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object v0

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getTurnOffNotificationsClickListener()Landroid/view/View$OnClickListener;

    .line 190
    move-result-object v2

    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 197
    move-result v2

    .line 200
    if-eqz v2, :cond_3

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 203
    if-nez v2, :cond_3

    .line 205
    move v2, v9

    .line 207
    goto :goto_1

    .line 208
    :cond_3
    move v2, v10

    .line 209
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 213
    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 222
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    .line 224
    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 228
    const v0, 0x7f0a0888    # @id/silence

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 234
    move-result-object v0

    .line 237
    const v2, 0x7f0a00a3    # @id/alert

    .line 238
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 245
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 250
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v0, 0x7f0a00f2    # @id/automatic

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 258
    move-result-object v0

    .line 261
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mShowAutomaticSetting:Z

    .line 262
    if-eqz v2, :cond_8

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAutomaticDescriptionView:Landroid/widget/TextView;

    .line 266
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 268
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 270
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 272
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 274
    move-result v4

    .line 277
    if-eq v4, v1, :cond_7

    .line 278
    const/4 v1, 0x2

    .line 280
    if-eq v4, v1, :cond_6

    .line 281
    const/4 v1, 0x3

    .line 283
    if-eq v4, v1, :cond_5

    .line 284
    const/4 v1, 0x4

    .line 286
    if-eq v4, v1, :cond_4

    .line 287
    const v1, 0x7f130878    # @string/notification_channel_summary_automatic 'Have the system determine if this notification should make sound or vibration'

    .line 289
    goto :goto_2

    .line 292
    :cond_4
    const v1, 0x7f13087a    # @string/notification_channel_summary_automatic_demoted '<b>Status:</b> Ranked Lower'

    .line 293
    goto :goto_2

    .line 296
    :cond_5
    const v1, 0x7f13087b    # @string/notification_channel_summary_automatic_promoted '<b>Status:</b> Ranked Higher'

    .line 297
    goto :goto_2

    .line 300
    :cond_6
    const v1, 0x7f13087c    # @string/notification_channel_summary_automatic_silenced '<b>Status:</b> Demoted to Silent'

    .line 301
    goto :goto_2

    .line 304
    :cond_7
    const v1, 0x7f130879    # @string/notification_channel_summary_automatic_alerted '<b>Status:</b> Promoted to Default'

    .line 305
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 308
    move-result-object v1

    .line 311
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 315
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 316
    move-result-object v1

    .line 319
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAutomatic:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda1;

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    goto :goto_3

    .line 331
    :cond_8
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getAlertingBehavior()I

    .line 335
    move-result v0

    .line 338
    invoke-virtual {p0, v0, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    .line 339
    return-void
    .line 342
.end method

.method public final bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 3
    move-object/from16 v2, p7

    .line 5
    move-object/from16 v3, p8

    .line 7
    move-object v4, p2

    .line 9
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 10
    move-object/from16 v4, p16

    .line 12
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 14
    move-object/from16 v4, p3

    .line 16
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 18
    move-object/from16 v4, p4

    .line 20
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 22
    move-object/from16 v4, p15

    .line 24
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 26
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 28
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 30
    check-cast v2, Landroid/util/ArraySet;

    .line 32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 34
    move-result v2

    .line 37
    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 38
    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 40
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 42
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 44
    move-object v2, p1

    .line 46
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    move-object/from16 v2, p10

    .line 49
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    .line 51
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 53
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 55
    move-object/from16 v2, p9

    .line 57
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 59
    move-object/from16 v2, p6

    .line 61
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 63
    invoke-virtual/range {p6 .. p6}, Landroid/app/NotificationChannel;->getImportance()I

    .line 65
    move-result v2

    .line 68
    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 69
    move/from16 v2, p14

    .line 71
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 73
    move/from16 v2, p13

    .line 75
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 77
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 79
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 81
    move-result v2

    .line 84
    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 85
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 87
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 92
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 93
    move/from16 v2, p12

    .line 95
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    .line 97
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 99
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    .line 101
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mShowAutomaticSetting:Z

    .line 103
    move-object/from16 v2, p11

    .line 105
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 107
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 109
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 111
    move-result-object v2

    .line 114
    const-class v3, Landroid/app/Notification$CallStyle;

    .line 115
    invoke-virtual {v2, v3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 117
    move-result v2

    .line 120
    const/4 v3, 0x1

    .line 121
    const/4 v4, 0x0

    .line 122
    if-eqz v2, :cond_0

    .line 123
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 125
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 127
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 129
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 131
    move-result v5

    .line 134
    invoke-interface {v2, v6, v5}, Landroid/app/INotificationManager;->isInCall(Ljava/lang/String;I)Z

    .line 135
    move-result v2

    .line 138
    if-eqz v2, :cond_0

    .line 139
    move v2, v3

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    move v2, v4

    .line 143
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSystemRegisteredCall:Z

    .line 144
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 146
    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 148
    invoke-interface {v2, v1, v5, v4}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    .line 150
    move-result v1

    .line 153
    iget v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 154
    if-eqz v2, :cond_e

    .line 156
    if-ne v2, v3, :cond_1

    .line 158
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 160
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 165
    const-string v5, "miscellaneous"

    .line 166
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    if-ne v1, v3, :cond_1

    .line 174
    move v1, v3

    .line 176
    goto :goto_1

    .line 177
    :cond_1
    move v1, v4

    .line 178
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getAlertingBehavior()I

    .line 181
    move-result v1

    .line 184
    const/4 v2, 0x2

    .line 185
    if-ne v1, v2, :cond_2

    .line 186
    move v1, v3

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    move v1, v4

    .line 190
    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsAutomaticChosen:Z

    .line 191
    const/4 v1, 0x0

    .line 193
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 196
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 198
    const v6, 0xc2200

    .line 200
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 203
    move-result-object v2

    .line 206
    if-eqz v2, :cond_3

    .line 207
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 209
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 211
    move-result-object v5

    .line 214
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    move-result-object v5

    .line 218
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 219
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 221
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 223
    move-result-object v2

    .line 226
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_3

    .line 229
    :catch_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 230
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 232
    move-result-object v2

    .line 235
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 236
    :cond_3
    :goto_3
    const v2, 0x7f0a070c    # @id/pkg_icon

    .line 238
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v2

    .line 244
    check-cast v2, Landroid/widget/ImageView;

    .line 245
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    const v2, 0x7f0a070d    # @id/pkg_name

    .line 252
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 255
    move-result-object v2

    .line 258
    check-cast v2, Landroid/widget/TextView;

    .line 259
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v2, 0x7f0a02a2    # @id/delegate_name

    .line 266
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object v2

    .line 272
    check-cast v2, Landroid/widget/TextView;

    .line 273
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 275
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 277
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 279
    move-result v5

    .line 282
    const/16 v6, 0x8

    .line 283
    if-nez v5, :cond_4

    .line 285
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    goto :goto_4

    .line 290
    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_4
    const v2, 0x7f0a00d3    # @id/app_settings

    .line 294
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object v2

    .line 300
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 301
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 303
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 305
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 307
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 309
    move-result v9

    .line 312
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 313
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 315
    move-result-object v10

    .line 318
    new-instance v11, Landroid/content/Intent;

    .line 319
    const-string v12, "android.intent.action.MAIN"

    .line 321
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v12, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 326
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    move-result-object v11

    .line 331
    invoke-virtual {v11, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    move-result-object v7

    .line 335
    const/high16 v11, 0x10000

    .line 336
    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 338
    move-result-object v5

    .line 341
    if-eqz v5, :cond_7

    .line 342
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 344
    move-result v11

    .line 347
    if-eqz v11, :cond_7

    .line 348
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    move-result-object v11

    .line 353
    if-nez v11, :cond_5

    .line 354
    goto :goto_5

    .line 356
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    move-result-object v5

    .line 360
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 361
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 363
    iget-object v11, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 365
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 367
    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    if-eqz v8, :cond_6

    .line 372
    const-string v5, "android.intent.extra.CHANNEL_ID"

    .line 374
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 376
    move-result-object v8

    .line 379
    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_6
    const-string v5, "android.intent.extra.NOTIFICATION_ID"

    .line 383
    invoke-virtual {v7, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v5, "android.intent.extra.NOTIFICATION_TAG"

    .line 388
    invoke-virtual {v7, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    goto :goto_6

    .line 393
    :cond_7
    :goto_5
    move-object v7, v1

    .line 394
    :goto_6
    if-eqz v7, :cond_8

    .line 395
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 397
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 399
    move-result-object v5

    .line 402
    invoke-virtual {v5}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    .line 403
    move-result-object v5

    .line 406
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 407
    move-result v5

    .line 410
    if-nez v5, :cond_8

    .line 411
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda4;

    .line 416
    invoke-direct {v5, p0, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/content/Intent;)V

    .line 418
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    goto :goto_7

    .line 424
    :cond_8
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :goto_7
    const v2, 0x7f0a043e    # @id/info

    .line 428
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 431
    move-result-object v2

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    .line 435
    move-result-object v5

    .line 438
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    .line 442
    move-result v5

    .line 445
    if-eqz v5, :cond_9

    .line 446
    move v5, v4

    .line 448
    goto :goto_8

    .line 449
    :cond_9
    move v5, v6

    .line 450
    :goto_8
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 451
    const v2, 0x7f0a01dd    # @id/channel_name

    .line 454
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 457
    move-result-object v2

    .line 460
    check-cast v2, Landroid/widget/TextView;

    .line 461
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 463
    if-nez v5, :cond_b

    .line 465
    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 467
    if-le v5, v3, :cond_a

    .line 469
    goto :goto_9

    .line 471
    :cond_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 472
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 474
    move-result-object v5

    .line 477
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    goto :goto_a

    .line 481
    :cond_b
    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    :goto_a
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 485
    if-eqz v2, :cond_c

    .line 487
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 489
    move-result-object v2

    .line 492
    if-eqz v2, :cond_c

    .line 493
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 495
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 497
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    .line 499
    move-result-object v5

    .line 502
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 503
    iget v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 505
    invoke-interface {v2, v5, v7, v8}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    .line 507
    move-result-object v2

    .line 510
    if-eqz v2, :cond_c

    .line 511
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    .line 513
    move-result-object v1

    .line 516
    :cond_c
    const v2, 0x7f0a03bd    # @id/group_name

    .line 517
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 520
    move-result-object v2

    .line 523
    check-cast v2, Landroid/widget/TextView;

    .line 524
    if-eqz v1, :cond_d

    .line 526
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    goto :goto_b

    .line 534
    :cond_d
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :goto_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 538
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 541
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 543
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    .line 548
    move-result-object v0

    .line 551
    const/16 v2, 0xcc

    .line 552
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 554
    move-result-object v0

    .line 557
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 558
    move-result-object v0

    .line 561
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 562
    move-result-object v0

    .line 565
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 566
    return-void

    .line 569
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 570
    const-string v1, "bindNotification requires at least one channel"

    .line 572
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 574
    throw v0
    .line 577
.end method

.method public getActualHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mActualHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final handleCloseControls(ZZ)Z
    .locals 10

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 12
    iput-object v1, p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->done()V

    .line 16
    :cond_0
    if-eqz p1, :cond_7

    .line 19
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    .line 21
    if-nez p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 25
    if-nez p1, :cond_1

    .line 27
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 37
    if-eqz p1, :cond_7

    .line 39
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 46
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 48
    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 57
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p2

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    .line 63
    move-result-object v2

    .line 66
    const/16 v3, 0x123

    .line 67
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 69
    move-result-object v2

    .line 72
    const/4 v3, 0x4

    .line 73
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result p2

    .line 81
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 82
    sub-int/2addr p2, v3

    .line 84
    invoke-virtual {v2, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 85
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result p1

    .line 97
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 98
    const/16 v2, -0x3e8

    .line 100
    if-eq p2, v2, :cond_5

    .line 102
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 104
    const/4 v2, 0x3

    .line 106
    if-eqz p2, :cond_3

    .line 107
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result p2

    .line 114
    if-ge p2, v2, :cond_4

    .line 115
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    .line 117
    if-nez p2, :cond_5

    .line 119
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 121
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result p2

    .line 126
    if-ge p2, v2, :cond_5

    .line 127
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 129
    :cond_5
    move v8, p1

    .line 131
    new-instance p1, Landroid/os/Handler;

    .line 132
    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 134
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 136
    move-result-object p2

    .line 139
    check-cast p2, Landroid/os/Looper;

    .line 140
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;

    .line 145
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 147
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    .line 149
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 151
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    .line 153
    const/4 v6, 0x1

    .line 155
    if-ne v2, v6, :cond_6

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 158
    move-object v6, v2

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    move-object v6, v1

    .line 162
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 163
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsAutomaticChosen:Z

    .line 165
    move-object v2, p2

    .line 167
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;IIZ)V

    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 174
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 176
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->onImportanceChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 178
    :cond_7
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 181
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    .line 183
    return v0
    .line 185
.end method

.method public isAnimating()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 6
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 8
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {v1, p1, v0, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final needsFalsingProtection()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a00a7    # @id/alert_summary

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a088b    # @id/silence_summary

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a00f5    # @id/automatic_summary

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAutomaticDescriptionView:Landroid/widget/TextView;

    .line 36
    return-void
    .line 38
.end method

.method public final onFinishedClosing()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindInlineControls()V

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    .line 12
    move-result-object p0

    .line 15
    const/16 v1, 0xcc

    .line 16
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 18
    move-result-object p0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 23
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 28
    move-result-object p0

    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 9
    move-result v0

    .line 12
    const/16 v1, 0x20

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 23
    move-result-object p1

    .line 26
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 29
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    const v1, 0x7f130871    # @string/notification_channel_controls_opened_accessibility 'Notification controls for %1$s opened'

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 46
    move-result-object p1

    .line 49
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 52
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    const v1, 0x7f130870    # @string/notification_channel_controls_closed_accessibility 'Notification controls for %1$s closed'

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    :goto_0
    return-void
    .line 68
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mActualHeight:I

    .line 9
    return-void
    .line 11
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSkipPost:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    return-void
    .line 4
.end method

.method public final shouldBeSavedOnClose()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    .line 2
    return p0
    .line 4
.end method

.method public final willBeRemoved()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
