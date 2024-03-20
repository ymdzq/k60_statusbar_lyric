.class public final Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# static fields
.field public static final DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

.field public static final MAX_CONSECUTIVE_REENTRANT_REBUILDS:I = 0x3


# instance fields
.field public mAlertManager:Ldagger/Lazy;

.field public mAllEntries:Ljava/util/Collection;

.field public final mBuildListTask:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

.field public final mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

.field public mConsecutiveReentrantRebuilds:I

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda2;

.field public final mGroups:Ljava/util/Map;

.field public mHandler:Landroid/os/Handler;

.field public final mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

.field public mIterationCount:I

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

.field public mNewNotifList:Ljava/util/List;

.field public final mNotifComparators:Ljava/util/List;

.field public final mNotifFinalizeFilters:Ljava/util/List;

.field public mNotifList:Ljava/util/List;

.field public final mNotifPreGroupFilters:Ljava/util/List;

.field public final mNotifPromoters:Ljava/util/List;

.field public final mNotifSections:Ljava/util/List;

.field public mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

.field public final mOnBeforeFinalizeFilterListeners:Ljava/util/List;

.field public final mOnBeforeRenderListListeners:Ljava/util/List;

.field public final mOnBeforeSortListeners:Ljava/util/List;

.field public final mOnBeforeTransformGroupsListeners:Ljava/util/List;

.field public final mOnEvalListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

.field public mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

.field public mPendingEntries:Ljava/util/Collection;

.field public final mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

.field public mPostBuildList:Z

.field public mReadOnlyNewNotifList:Ljava/util/List;

.field public mReadOnlyNotifList:Ljava/util/List;

.field public final mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

.field public final mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

.field public final mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mTempSectionMembers:Ljava/util/ArrayList;

.field public final mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;


