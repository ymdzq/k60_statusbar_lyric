.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public alertExceptionExpires:J

.field public cancelTimeoutRunnable:Ljava/lang/Runnable;

.field public final key:Ljava/lang/String;

.field public shouldFilter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->key:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method
