.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final callbacks:Ljava/util/Set;

.field public invalidated:Z

.field public row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    .line 10
    return-void
    .line 12
.end method
