.class public abstract Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

.field public final mCreationTime:J

.field public final mKey:Ljava/lang/String;

.field public final mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 7
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;-><init>()V

    .line 9
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;-><init>(Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;)V

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 19
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;-><init>()V

    .line 21
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;-><init>(Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mCreationTime:J

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final beginNewAttachState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mPreviousAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 25
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 27
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 34
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 36
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 38
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 40
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 42
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 44
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 46
    iget v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 48
    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 50
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 55
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    .line 63
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 65
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 67
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    .line 70
    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    .line 73
    return-void
    .line 75
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.end method
