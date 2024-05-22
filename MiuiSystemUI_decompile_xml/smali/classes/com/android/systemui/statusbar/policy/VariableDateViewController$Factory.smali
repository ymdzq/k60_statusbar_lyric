.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final handler:Landroid/os/Handler;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->handler:Landroid/os/Handler;

    .line 9
    return-void
    .line 11
.end method