# direct methods
.method public static $r8$lambda$3LezlIpVQziz09NL9x1Sia3jtEU(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 8
    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 10
    const-string v1, "NotifComparator"

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    .line 14
    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPluggableInvalidated(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;ILjava/lang/String;)V

    .line 16
    const/4 p1, 0x7

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    .line 20
    return-void
    .line 23
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/NotificationInteractionTracker;Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    .line 26
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 33
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 41
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 59
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    .line 62
    iput v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 131
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 139
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    .line 143
    iput v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 147
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    .line 154
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    .line 156
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda2;

    .line 161
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda2;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 173
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 176
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    .line 178
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    sget-object p5, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 183
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 185
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    .line 190
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 196
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->setSectioners(Ljava/util/List;)V

    .line 200
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    .line 203
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 205
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mBuildListTask:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    .line 208
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    .line 210
    const/4 p2, 0x1

    .line 212
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnEvalListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    .line 216
    return-void
    .line 218
.end method

.method public static annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    return-void
.end method

.method public static annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    const-string v1, "Cannot nullify addition of "

    if-eqz v0, :cond_7

    .line 3
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-ne v0, v2, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": it\'s still in the shade list."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p1, :cond_4

    .line 7
    move-object p1, p0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "Cannot nullify group "

    .line 9
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ": still has children"

    .line 12
    invoke-static {v1, v2, p1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ": summary is not null"

    .line 15
    invoke-static {v1, v2, p1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 19
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eq p0, v0, :cond_5

    .line 20
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 21
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot nullify addition of child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": it\'s still attached to its parent."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no parent."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z
    .locals 5

    .line 1
    check-cast p3, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 16
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z

    .line 18
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 29
    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 31
    if-eqz v3, :cond_2

    .line 33
    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 37
    :cond_2
    if-eqz v3, :cond_3

    .line 39
    const/4 v1, 0x1

    .line 41
    :cond_3
    return v1
    .line 42
.end method

.method public static callOnCleanup(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->onCleanup()V

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    return-void
    .line 21
.end method

.method public static isSorted(Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    invoke-interface {p1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 28
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    move-object v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
    .line 38
.end method


# virtual methods
.method public final applyNewNotifList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    .line 17
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    .line 21
    return-void
    .line 23
.end method

.method public final buildList()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "ShadeListBuilder.buildList"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 9
    iget v2, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 11
    const/4 v3, 0x1

    .line 13
    if-ge v2, v3, :cond_56

    .line 14
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    .line 16
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 21
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 25
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isPipelineRunAllowed()Z

    .line 27
    move-result v2

    .line 30
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    .line 31
    if-nez v2, :cond_1

    .line 33
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPipelineRunSuppressed()V

    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    return-void

    .line 41
    :cond_1
    iput v3, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 42
    const/4 v2, 0x2

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 45
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    .line 48
    check-cast v2, Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 52
    move-result-object v6

    .line 55
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v6

    .line 59
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v7

    .line 63
    if-eqz v7, :cond_2

    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v7

    .line 69
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 70
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    .line 72
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 75
    check-cast v8, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 79
    iput-object v4, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 85
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v6

    .line 90
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v7

    .line 94
    if-eqz v7, :cond_3

    .line 95
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v7

    .line 100
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 101
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    .line 103
    goto :goto_1

    .line 106
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 107
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 112
    move-result-object v6

    .line 115
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->onBeginRun()V

    .line 116
    const/4 v6, 0x3

    .line 119
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 120
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 123
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 125
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    .line 127
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    .line 129
    const/4 v6, 0x4

    .line 132
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 133
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 136
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 138
    const-string v9, "ShadeListBuilder.groupNotifs"

    .line 140
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 142
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object v6

    .line 148
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v9

    .line 152
    if-eqz v9, :cond_b

    .line 153
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v9

    .line 158
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 159
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 161
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 163
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 165
    move-result v10

    .line 168
    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 169
    if-eqz v10, :cond_9

    .line 171
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 173
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 175
    move-result-object v10

    .line 178
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object v12

    .line 182
    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 183
    if-nez v12, :cond_4

    .line 185
    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 187
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 189
    check-cast v13, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 191
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 196
    move-result-wide v13

    .line 199
    invoke-direct {v12, v10, v13, v14}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;J)V

    .line 200
    invoke-virtual {v2, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_4
    iget-object v10, v12, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 206
    iget-object v13, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 208
    if-nez v13, :cond_5

    .line 210
    sget-object v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 212
    iput-object v13, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 214
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_5
    iput-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 219
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 221
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 223
    move-result-object v10

    .line 226
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    .line 227
    move-result v10

    .line 230
    if-eqz v10, :cond_8

    .line 231
    iget-object v10, v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 233
    if-nez v10, :cond_6

    .line 235
    iput-object v9, v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 237
    goto :goto_2

    .line 239
    :cond_6
    iget v11, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 240
    invoke-virtual {v5, v11, v12, v10, v9}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateSummary(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 242
    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 245
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 247
    move-result-wide v13

    .line 250
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 251
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 253
    move-result-wide v15

    .line 256
    cmp-long v11, v13, v15

    .line 257
    if-lez v11, :cond_7

    .line 259
    iput-object v9, v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 261
    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    .line 263
    goto :goto_2

    .line 266
    :cond_7
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    .line 267
    goto :goto_2

    .line 270
    :cond_8
    iget-object v10, v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 271
    check-cast v10, Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    goto/16 :goto_2

    .line 278
    :cond_9
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 282
    move-result v12

    .line 285
    if-eqz v12, :cond_a

    .line 286
    iget v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 288
    invoke-virtual {v5, v9, v10}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateTopLevelKey(ILjava/lang/String;)V

    .line 290
    goto/16 :goto_2

    .line 293
    :cond_a
    sget-object v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 295
    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 297
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    goto/16 :goto_2

    .line 302
    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    .line 307
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 310
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    .line 312
    const-string v6, "ShadeListBuilder.dispatchOnBeforeTransformGroups"

    .line 315
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 317
    const/4 v7, 0x0

    .line 320
    :goto_3
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    .line 321
    check-cast v9, Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 325
    move-result v10

    .line 328
    if-ge v7, v10, :cond_c

    .line 329
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    move-result-object v9

    .line 334
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$1;

    .line 335
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$1;->onBeforeTransformGroups()V

    .line 337
    add-int/lit8 v7, v7, 0x1

    .line 340
    goto :goto_3

    .line 342
    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 343
    const/4 v7, 0x5

    .line 346
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 347
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 350
    const-string v9, "ShadeListBuilder.promoteNotifs"

    .line 352
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 354
    const/4 v9, 0x0

    .line 357
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 358
    move-result v10

    .line 361
    if-ge v9, v10, :cond_e

    .line 362
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    move-result-object v10

    .line 367
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 368
    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 370
    if-eqz v11, :cond_d

    .line 372
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 374
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 376
    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda5;

    .line 378
    invoke-direct {v11, v0, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Ljava/util/List;)V

    .line 380
    check-cast v10, Ljava/util/ArrayList;

    .line 383
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 385
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 388
    goto :goto_4

    .line 390
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 391
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 394
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    .line 396
    const/4 v7, 0x6

    .line 399
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 400
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 405
    move-result-object v9

    .line 408
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    .line 409
    move-result v9

    .line 412
    if-eqz v9, :cond_f

    .line 413
    goto :goto_7

    .line 415
    :cond_f
    const-string v9, "ShadeListBuilder.stabilizeGroupingNotifs"

    .line 416
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 418
    const/4 v9, 0x0

    .line 421
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 422
    move-result v10

    .line 425
    if-ge v9, v10, :cond_13

    .line 426
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 428
    move-result-object v10

    .line 431
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 432
    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 434
    if-eqz v11, :cond_11

    .line 436
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 438
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 440
    const/4 v12, 0x0

    .line 442
    :goto_6
    iget-object v13, v10, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 443
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 445
    move-result v13

    .line 448
    if-ge v12, v13, :cond_12

    .line 449
    move-object v13, v11

    .line 451
    check-cast v13, Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    move-result-object v14

    .line 457
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 458
    invoke-virtual {v0, v14, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z

    .line 460
    move-result v14

    .line 463
    if-eqz v14, :cond_10

    .line 464
    invoke-interface {v13, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 466
    add-int/lit8 v12, v12, -0x1

    .line 469
    :cond_10
    add-int/2addr v12, v3

    .line 471
    goto :goto_6

    .line 472
    :cond_11
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 473
    move-result-object v10

    .line 476
    invoke-virtual {v0, v10, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z

    .line 477
    move-result v10

    .line 480
    if-eqz v10, :cond_12

    .line 481
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 483
    add-int/lit8 v9, v9, -0x1

    .line 486
    :cond_12
    add-int/2addr v9, v3

    .line 488
    goto :goto_5

    .line 489
    :cond_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 490
    :goto_7
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 493
    const-string v9, "ShadeListBuilder.dispatchOnBeforeSort"

    .line 495
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 497
    const/4 v9, 0x0

    .line 500
    :goto_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    .line 501
    check-cast v10, Ljava/util/ArrayList;

    .line 503
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 505
    move-result v11

    .line 508
    if-ge v9, v11, :cond_14

    .line 509
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    move-result-object v10

    .line 514
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 515
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->onBeforeSort(Ljava/util/List;)V

    .line 520
    add-int/lit8 v9, v9, 0x1

    .line 523
    goto :goto_8

    .line 525
    :cond_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    const/4 v7, 0x7

    .line 529
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 530
    const-string v7, "ShadeListBuilder.assignSections"

    .line 533
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 535
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 538
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 540
    move-result-object v7

    .line 543
    :cond_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    move-result v9

    .line 547
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    .line 548
    if-eqz v9, :cond_1c

    .line 550
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 552
    move-result-object v9

    .line 555
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 556
    const/4 v11, 0x0

    .line 558
    :goto_9
    move-object v12, v10

    .line 559
    check-cast v12, Ljava/util/ArrayList;

    .line 560
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 562
    move-result v13

    .line 565
    if-ge v11, v13, :cond_1b

    .line 566
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 568
    move-result-object v12

    .line 571
    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 572
    iget-object v13, v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 574
    invoke-virtual {v13, v9}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 576
    move-result v13

    .line 579
    if-eqz v13, :cond_1a

    .line 580
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 582
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 584
    if-eqz v11, :cond_16

    .line 586
    move v11, v3

    .line 588
    goto :goto_a

    .line 589
    :cond_16
    const/4 v11, 0x0

    .line 590
    :goto_a
    iget-object v13, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 591
    if-eqz v11, :cond_17

    .line 593
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 595
    if-eq v12, v11, :cond_17

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 599
    move-result-object v11

    .line 602
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 603
    move-result-object v14

    .line 606
    invoke-virtual {v11, v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isSectionChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 607
    move-result v11

    .line 610
    if-nez v11, :cond_17

    .line 611
    iget-object v11, v13, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 613
    iput-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 615
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 617
    :cond_17
    iput-object v12, v13, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 619
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 621
    move-result-object v10

    .line 624
    if-eqz v10, :cond_18

    .line 625
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 627
    iput-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 629
    if-eqz v12, :cond_18

    .line 631
    iget v11, v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 633
    iput v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 635
    :cond_18
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 637
    if-eqz v10, :cond_15

    .line 639
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 641
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 643
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 645
    move-result-object v9

    .line 648
    :cond_19
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    move-result v10

    .line 652
    if-eqz v10, :cond_15

    .line 653
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    move-result-object v10

    .line 658
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 659
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 661
    iput-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 663
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 665
    iput-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 667
    if-eqz v12, :cond_19

    .line 669
    iget v11, v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 671
    iput v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 673
    goto :goto_b

    .line 675
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 676
    goto :goto_9

    .line 678
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 679
    const-string v1, "Missing default sectioner!"

    .line 681
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 683
    throw v0

    .line 686
    :cond_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 687
    const-string v7, "ShadeListBuilder.notifySectionEntriesUpdated"

    .line 690
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 692
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    .line 695
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 697
    check-cast v10, Ljava/util/ArrayList;

    .line 700
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 702
    move-result-object v9

    .line 705
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    move-result v11

    .line 709
    if-eqz v11, :cond_1f

    .line 710
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    move-result-object v11

    .line 715
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 716
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 718
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 720
    move-result-object v12

    .line 723
    :cond_1d
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 724
    move-result v13

    .line 727
    if-eqz v13, :cond_1e

    .line 728
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 730
    move-result-object v13

    .line 733
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 734
    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 736
    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 738
    if-ne v11, v14, :cond_1d

    .line 740
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    goto :goto_d

    .line 745
    :cond_1e
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 746
    invoke-virtual {v11, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->onEntriesUpdated(Ljava/util/List;)V

    .line 748
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 751
    goto :goto_c

    .line 754
    :cond_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 755
    const-string v7, "ShadeListBuilder.sortListAndGroups"

    .line 758
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 760
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 763
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 765
    move-result-object v7

    .line 768
    move v9, v3

    .line 769
    :cond_20
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 770
    move-result v11

    .line 773
    sget-object v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->Companion:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;

    .line 774
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 776
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    .line 778
    if-eqz v11, :cond_2b

    .line 780
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    move-result-object v11

    .line 785
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 786
    instance-of v15, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 788
    if-eqz v15, :cond_20

    .line 790
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 792
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 796
    move-result-object v15

    .line 799
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    .line 800
    move-result v15

    .line 803
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda2;

    .line 804
    if-eqz v15, :cond_21

    .line 806
    check-cast v11, Ljava/util/ArrayList;

    .line 808
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 810
    move-object/from16 v17, v7

    .line 813
    goto/16 :goto_14

    .line 815
    :cond_21
    iget-object v15, v14, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedWorkspace$delegate:Lkotlin/Lazy;

    .line 817
    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 819
    move-result-object v15

    .line 822
    check-cast v15, Ljava/util/ArrayList;

    .line 823
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 825
    iget-object v15, v14, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedWorkspace$delegate:Lkotlin/Lazy;

    .line 828
    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 830
    move-result-object v15

    .line 833
    check-cast v15, Ljava/util/ArrayList;

    .line 834
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 836
    move-result v17

    .line 839
    if-eqz v17, :cond_22

    .line 840
    move-object/from16 v17, v15

    .line 842
    goto :goto_f

    .line 844
    :cond_22
    const/16 v17, 0x0

    .line 845
    :goto_f
    if-nez v17, :cond_23

    .line 847
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 849
    move-result v6

    .line 852
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 853
    move-result v3

    .line 856
    invoke-interface {v15, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 857
    move-result-object v17

    .line 860
    :cond_23
    move-object/from16 v3, v17

    .line 861
    check-cast v11, Ljava/util/ArrayList;

    .line 863
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 865
    move-result-object v6

    .line 868
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 869
    move-result v17

    .line 872
    if-eqz v17, :cond_26

    .line 873
    move-object/from16 v17, v7

    .line 875
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 877
    move-result-object v7

    .line 880
    invoke-virtual {v13, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 881
    move-result-object v18

    .line 884
    if-eqz v18, :cond_24

    .line 885
    const/16 v18, 0x1

    .line 887
    goto :goto_11

    .line 889
    :cond_24
    const/16 v18, 0x0

    .line 890
    :goto_11
    if-eqz v18, :cond_25

    .line 892
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_25
    move-object/from16 v7, v17

    .line 897
    goto :goto_10

    .line 899
    :cond_26
    move-object/from16 v17, v7

    .line 900
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 902
    move-result v6

    .line 905
    const/4 v7, 0x1

    .line 906
    if-le v6, v7, :cond_27

    .line 907
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;

    .line 909
    const/4 v7, 0x0

    .line 911
    invoke-direct {v6, v13, v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;I)V

    .line 912
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 915
    :cond_27
    invoke-virtual {v12, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->isSorted(Ljava/util/List;Ljava/util/Comparator;)Z

    .line 918
    move-result v6

    .line 921
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 922
    move-result-object v7

    .line 925
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 926
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 929
    move-result-object v7

    .line 932
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 933
    move-result-object v12

    .line 936
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 937
    move-result v18

    .line 940
    if-eqz v18, :cond_2a

    .line 941
    move/from16 v18, v6

    .line 943
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 945
    move-result-object v6

    .line 948
    invoke-virtual {v13, v6}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 949
    move-result-object v19

    .line 952
    if-nez v19, :cond_28

    .line 953
    const/16 v19, 0x1

    .line 955
    goto :goto_13

    .line 957
    :cond_28
    const/16 v19, 0x0

    .line 958
    :goto_13
    if-eqz v19, :cond_29

    .line 960
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_29
    move/from16 v6, v18

    .line 965
    goto :goto_12

    .line 967
    :cond_2a
    move/from16 v18, v6

    .line 968
    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 970
    invoke-static {v3, v7, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->access$insertPreSortedElementsWithFewestMisOrderings(Ljava/util/List;Ljava/lang/Iterable;Ljava/util/Comparator;)V

    .line 973
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 976
    move-result-object v3

    .line 979
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 980
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 983
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 986
    move/from16 v3, v18

    .line 989
    :goto_14
    and-int/2addr v9, v3

    .line 991
    move-object/from16 v7, v17

    .line 992
    const/4 v3, 0x1

    .line 994
    const/4 v4, 0x0

    .line 995
    goto/16 :goto_e

    .line 996
    :cond_2b
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 998
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    .line 1000
    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 1005
    move-result-object v3

    .line 1008
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    .line 1009
    move-result v3

    .line 1012
    if-nez v3, :cond_43

    .line 1013
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 1015
    new-instance v4, Ljava/util/ArrayList;

    .line 1017
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1022
    move-result v6

    .line 1025
    const/4 v7, 0x0

    .line 1026
    const/4 v11, 0x0

    .line 1027
    const/4 v15, 0x0

    .line 1028
    :goto_15
    if-ge v7, v6, :cond_30

    .line 1029
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1031
    move-result-object v17

    .line 1034
    move/from16 v18, v9

    .line 1035
    move-object/from16 v9, v17

    .line 1037
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 1039
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1041
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 1043
    if-eqz v9, :cond_2c

    .line 1045
    iget v9, v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 1047
    goto :goto_16

    .line 1049
    :cond_2c
    const/4 v9, -0x1

    .line 1050
    :goto_16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1051
    move-result-object v9

    .line 1054
    if-nez v15, :cond_2d

    .line 1055
    move-object/from16 v17, v9

    .line 1057
    goto :goto_17

    .line 1059
    :cond_2d
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1060
    move-result v17

    .line 1063
    if-nez v17, :cond_2f

    .line 1064
    sub-int v15, v7, v11

    .line 1066
    move-object/from16 v17, v9

    .line 1068
    const/4 v9, 0x1

    .line 1070
    if-lt v15, v9, :cond_2e

    .line 1071
    invoke-interface {v3, v11, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1073
    move-result-object v9

    .line 1076
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_2e
    move v11, v7

    .line 1080
    :goto_17
    move-object/from16 v15, v17

    .line 1081
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    .line 1083
    move/from16 v9, v18

    .line 1085
    goto :goto_15

    .line 1087
    :cond_30
    move/from16 v18, v9

    .line 1088
    sub-int v7, v6, v11

    .line 1090
    const/4 v9, 0x1

    .line 1092
    if-lt v7, v9, :cond_31

    .line 1093
    invoke-interface {v3, v11, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1095
    move-result-object v3

    .line 1098
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_31
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1102
    move-result-object v3

    .line 1105
    move/from16 v9, v18

    .line 1106
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1108
    move-result v4

    .line 1111
    if-eqz v4, :cond_42

    .line 1112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1114
    move-result-object v4

    .line 1117
    check-cast v4, Ljava/util/List;

    .line 1118
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 1120
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1125
    move-result v7

    .line 1128
    if-eqz v7, :cond_32

    .line 1129
    move-object v7, v6

    .line 1131
    goto :goto_19

    .line 1132
    :cond_32
    const/4 v7, 0x0

    .line 1133
    :goto_19
    if-nez v7, :cond_33

    .line 1134
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1136
    move-result v7

    .line 1139
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1140
    move-result v11

    .line 1143
    invoke-interface {v6, v7, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1144
    move-result-object v7

    .line 1147
    :cond_33
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1148
    move-result-object v6

    .line 1151
    :cond_34
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1152
    move-result v11

    .line 1155
    if-eqz v11, :cond_36

    .line 1156
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1158
    move-result-object v11

    .line 1161
    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 1162
    move-result-object v15

    .line 1165
    if-eqz v15, :cond_35

    .line 1166
    const/4 v15, 0x1

    .line 1168
    goto :goto_1b

    .line 1169
    :cond_35
    const/4 v15, 0x0

    .line 1170
    :goto_1b
    if-eqz v15, :cond_34

    .line 1171
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1173
    goto :goto_1a

    .line 1176
    :cond_36
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;

    .line 1177
    const/4 v11, 0x1

    .line 1179
    invoke-direct {v6, v13, v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;I)V

    .line 1180
    invoke-virtual {v12, v7, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->isSorted(Ljava/util/List;Ljava/util/Comparator;)Z

    .line 1183
    move-result v11

    .line 1186
    if-nez v11, :cond_37

    .line 1187
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1189
    :cond_37
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1192
    move-result v6

    .line 1195
    if-eqz v6, :cond_3b

    .line 1196
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1198
    move-result-object v4

    .line 1201
    :cond_38
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1202
    move-result v6

    .line 1205
    if-eqz v6, :cond_3a

    .line 1206
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1208
    move-result-object v6

    .line 1211
    invoke-virtual {v13, v6}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 1212
    move-result-object v15

    .line 1215
    if-nez v15, :cond_39

    .line 1216
    const/4 v15, 0x1

    .line 1218
    goto :goto_1d

    .line 1219
    :cond_39
    const/4 v15, 0x0

    .line 1220
    :goto_1d
    if-eqz v15, :cond_38

    .line 1221
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1223
    goto :goto_1c

    .line 1226
    :cond_3a
    move-object/from16 v17, v3

    .line 1227
    move-object/from16 v19, v12

    .line 1229
    const/4 v4, 0x0

    .line 1231
    goto/16 :goto_22

    .line 1232
    :cond_3b
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 1234
    move-result-object v6

    .line 1237
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1238
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 1241
    move-result-object v6

    .line 1244
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1245
    move-result-object v15

    .line 1248
    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1249
    move-result v17

    .line 1252
    if-eqz v17, :cond_3e

    .line 1253
    move-object/from16 v17, v3

    .line 1255
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1257
    move-result-object v3

    .line 1260
    invoke-virtual {v13, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 1261
    move-result-object v18

    .line 1264
    if-nez v18, :cond_3c

    .line 1265
    const/16 v18, 0x1

    .line 1267
    goto :goto_1f

    .line 1269
    :cond_3c
    const/16 v18, 0x0

    .line 1270
    :goto_1f
    if-eqz v18, :cond_3d

    .line 1272
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_3d
    move-object/from16 v3, v17

    .line 1277
    goto :goto_1e

    .line 1279
    :cond_3e
    move-object/from16 v17, v3

    .line 1280
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 1282
    move-result v3

    .line 1285
    const/4 v15, 0x1

    .line 1286
    xor-int/2addr v3, v15

    .line 1287
    if-eqz v3, :cond_41

    .line 1288
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndex$delegate:Lkotlin/Lazy;

    .line 1290
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1292
    move-result-object v15

    .line 1295
    check-cast v15, Ljava/util/HashMap;

    .line 1296
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 1298
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1301
    move-result-object v4

    .line 1304
    const/4 v15, 0x0

    .line 1305
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1306
    move-result v18

    .line 1309
    if-eqz v18, :cond_40

    .line 1310
    move-object/from16 v19, v12

    .line 1312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1314
    move-result-object v12

    .line 1317
    add-int/lit8 v18, v15, 0x1

    .line 1318
    if-ltz v15, :cond_3f

    .line 1320
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1322
    move-result-object v15

    .line 1325
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1326
    move-result-object v20

    .line 1329
    move-object/from16 v21, v4

    .line 1330
    move-object/from16 v4, v20

    .line 1332
    check-cast v4, Ljava/util/HashMap;

    .line 1334
    invoke-interface {v4, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    move/from16 v15, v18

    .line 1339
    move-object/from16 v12, v19

    .line 1341
    move-object/from16 v4, v21

    .line 1343
    goto :goto_20

    .line 1345
    :cond_3f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 1346
    const/4 v4, 0x0

    .line 1349
    throw v4

    .line 1350
    :cond_40
    move-object/from16 v19, v12

    .line 1351
    const/4 v4, 0x0

    .line 1353
    iget-object v12, v14, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndexComparator$delegate:Lkotlin/Lazy;

    .line 1354
    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1356
    move-result-object v12

    .line 1359
    check-cast v12, Ljava/util/Comparator;

    .line 1360
    invoke-static {v7, v6, v12}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->access$insertPreSortedElementsWithFewestMisOrderings(Ljava/util/List;Ljava/lang/Iterable;Ljava/util/Comparator;)V

    .line 1362
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1365
    move-result-object v3

    .line 1368
    check-cast v3, Ljava/util/HashMap;

    .line 1369
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1371
    goto :goto_21

    .line 1374
    :cond_41
    move-object/from16 v19, v12

    .line 1375
    const/4 v4, 0x0

    .line 1377
    :goto_21
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    .line 1378
    move-result-object v3

    .line 1381
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1382
    :goto_22
    and-int/2addr v9, v11

    .line 1385
    move-object/from16 v3, v17

    .line 1386
    move-object/from16 v12, v19

    .line 1388
    goto/16 :goto_18

    .line 1390
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    .line 1392
    goto :goto_23

    .line 1395
    :cond_43
    move/from16 v18, v9

    .line 1396
    :goto_23
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 1398
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1400
    move-result v4

    .line 1403
    if-nez v4, :cond_44

    .line 1404
    goto :goto_26

    .line 1406
    :cond_44
    const/4 v4, 0x0

    .line 1407
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1408
    move-result-object v6

    .line 1411
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 1412
    iget-object v4, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1414
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 1416
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const/4 v6, 0x0

    .line 1421
    const/4 v7, 0x0

    .line 1422
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1423
    move-result v11

    .line 1426
    if-ge v7, v11, :cond_48

    .line 1427
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1429
    move-result-object v11

    .line 1432
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 1433
    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1435
    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 1437
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget v13, v12, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 1442
    iget v14, v4, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 1444
    if-eq v13, v14, :cond_45

    .line 1446
    move-object v4, v12

    .line 1448
    const/4 v6, 0x0

    .line 1449
    :cond_45
    add-int/lit8 v12, v6, 0x1

    .line 1450
    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1452
    iput v6, v13, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 1454
    instance-of v6, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 1456
    if-eqz v6, :cond_47

    .line 1458
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 1460
    iget-object v6, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1462
    if-eqz v6, :cond_46

    .line 1464
    add-int/lit8 v13, v12, 0x1

    .line 1466
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1468
    iput v12, v6, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 1470
    move v12, v13

    .line 1472
    :cond_46
    iget-object v6, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 1473
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1475
    move-result-object v6

    .line 1478
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1479
    move-result v11

    .line 1482
    if-eqz v11, :cond_47

    .line 1483
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1485
    move-result-object v11

    .line 1488
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1489
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 1491
    add-int/lit8 v13, v12, 0x1

    .line 1493
    iput v12, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 1495
    move v12, v13

    .line 1497
    goto :goto_25

    .line 1498
    :cond_47
    move v6, v12

    .line 1499
    add-int/lit8 v7, v7, 0x1

    .line 1500
    goto :goto_24

    .line 1502
    :cond_48
    :goto_26
    if-nez v9, :cond_49

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 1505
    move-result-object v3

    .line 1508
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->onEntryReorderSuppressed()V

    .line 1509
    :cond_49
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1512
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 1515
    const-string v4, "ShadeListBuilder.dispatchOnBeforeFinalizeFilter"

    .line 1517
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1519
    const/4 v7, 0x0

    .line 1522
    :goto_27
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    .line 1523
    check-cast v4, Ljava/util/ArrayList;

    .line 1525
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1527
    move-result v6

    .line 1530
    if-ge v7, v6, :cond_4a

    .line 1531
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1533
    move-result-object v4

    .line 1536
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;

    .line 1537
    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;->onBeforeFinalizeFilter(Ljava/util/List;)V

    .line 1539
    add-int/lit8 v7, v7, 0x1

    .line 1542
    goto :goto_27

    .line 1544
    :cond_4a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1545
    const/16 v3, 0x8

    .line 1548
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 1550
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 1553
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    .line 1555
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    .line 1557
    invoke-virtual {v0, v3, v4, v6}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    .line 1562
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 1565
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    .line 1567
    const/16 v3, 0x9

    .line 1570
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    .line 1572
    const-string v3, "ShadeListBuilder.logChanges"

    .line 1575
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1577
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 1580
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1582
    move-result-object v3

    .line 1585
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1586
    move-result v4

    .line 1589
    if-eqz v4, :cond_4b

    .line 1590
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1592
    move-result-object v4

    .line 1595
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1596
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 1598
    goto :goto_28

    .line 1601
    :cond_4b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1602
    move-result-object v3

    .line 1605
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1606
    move-result-object v3

    .line 1609
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1610
    move-result v4

    .line 1613
    if-eqz v4, :cond_4c

    .line 1614
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1616
    move-result-object v4

    .line 1619
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 1620
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 1622
    goto :goto_29

    .line 1625
    :cond_4c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1626
    const-string v3, "ShadeListBuilder.freeEmptyGroups"

    .line 1629
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1634
    move-result-object v2

    .line 1637
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;

    .line 1638
    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;-><init>()V

    .line 1640
    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1643
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1646
    const-string v2, "ShadeListBuilder.cleanupPluggables"

    .line 1649
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1651
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    .line 1654
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    .line 1657
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    .line 1659
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    .line 1662
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    .line 1665
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    .line 1667
    const/4 v7, 0x0

    .line 1670
    :goto_2a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1671
    move-result v2

    .line 1674
    if-ge v7, v2, :cond_4d

    .line 1675
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1677
    move-result-object v2

    .line 1680
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 1681
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 1683
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1685
    add-int/lit8 v7, v7, 0x1

    .line 1688
    goto :goto_2a

    .line 1690
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 1691
    move-result-object v2

    .line 1694
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 1695
    move-result-object v2

    .line 1698
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    .line 1699
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1702
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 1705
    const-string v3, "ShadeListBuilder.dispatchOnBeforeRenderList"

    .line 1707
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1709
    const/4 v7, 0x0

    .line 1712
    :goto_2b
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    .line 1713
    check-cast v3, Ljava/util/ArrayList;

    .line 1715
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1717
    move-result v4

    .line 1720
    if-ge v7, v4, :cond_4e

    .line 1721
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1723
    move-result-object v3

    .line 1726
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

    .line 1727
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;->onBeforeRenderList(Ljava/util/List;)V

    .line 1729
    add-int/lit8 v7, v7, 0x1

    .line 1732
    goto :goto_2b

    .line 1734
    :cond_4e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1735
    const-string v2, "ShadeListBuilder.onRenderList"

    .line 1738
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1740
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    .line 1743
    if-eqz v2, :cond_52

    .line 1745
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 1747
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 1749
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    const-wide/16 v6, 0x1000

    .line 1754
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 1756
    move-result v4

    .line 1759
    if-eqz v4, :cond_50

    .line 1760
    const-string v4, "RenderStageManager.onRenderList"

    .line 1762
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1764
    :try_start_0
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 1767
    if-nez v4, :cond_4f

    .line 1769
    goto :goto_2c

    .line 1771
    :cond_4f
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->onRenderList(Ljava/util/List;)V

    .line 1772
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    .line 1775
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderGroups(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    .line 1778
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderEntries(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    :goto_2c
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1784
    goto :goto_2d

    .line 1787
    :catchall_0
    move-exception v0

    .line 1788
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1789
    throw v0

    .line 1792
    :cond_50
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 1793
    if-nez v4, :cond_51

    .line 1795
    goto :goto_2d

    .line 1797
    :cond_51
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->onRenderList(Ljava/util/List;)V

    .line 1798
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    .line 1801
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderGroups(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    .line 1804
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderEntries(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    .line 1807
    :cond_52
    :goto_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1810
    const-string v2, "ShadeListBuilder.logEndBuildList"

    .line 1813
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1815
    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 1818
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 1820
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1822
    move-result v3

    .line 1825
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 1826
    const/4 v6, 0x0

    .line 1828
    const/4 v7, 0x0

    .line 1829
    :goto_2e
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1830
    move-result v8

    .line 1833
    if-ge v7, v8, :cond_54

    .line 1834
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1836
    move-result-object v8

    .line 1839
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 1840
    instance-of v9, v8, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 1842
    if-eqz v9, :cond_53

    .line 1844
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 1846
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 1848
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1850
    move-result v8

    .line 1853
    add-int/2addr v8, v6

    .line 1854
    move v6, v8

    .line 1855
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1856
    goto :goto_2e

    .line 1858
    :cond_54
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 1859
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    .line 1861
    move-result v4

    .line 1864
    const/4 v7, 0x1

    .line 1865
    xor-int/2addr v4, v7

    .line 1866
    invoke-virtual {v5, v2, v3, v6, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEndBuildList(IIIZ)V

    .line 1867
    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 1870
    rem-int/lit8 v2, v2, 0xa

    .line 1872
    if-nez v2, :cond_55

    .line 1874
    const-string v2, "ShadeListBuilder.logFinalList"

    .line 1876
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1878
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    .line 1881
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFinalList(Ljava/util/List;)V

    .line 1883
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1886
    :cond_55
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1889
    const/4 v2, 0x0

    .line 1892
    iput v2, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 1893
    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 1895
    const/4 v2, 0x1

    .line 1897
    add-int/2addr v1, v2

    .line 1898
    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 1899
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1901
    return-void

    .line 1904
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1907
    const-string v3, "Required state is <1 but actual state is "

    .line 1909
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1911
    iget v1, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 1914
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1919
    move-result-object v1

    .line 1922
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1923
    throw v0
    .line 1926
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string v2, "\tShadeListBuilder shade notifications:"

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 11
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 16
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    const-string v3, "\t\t None"

    .line 27
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 35
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    .line 38
    const-string v9, "\t\t"

    .line 40
    new-instance v10, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v11, "\t\t  "

    .line 47
    const/4 v12, 0x0

    .line 49
    move v13, v12

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    move-result v3

    .line 54
    if-ge v13, v3, :cond_3

    .line 55
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    move-object v14, v3

    .line 61
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 62
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 67
    const/4 v7, 0x1

    .line 68
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 72
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    .line 73
    invoke-virtual {v15, v3}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    .line 75
    move-result v8

    .line 78
    move-object v3, v14

    .line 79
    move-object v5, v9

    .line 80
    move-object v6, v10

    .line 81
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 82
    instance-of v3, v14, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 85
    if-eqz v3, :cond_2

    .line 87
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 89
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 91
    if-eqz v3, :cond_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v5, ":*"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 111
    const/4 v7, 0x1

    .line 112
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 116
    invoke-virtual {v15, v5}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    .line 117
    move-result v8

    .line 120
    move-object v5, v11

    .line 121
    move-object v6, v10

    .line 122
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 123
    :cond_1
    move v8, v12

    .line 126
    :goto_1
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 129
    move-result v4

    .line 132
    if-ge v8, v4, :cond_2

    .line 133
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 138
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v5, "."

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 160
    const/4 v7, 0x1

    .line 161
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 162
    move-result-object v5

    .line 165
    invoke-virtual {v15, v5}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    .line 166
    move-result v16

    .line 169
    move-object v5, v11

    .line 170
    move-object v6, v10

    .line 171
    move/from16 v17, v8

    .line 172
    move/from16 v8, v16

    .line 174
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 176
    add-int/lit8 v8, v17, 0x1

    .line 179
    goto :goto_1

    .line 181
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 189
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return-void
    .line 193
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    .line 1
    const-string v0, "choreographer"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    .line 9
    const-string v1, "notifPreGroupFilters"

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Ljava/util/List;

    .line 16
    const-string v1, "onBeforeTransformGroupsListeners"

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    .line 23
    const-string v1, "notifPromoters"

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    .line 30
    const-string v1, "onBeforeSortListeners"

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    .line 37
    const-string v1, "notifSections"

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    .line 44
    const-string v1, "notifComparators"

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Ljava/util/List;

    .line 51
    const-string v1, "onBeforeFinalizeFilterListeners"

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    .line 58
    const-string v1, "notifFinalizeFilters"

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Ljava/util/List;

    .line 65
    const-string v1, "onBeforeRenderListListeners"

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v0, "onRenderListListener"

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPostBuildList:Z

    .line 79
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    const-string v0, "PostBuildList"

    .line 85
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
    .line 90
.end method

.method public final filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "ShadeListBuilder.filterNotifs"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v0

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_5

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 32
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 34
    if-eqz v2, :cond_3

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 38
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 40
    invoke-static {v2, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    const/4 v3, 0x0

    .line 48
    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 49
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 51
    :cond_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v3

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 62
    if-ltz v3, :cond_2

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 70
    invoke-static {v4, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    .line 72
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    move-object v2, p1

    .line 89
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 90
    invoke-static {v2, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    .line 92
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 98
    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_0

    .line 105
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    return-void
    .line 109
.end method

.method public final getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 2
    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;

    .line 6
    :cond_0
    return-object p0
    .line 8
.end method

.method public final logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 2
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v2

    .line 9
    if-nez v2, :cond_a

    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 12
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 14
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 16
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    .line 18
    invoke-virtual {v5, v2, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEntryAttachStateChanged(ILcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    .line 20
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 23
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 25
    if-eq p1, v2, :cond_0

    .line 27
    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 29
    invoke-virtual {v5, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChanged(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    .line 31
    :cond_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 34
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 36
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 38
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 40
    if-eqz v2, :cond_2

    .line 42
    if-eqz v3, :cond_1

    .line 44
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 46
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 56
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 58
    invoke-virtual {v5, v4, v2, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChangeSuppressedStarted(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    .line 60
    :cond_2
    if-eqz v3, :cond_3

    .line 63
    if-nez v2, :cond_3

    .line 65
    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 67
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 69
    invoke-virtual {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChangeSuppressedStopped(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    .line 71
    :cond_3
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 74
    if-eqz v2, :cond_4

    .line 76
    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 78
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 80
    invoke-virtual {v5, v3, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logSectionChangeSuppressed(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V

    .line 82
    :cond_4
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 85
    if-eqz p1, :cond_5

    .line 87
    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 89
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 91
    invoke-virtual {v5, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logGroupPruningSuppressed(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    .line 93
    :cond_5
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 96
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 98
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 106
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 108
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 110
    invoke-virtual {v5, v2, v3, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPrunedReasonChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    :cond_6
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 115
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 117
    if-eq p1, v2, :cond_7

    .line 119
    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 121
    invoke-virtual {v5, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFilterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 123
    :cond_7
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 126
    if-nez p1, :cond_8

    .line 128
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 130
    if-eqz p1, :cond_8

    .line 132
    const/4 p1, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_8
    const/4 p1, 0x0

    .line 136
    :goto_0
    if-nez p1, :cond_9

    .line 137
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 139
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 141
    if-eq v2, v3, :cond_9

    .line 143
    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 145
    invoke-virtual {v5, v4, v3, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPromoterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    .line 147
    :cond_9
    if-nez p1, :cond_a

    .line 150
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 152
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 154
    if-eq p1, v0, :cond_a

    .line 156
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    .line 158
    invoke-virtual {v5, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logSectionChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V

    .line 160
    :cond_a
    return-void
    .line 163
.end method

.method public final maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 10
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 12
    if-ne v0, v3, :cond_1

    .line 14
    return v1

    .line 16
    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 17
    if-eq v0, v4, :cond_2

    .line 19
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 21
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 23
    if-nez v5, :cond_2

    .line 25
    return v1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 28
    move-result-object v5

    .line 31
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isGroupChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 32
    move-result v5

    .line 35
    if-nez v5, :cond_5

    .line 36
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 38
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 40
    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 42
    if-ne v0, v4, :cond_3

    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 49
    :cond_3
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 50
    check-cast p2, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    .line 57
    check-cast p0, Landroid/util/ArrayMap;

    .line 59
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 66
    if-nez p2, :cond_4

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_5
    return v1
    .line 74
.end method

.method public final pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V
    .locals 7

    .line 1
    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, p2, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 15
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 18
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 20
    if-eqz v3, :cond_1

    .line 22
    move v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v4, v1

    .line 26
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 27
    if-eqz v4, :cond_2

    .line 29
    const/4 v5, 0x0

    .line 31
    iput-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 32
    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    const-string v6, "SUMMARY with too few children @ "

    .line 39
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget v6, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 44
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 46
    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 56
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 57
    iput-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 59
    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    move-result v3

    .line 66
    if-nez v3, :cond_5

    .line 67
    if-eqz v4, :cond_3

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    const-string v4, "CHILD with "

    .line 73
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 78
    move-result v4

    .line 81
    sub-int/2addr v4, v2

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, " siblings @ "

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 91
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "CHILD with no summary @ "

    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 112
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 124
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 125
    move-result v2

    .line 128
    if-ge v1, v2, :cond_4

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 135
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 137
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 139
    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 141
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p0, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    goto :goto_2

    .line 150
    :cond_4
    invoke-interface {p1, p3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 151
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    :cond_5
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    .line 157
    return-void
    .line 160
.end method

.method public final pruneIncompleteGroups(Ljava/util/List;)V
    .locals 11

    .line 1
    const-string v0, "ShadeListBuilder.pruneIncompleteGroups"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 18
    move-result-object v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 23
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25
    move v2, v1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 32
    if-ge v2, v3, :cond_2

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 39
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 41
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 43
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 45
    if-eqz v3, :cond_1

    .line 47
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    new-instance v2, Landroid/util/ArraySet;

    .line 57
    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    .line 62
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v3

    .line 67
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 78
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    move-result-object v5

    .line 83
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 84
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 86
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 92
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    .line 96
    move-result v6

    .line 99
    if-nez v6, :cond_3

    .line 100
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 102
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 104
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_2

    .line 115
    :cond_4
    move v3, v1

    .line 116
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    move-result v4

    .line 120
    if-ge v3, v4, :cond_6

    .line 121
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 126
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 127
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 129
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 131
    if-eqz v5, :cond_5

    .line 133
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 135
    move-result-object v4

    .line 138
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 139
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 141
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 148
    goto :goto_3

    .line 150
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    move-result v3

    .line 154
    const/4 v4, 0x1

    .line 155
    sub-int/2addr v3, v4

    .line 156
    :goto_4
    if-ltz v3, :cond_12

    .line 157
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 162
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 163
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 165
    if-eqz v6, :cond_11

    .line 167
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 169
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 171
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 173
    if-eqz v7, :cond_7

    .line 175
    move v7, v4

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    move v7, v1

    .line 179
    :goto_5
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 180
    if-eqz v7, :cond_a

    .line 182
    move-object v9, v6

    .line 184
    check-cast v9, Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 187
    move-result v9

    .line 190
    if-nez v9, :cond_a

    .line 191
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 193
    move-result v6

    .line 196
    if-eqz v6, :cond_8

    .line 197
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    .line 199
    goto/16 :goto_9

    .line 202
    :cond_8
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 204
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 206
    move-result v6

    .line 209
    const-string v7, "group should have no children"

    .line 210
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 212
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 215
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 217
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 219
    iput-object v7, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 221
    invoke-interface {p1, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v7

    .line 226
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 227
    if-ne v7, v5, :cond_9

    .line 229
    move v7, v4

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    move v7, v1

    .line 233
    :goto_6
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 234
    const/4 v7, 0x0

    .line 237
    iput-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 238
    invoke-static {v5, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/util/List;)V

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    const-string v7, "SUMMARY with no children @ "

    .line 245
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 250
    iget v7, v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 252
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 254
    move-result-object v7

    .line 257
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v5

    .line 264
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 265
    iput-object v5, v6, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 267
    goto/16 :goto_9

    .line 269
    :cond_a
    if-nez v7, :cond_b

    .line 271
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    .line 273
    goto/16 :goto_9

    .line 276
    :cond_b
    check-cast v6, Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 280
    move-result v9

    .line 283
    const/4 v10, 0x2

    .line 284
    if-ge v9, v10, :cond_11

    .line 285
    const-string v9, "group must have summary at this point"

    .line 287
    invoke-static {v7, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 289
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 292
    move-result v7

    .line 295
    xor-int/2addr v7, v4

    .line 296
    const-string v9, "empty group should have been promoted"

    .line 297
    invoke-static {v7, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 299
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 302
    move-result v7

    .line 305
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 306
    if-eqz v7, :cond_c

    .line 308
    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 310
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 312
    goto :goto_9

    .line 314
    :cond_c
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 315
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 317
    if-eqz v7, :cond_d

    .line 319
    move v7, v4

    .line 321
    goto :goto_7

    .line 322
    :cond_d
    move v7, v1

    .line 323
    :goto_7
    if-eqz v7, :cond_e

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    .line 326
    move-result-object v7

    .line 329
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isGroupPruneAllowed(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Z

    .line 330
    move-result v7

    .line 333
    if-nez v7, :cond_e

    .line 334
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 336
    move-result v5

    .line 339
    xor-int/2addr v5, v4

    .line 340
    const-string v6, "empty group should have been pruned"

    .line 341
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 343
    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 346
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 348
    goto :goto_9

    .line 350
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAlertManager:Ldagger/Lazy;

    .line 351
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 353
    move-result-object v6

    .line 356
    check-cast v6, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;

    .line 357
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 359
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    if-nez v7, :cond_f

    .line 364
    goto :goto_8

    .line 366
    :cond_f
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 367
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 369
    move-result-object v8

    .line 372
    invoke-virtual {v8}, Landroid/app/Notification;->getGroupAlertBehavior()I

    .line 373
    move-result v8

    .line 376
    if-ne v8, v4, :cond_10

    .line 377
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 379
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->buzzBeeped:Z

    .line 381
    if-nez v8, :cond_10

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    .line 385
    const-string v9, "buzzBeepBlinkForPrunedGroup: "

    .line 387
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 392
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    move-result-object v8

    .line 400
    const-string v9, "NotificationAlertController"

    .line 401
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->buzzBeepBlink(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 406
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 409
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->buzzBeeped:Z

    .line 411
    :cond_10
    :goto_8
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    .line 413
    :cond_11
    :goto_9
    add-int/lit8 v3, v3, -0x1

    .line 416
    goto/16 :goto_4

    .line 418
    :cond_12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 420
    return-void
    .line 423
.end method

.method public final rebuildListIfBefore(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 2
    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->scheduleRebuild(IZ)V

    .line 9
    return-void

    .line 12
    :cond_0
    if-le p1, v0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->scheduleRebuild(IZ)V

    .line 17
    return-void
    .line 20
.end method

.method public final scheduleRebuild(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 2
    const-string/jumbo v1, "scheduleRebuild"

    .line 4
    const-wide/16 v2, 0x1000

    .line 7
    if-nez p2, :cond_0

    .line 9
    const/4 v4, 0x0

    .line 11
    iput v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    const-string v4, "reentrant: "

    .line 16
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string p2, " rebuildState: "

    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->schedule()V

    .line 39
    return-void

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 43
    iget p2, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    .line 45
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 54
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 55
    const-string v5, "Reentrant notification pipeline rebuild of state "

    .line 57
    const-string v6, " while pipeline in state "

    .line 59
    const-string v7, "."

    .line 61
    invoke-static {v5, p1, v6, p2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 66
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    iget v5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 72
    iput v5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    .line 74
    const/4 v6, 0x3

    .line 76
    const-string v7, "ShadeListBuilder"

    .line 77
    if-gt v5, v6, :cond_1

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "Allowing "

    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    .line 88
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string p0, " consecutive reentrant notification pipeline rebuild(s)."

    .line 93
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-static {v7, p0, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    const-string v4, "rebuildStateName: "

    .line 107
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, " currentStateName: "

    .line 115
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->schedule()V

    .line 124
    return-void

    .line 127
    :cond_1
    const-string p0, "Crashing after more than 3 consecutive reentrant notification pipeline rebuilds."

    .line 128
    invoke-static {v7, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    throw v4
    .line 133
.end method

.method public final setSectioners(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 31
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    move-result v3

    .line 38
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;I)V

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 45
    const/4 v4, 0x1

    .line 47
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 48
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;

    .line 51
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->comparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    .line 53
    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 57
    const/4 v3, 0x2

    .line 59
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 60
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 66
    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    move-result v1

    .line 73
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;I)V

    .line 74
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p0, Landroid/util/ArraySet;

    .line 80
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 85
    move-result p1

    .line 88
    const/4 v1, 0x0

    .line 89
    if-lez p1, :cond_2

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 96
    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 98
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object p1

    .line 103
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 114
    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 116
    if-eq v1, v2, :cond_4

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v1

    .line 123
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 127
    if-nez v1, :cond_3

    .line 128
    goto :goto_2

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, "setSectioners with non contiguous sections "

    .line 135
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 141
    const-string v1, " has an already seen bucket"

    .line 143
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0

    .line 152
    :cond_4
    :goto_2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_1

    .line 162
    :cond_5
    return-void
    .line 163
.end method
