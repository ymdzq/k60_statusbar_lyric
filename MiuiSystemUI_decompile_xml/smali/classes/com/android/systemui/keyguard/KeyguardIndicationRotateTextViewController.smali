.class public final Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCurrIndicationType:I

.field public mCurrMessage:Ljava/lang/CharSequence;

.field public mCurrentIndicationColor:Landroid/content/res/ColorStateList;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mIndicationMessages:Ljava/util/Map;

.field public final mIndicationQueue:Ljava/util/List;

.field public mIsDozing:Z

.field public mLastIndicationSwitch:J

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 17
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 20
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    .line 29
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 43
    return-void
    .line 46
.end method

.method public static indicationTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    :pswitch_0
    const-string/jumbo v0, "unknown["

    .line 5
    const-string v1, "]"

    .line 8
    invoke-static {v0, p0, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "biometric_message_followup"

    .line 15
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "biometric_message"

    .line 18
    return-object p0

    .line 20
    :pswitch_3
    const-string/jumbo p0, "reverse_charging"

    .line 21
    return-object p0

    .line 24
    :pswitch_4
    const-string/jumbo p0, "user_locked"

    .line 25
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "persistent_unlock_message"

    .line 29
    return-object p0

    .line 31
    :pswitch_6
    const-string/jumbo p0, "trust"

    .line 32
    return-object p0

    .line 35
    :pswitch_7
    const-string/jumbo p0, "transient"

    .line 36
    return-object p0

    .line 39
    :pswitch_8
    const-string p0, "alignment"

    .line 40
    return-object p0

    .line 42
    :pswitch_9
    const-string p0, "battery"

    .line 43
    return-object p0

    .line 45
    :pswitch_a
    const-string p0, "logout"

    .line 46
    return-object p0

    .line 48
    :pswitch_b
    const-string p0, "disclosure"

    .line 49
    return-object p0

    .line 51
    :pswitch_c
    const-string p0, "owner_info"

    .line 52
    return-object p0

    .line 54
    :pswitch_d
    const-string p0, "none"

    .line 55
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 58
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/ViewController;->mInited:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mOnAttachStateListener:Lcom/android/systemui/util/ViewController$1;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->onViewDetached()V

    .line 14
    return-void
    .line 17
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "KeyguardIndicationRotatingTextViewController:"

    .line 2
    const-string v0, "    currentTextViewMessage="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "    currentStoredMessage="

    .line 30
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getMessage()Ljava/lang/CharSequence;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "    dozing:"

    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    .line 56
    const-string v1, "    queue:"

    .line 58
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object p2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "    showNextIndicationRunnable:"

    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 95
    move-object p2, p0

    .line 97
    check-cast p2, Ljava/util/HashMap;

    .line 98
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 100
    move-result-object p2

    .line 103
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 104
    move-result p2

    .line 107
    if-lez p2, :cond_0

    .line 108
    const/4 p2, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const/4 p2, 0x0

    .line 112
    :goto_0
    if-eqz p2, :cond_1

    .line 113
    const-string p2, "    All messages:"

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    check-cast p0, Ljava/util/HashMap;

    .line 120
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 122
    move-result-object p2

    .line 125
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p2

    .line 129
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 142
    move-result v0

    .line 145
    const-string v1, "        type="

    .line 146
    const-string v2, " "

    .line 148
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object v1

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    goto :goto_1

    .line 172
    :cond_1
    return-void
    .line 173
.end method

.method public final hideIndication(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 11
    sget-object v1, Lcom/android/systemui/flags/Flags;->KEYGUARD_TALKBACK_FIX:Lcom/android/systemui/flags/ReleasedFlag;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 15
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 19
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlwaysAnnounceEnabled(Z)V

    .line 23
    return-void
    .line 26
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateListener:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 18
    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 21
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 23
    :cond_1
    return-void
    .line 25
.end method

.method public final showIndication(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 11
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 14
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    .line 18
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 20
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 28
    check-cast v4, Ljava/util/HashMap;

    .line 30
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 41
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 46
    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    move-object v3, v1

    .line 51
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    .line 52
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrentIndicationColor:Landroid/content/res/ColorStateList;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v5

    .line 59
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v5

    .line 69
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 73
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 74
    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardIndication;->mTextColor:Landroid/content/res/ColorStateList;

    .line 76
    goto :goto_1

    .line 78
    :cond_3
    move-object v5, v1

    .line 79
    :goto_1
    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrentIndicationColor:Landroid/content/res/ColorStateList;

    .line 80
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;

    .line 82
    const/4 v6, 0x2

    .line 84
    invoke-direct {v5, p1, v6}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;-><init>(II)V

    .line 85
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 88
    check-cast v6, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 92
    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 95
    const/4 v7, -0x1

    .line 97
    if-eq v5, v7, :cond_4

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v5

    .line 103
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 107
    move-result-wide v8

    .line 110
    iput-wide v8, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLastIndicationSwitch:J

    .line 111
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    .line 113
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 121
    if-ne v2, v0, :cond_5

    .line 123
    if-eqz v3, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrentIndicationColor:Landroid/content/res/ColorStateList;

    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v0

    .line 132
    if-nez v0, :cond_8

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrMessage:Ljava/lang/CharSequence;

    .line 135
    if-eqz v0, :cond_6

    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move-object v0, v1

    .line 144
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    .line 145
    invoke-virtual {v2, p1, v0}, Lcom/android/keyguard/logging/KeyguardLogger;->logKeyguardSwitchIndication(ILjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 150
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v2

    .line 157
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 161
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 162
    if-nez v2, :cond_7

    .line 164
    move-object v3, v1

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    .line 171
    :goto_3
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    .line 173
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextIndication()V

    .line 177
    :cond_8
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 180
    if-eq v0, v7, :cond_d

    .line 182
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 184
    move-result v0

    .line 187
    const/4 v2, 0x1

    .line 188
    if-le v0, v2, :cond_d

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object p1

    .line 194
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object p1

    .line 198
    check-cast p1, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 199
    const-wide/16 v2, 0x0

    .line 201
    if-nez p1, :cond_9

    .line 203
    goto :goto_4

    .line 205
    :cond_9
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    .line 206
    if-nez p1, :cond_a

    .line 208
    goto :goto_4

    .line 210
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 211
    move-result-wide v2

    .line 214
    :goto_4
    const-wide/16 v4, 0xdac

    .line 215
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 217
    move-result-wide v2

    .line 220
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 221
    if-eqz p1, :cond_c

    .line 223
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 225
    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 229
    iput-object v1, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 232
    :cond_b
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 234
    :cond_c
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 236
    invoke-direct {p1, p0, v2, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    .line 238
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 241
    :cond_d
    return-void
    .line 243
.end method

.method public final updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationMessages:Ljava/util/Map;

    .line 13
    check-cast v1, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 21
    if-nez v0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    .line 26
    if-nez v0, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    :goto_0
    const/4 v0, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz p2, :cond_3

    .line 36
    iget-object v3, p2, Lcom/android/systemui/keyguard/KeyguardIndication;->mMessage:Ljava/lang/CharSequence;

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v3

    .line 43
    if-nez v3, :cond_3

    .line 44
    move v3, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v3, v2

    .line 48
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 49
    if-nez v3, :cond_4

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p2

    .line 56
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {p2, p1, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;-><init>(II)V

    .line 62
    check-cast v4, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 67
    goto :goto_2

    .line 70
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v5

    .line 74
    check-cast v4, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 80
    if-nez v5, :cond_5

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v5

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v4

    .line 93
    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    .line 97
    if-eqz p2, :cond_6

    .line 99
    return-void

    .line 101
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 102
    move-result-wide v4

    .line 105
    iget-wide v6, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mLastIndicationSwitch:J

    .line 106
    sub-long/2addr v4, v6

    .line 108
    const/4 p2, 0x0

    .line 109
    const/4 v6, -0x1

    .line 110
    if-eqz v3, :cond_11

    .line 111
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 113
    if-eq v3, v6, :cond_f

    .line 115
    if-ne v3, p1, :cond_7

    .line 117
    goto :goto_5

    .line 119
    :cond_7
    if-eqz p3, :cond_8

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 122
    goto :goto_6

    .line 125
    :cond_8
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 126
    if-eqz p3, :cond_9

    .line 128
    goto :goto_3

    .line 130
    :cond_9
    move v0, v2

    .line 131
    :goto_3
    if-nez v0, :cond_10

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p3

    .line 137
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object p3

    .line 141
    check-cast p3, Lcom/android/systemui/keyguard/KeyguardIndication;

    .line 142
    const-wide/16 v0, 0x0

    .line 144
    if-nez p3, :cond_a

    .line 146
    goto :goto_4

    .line 148
    :cond_a
    iget-object p3, p3, Lcom/android/systemui/keyguard/KeyguardIndication;->mMinVisibilityMillis:Ljava/lang/Long;

    .line 149
    if-nez p3, :cond_b

    .line 151
    goto :goto_4

    .line 153
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 154
    move-result-wide v0

    .line 157
    :goto_4
    const-wide/16 v2, 0xdac

    .line 158
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 160
    move-result-wide v0

    .line 163
    cmp-long p3, v4, v0

    .line 164
    if-ltz p3, :cond_c

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 168
    goto :goto_6

    .line 171
    :cond_c
    sub-long/2addr v0, v4

    .line 172
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 173
    if-eqz p1, :cond_e

    .line 175
    iget-object p3, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 177
    if-eqz p3, :cond_d

    .line 179
    invoke-virtual {p3}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 181
    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 184
    :cond_d
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 186
    :cond_e
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 188
    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;-><init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;J)V

    .line 190
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 193
    goto :goto_6

    .line 195
    :cond_f
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 196
    :cond_10
    :goto_6
    return-void

    .line 199
    :cond_11
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mCurrIndicationType:I

    .line 200
    if-ne v0, p1, :cond_14

    .line 202
    if-nez v3, :cond_14

    .line 204
    if-eqz p3, :cond_14

    .line 206
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mShowNextIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;

    .line 208
    if-eqz p1, :cond_13

    .line 210
    iget-object p0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 212
    if-eqz p0, :cond_12

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 216
    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mCancelDelayedRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 219
    :cond_12
    iget-object p0, p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication;->mShowIndicationRunnable:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0;->run()V

    .line 223
    goto :goto_7

    .line 226
    :cond_13
    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 227
    :cond_14
    :goto_7
    return-void
    .line 230
.end method
