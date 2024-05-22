.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    .line 12
    cmp-long v0, v0, v2

    .line 14
    if-ltz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    .line 26
    :cond_2
    :goto_1
    return-void
    .line 29
.end method
