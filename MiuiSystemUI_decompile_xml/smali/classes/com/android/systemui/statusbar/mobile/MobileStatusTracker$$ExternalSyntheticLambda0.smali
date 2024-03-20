.class public final synthetic Lcom/android/systemui/statusbar/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
