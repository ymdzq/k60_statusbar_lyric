.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final isLowPriority:Z

.field public final showSnooze:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->isLowPriority:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->showSnooze:Z

    .line 7
    return-void
    .line 9
.end method
