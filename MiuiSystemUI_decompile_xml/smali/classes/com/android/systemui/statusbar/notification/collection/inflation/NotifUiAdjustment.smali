.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final hideSensitiveByAppLock:Z

.field public final isConversation:Z

.field public final isMinimized:Z

.field public final isSnoozeEnabled:Z

.field public final needsRedaction:Z

.field public final smartActions:Ljava/util/List;

.field public final smartReplies:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->hideSensitiveByAppLock:Z

    .line 17
    return-void
    .line 19
.end method
