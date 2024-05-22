.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $collapse:Z

.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->$collapse:Z

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->$collapse:Z

    .line 6
    xor-int/lit8 v2, v2, 0x1

    .line 8
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 10
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 14
    new-instance v4, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    .line 18
    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V

    .line 20
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/16 v10, 0x7e

    .line 28
    invoke-static/range {v3 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    .line 30
    return-void
    .line 33
.end method
