.class public final Lcom/android/systemui/classifier/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# static fields
.field public static final DEBUG:Z

.field public static final RECENT_INFO_LOG:Ljava/util/Queue;

.field public static final RECENT_SWIPES:Ljava/util/Queue;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

.field public final mClassifiers:Ljava/util/Collection;

.field public final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public mDestroyed:Z

.field public final mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

.field public final mFalsingBeliefListeners:Ljava/util/List;

.field public final mFalsingTapListeners:Ljava/util/List;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

.field public final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

.field public final mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPriorInteractionType:I

.field public mPriorResults:Ljava/util/Collection;

.field public final mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

.field public final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

.field public final mTestHarness:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FalsingManager"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 9
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    const/16 v1, 0x29

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 15
    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 20
    const/16 v1, 0x15

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 24
    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    .line 27
    return-void
    .line 29
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/LongTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/accessibility/AccessibilityManager;ZLcom/android/systemui/flags/FeatureFlags;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    .line 24
    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    .line 26
    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    .line 28
    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    .line 31
    new-instance v2, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    .line 33
    invoke-direct {v2, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    .line 35
    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    .line 38
    const/4 v3, 0x7

    .line 40
    iput v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    .line 41
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 49
    iput-object p5, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

    .line 51
    iput-object p6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 55
    iput-object p8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    iput-object p9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 59
    iput-boolean p10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    .line 61
    iput-object p11, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 63
    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    .line 65
    check-cast p0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p0, p7, Lcom/android/systemui/classifier/HistoryTracker;->mBeliefListeners:Ljava/util/List;

    .line 79
    check-cast p0, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
    .line 86
.end method

.method public static getPassedResult(D)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "FalsingManager"

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "FalsingManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    .line 7
    move-object v1, v0

    .line 9
    check-cast v1, Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    move-object p0, v0

    .line 15
    check-cast p0, Ljava/util/ArrayDeque;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 18
    move-result p0

    .line 21
    const/16 v1, 0x28

    .line 22
    if-le p0, v1, :cond_0

    .line 24
    move-object p0, v0

    .line 26
    check-cast p0, Ljava/util/ArrayDeque;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method


# virtual methods
.method public final addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final checkDestroyed()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const-string p0, "FalsingManager"

    .line 6
    const-string v0, "Tried to use FalsingManager after being destroyed!"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final cleanupInternal()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 5
    iget-object v2, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 25
    new-instance v2, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v2, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/classifier/HistoryTracker;->mBeliefListeners:Ljava/util/List;

    .line 44
    check-cast v0, Ljava/util/ArrayList;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
    .line 53
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "BRIGHTLINE FALSING MANAGER"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    const-string p1, "classifierEnabled="

    .line 14
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 20
    const-string v0, "mJustUnlockedWithFace="

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 32
    const-string v0, "isDocked="

    .line 35
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 40
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 42
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    .line 44
    const/4 v1, 0x1

    .line 46
    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    move p1, v1

    .line 55
    :goto_0
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 56
    const-string/jumbo p1, "width="

    .line 59
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 62
    iget p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    .line 65
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 67
    const-string p1, "height="

    .line 70
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    .line 75
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 77
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 80
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    .line 83
    check-cast p0, Ljava/util/ArrayDeque;

    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 87
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    const-string p1, "Recent swipes:"

    .line 93
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 98
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object p0

    .line 104
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    check-cast p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    new-instance v0, Ljava/util/StringJoiner;

    .line 120
    const-string v2, ","

    .line 122
    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    move-result-object v2

    .line 134
    iget-boolean v3, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mIsFalse:Z

    .line 135
    if-eqz v3, :cond_1

    .line 137
    const-string v3, "1"

    .line 139
    goto :goto_2

    .line 141
    :cond_1
    const-string v3, "0"

    .line 142
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 144
    move-result-object v2

    .line 147
    iget v3, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mInteractionType:I

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    iget-object p1, p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mRecentMotionEvents:Ljava/util/List;

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object p1

    .line 162
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v2

    .line 166
    if-eqz v2, :cond_2

    .line 167
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 172
    check-cast v2, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    .line 173
    invoke-virtual {v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;->toString()Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 179
    goto :goto_3

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 186
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 190
    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 194
    goto :goto_4

    .line 197
    :cond_4
    const-string p0, "No recent swipes"

    .line 198
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 200
    :goto_4
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 203
    const-string p0, "Recent falsing info:"

    .line 206
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 211
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    .line 214
    check-cast p0, Ljava/util/ArrayDeque;

    .line 216
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object p0

    .line 221
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result p1

    .line 225
    if-eqz p1, :cond_5

    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object p1

    .line 231
    check-cast p1, Ljava/lang/String;

    .line 232
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    goto :goto_5

    .line 237
    :cond_5
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 238
    return-void
    .line 241
.end method

.method public final isClassifierEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isFalseDoubleTap()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    .line 2
    const/4 v0, 0x7

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 18
    const-string p0, "Skipped falsing"

    .line 20
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 22
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 27
    invoke-virtual {v1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    .line 32
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/DoubleTapClassifier;->calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 41
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "False Double Tap: "

    .line 49
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-boolean v1, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " reason="

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 75
    return v1
    .line 78
.end method

.method public final isFalseLongTap(I)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    .line 2
    const/4 v0, 0x7

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 19
    const-string p0, "Skipped falsing"

    .line 21
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 23
    return v1

    .line 26
    :cond_0
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 27
    const-wide/16 v6, 0x0

    .line 32
    if-eqz p1, :cond_4

    .line 34
    const/4 v0, 0x1

    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    const/4 v0, 0x2

    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    const/4 v0, 0x3

    .line 42
    if-eq p1, v0, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 46
    goto :goto_0

    .line 51
    :cond_2
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 52
    goto :goto_0

    .line 57
    :cond_3
    move-wide v6, v4

    .line 58
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 61
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    .line 71
    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 74
    move-result-object v0

    .line 77
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

    .line 78
    invoke-virtual {v8, v0, v6, v7}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 84
    move-result-object v6

    .line 87
    iput-object v6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 88
    iget-boolean v0, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 90
    if-nez v0, :cond_7

    .line 92
    iget-boolean p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 94
    if-eqz p1, :cond_6

    .line 96
    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 98
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 102
    const-string p0, "False Long Tap: false (face detected)"

    .line 104
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 106
    goto :goto_2

    .line 109
    :cond_6
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 110
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 114
    const-string p0, "False Long Tap: false (default)"

    .line 116
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 118
    :goto_2
    return v1

    .line 121
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    const-string p1, "False Long Tap: "

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    const-string p1, " (simple)"

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 141
    return v0
.end method

.method public final isFalseTap(I)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    .line 2
    const/4 v0, 0x7

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    .line 6
    move-result v0

    .line 9
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 10
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 19
    const-string p0, "Skipped falsing"

    .line 21
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 23
    return v3

    .line 26
    :cond_0
    const-wide/16 v6, 0x0

    .line 27
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 29
    const/4 v0, 0x1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    if-eq p1, v0, :cond_3

    .line 37
    const/4 v8, 0x2

    .line 39
    if-eq p1, v8, :cond_2

    .line 40
    const/4 v8, 0x3

    .line 42
    if-eq p1, v8, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const-wide v8, 0x3fe3333333333333L    # 0.6

    .line 46
    goto :goto_1

    .line 51
    :cond_2
    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 52
    goto :goto_1

    .line 57
    :cond_3
    move-wide v8, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    move-wide v8, v6

    .line 60
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 63
    move-result-object v10

    .line 66
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v10

    .line 70
    if-eqz v10, :cond_5

    .line 71
    iget-object v10, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    .line 73
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 76
    move-result-object v10

    .line 79
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 80
    invoke-virtual {v11, v10, v8, v9}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 82
    move-result-object v8

    .line 85
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 86
    move-result-object v9

    .line 89
    iput-object v9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 90
    iget-boolean v8, v8, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 92
    if-nez v8, :cond_9

    .line 94
    iget-boolean p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 96
    if-eqz p1, :cond_6

    .line 98
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 100
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 104
    const-string p0, "False Single Tap: false (face detected)"

    .line 106
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 108
    return v3

    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isFalseDoubleTap()Z

    .line 112
    move-result p1

    .line 115
    if-nez p1, :cond_7

    .line 116
    const-string p0, "False Single Tap: false (double tapped)"

    .line 118
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 120
    return v3

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    .line 126
    move-result-wide v1

    .line 129
    const-wide v8, 0x3fe6666666666666L    # 0.7

    .line 130
    cmpl-double p1, v1, v8

    .line 135
    if-lez p1, :cond_8

    .line 137
    const-string v8, "BrightLineFalsingManager"

    .line 139
    const-string v9, "bad history"

    .line 141
    new-instance p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 143
    const/4 v5, 0x1

    .line 145
    move-object v4, p1

    .line 146
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 150
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 154
    const-string p1, "False Single Tap: true (bad history)"

    .line 156
    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    .line 161
    new-instance p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    .line 163
    invoke-direct {p1, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 165
    check-cast p0, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 170
    return v0

    .line 173
    :cond_8
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 174
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 178
    const-string p0, "False Single Tap: false (default)"

    .line 180
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 182
    return v3

    .line 185
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 186
    const-string p1, "False Single Tap: "

    .line 188
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    const-string p1, " (simple)"

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 204
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 205
    return v8
    .line 208
.end method

.method public final isFalseTouch(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    .line 2
    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 14
    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 20
    const-string p0, "Skipped falsing"

    .line 22
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 24
    return v1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Z

    .line 29
    aput-boolean v1, v0, v1

    .line 31
    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 33
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 35
    move-result-object v2

    .line 38
    new-instance v3, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;

    .line 39
    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[Z)V

    .line 41
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 44
    move-result-object v2

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 48
    move-result-object v3

    .line 51
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/Collection;

    .line 56
    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 58
    const/16 v2, 0x12

    .line 60
    if-ne p1, v2, :cond_1

    .line 62
    aget-boolean v2, v0, v1

    .line 64
    const/4 v3, 0x2

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isFalseTap(I)Z

    .line 67
    move-result p0

    .line 70
    and-int/2addr p0, v2

    .line 71
    aput-boolean p0, v0, v1

    .line 72
    :cond_1
    const-string p0, "False Gesture (type: "

    .line 74
    const-string v2, "): "

    .line 76
    invoke-static {p0, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object p0

    .line 81
    aget-boolean p1, v0, v1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 91
    aget-boolean p0, v0, v1

    .line 94
    return p0
    .line 96
.end method

.method public final isProximityNear()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getCovered()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final isReportingEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isSimpleTap()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    iget-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 13
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 23
    iget-boolean p0, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 27
    return p0
    .line 29
.end method

.method public final isUnlockingDisabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 4
    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda2;

    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onSuccessfulUnlock()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final shouldEnforceBouncer()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final skipFalsing(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    if-eqz p1, :cond_3

    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    .line 15
    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 19
    iget-boolean v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 21
    if-nez v0, :cond_3

    .line 23
    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 27
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    .line 29
    const/4 v2, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v1

    .line 41
    :goto_0
    if-nez v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    iget-boolean v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    .line 52
    if-nez v0, :cond_3

    .line 54
    sget-object v0, Lcom/android/systemui/flags/Flags;->FALSING_OFF_FOR_UNFOLDED:Lcom/android/systemui/flags/ReleasedFlag;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 58
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 62
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    iget-boolean p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mIsFoldableDevice:Z

    .line 68
    if-eqz p0, :cond_1

    .line 70
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 72
    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 74
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->getFolded()Ljava/lang/Boolean;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    move p0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move p0, v2

    .line 88
    :goto_1
    if-eqz p0, :cond_2

    .line 89
    goto :goto_2

    .line 91
    :cond_2
    move v1, v2

    .line 92
    :cond_3
    :goto_2
    return v1
    .line 93
.end method
