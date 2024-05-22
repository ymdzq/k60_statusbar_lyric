.class public final synthetic Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;

    .line 6
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/mobile/MobileStatusTracker;->mCallback:Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/systemui/statusbar/mobile/MobileStatusTracker$MobileStatus;)V

    .line 14
    return-void
    .line 17
.end method
