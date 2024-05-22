.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowViewController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 10
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 15
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 24
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    move-result-wide v0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 35
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 37
    const-string v2, "LOCK_ICON_TOUCH"

    .line 39
    const/4 v3, 0x4

    .line 41
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(Ljava/lang/String;IJ)V

    .line 42
    return-void
    .line 45
.end method
