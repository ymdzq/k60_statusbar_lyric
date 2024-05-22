.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cb:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;->$cb:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;->$cb:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;I)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 15
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
    .line 22
.end method
