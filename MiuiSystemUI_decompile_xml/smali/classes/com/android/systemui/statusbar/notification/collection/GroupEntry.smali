.class public final Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
.super Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;


# instance fields
.field public final mChildren:Ljava/util/List;

.field public mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mUnmodifiableChildren:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 2
    const-string v1, "<root>"

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;J)V

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;-><init>(Ljava/lang/String;J)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    .line 10
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    return-object p0
    .line 4
.end method
