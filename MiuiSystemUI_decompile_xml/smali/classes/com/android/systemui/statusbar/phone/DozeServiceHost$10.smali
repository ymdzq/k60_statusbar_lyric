.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mInteractive:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mInteractive:Z

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$10;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenStateGXZWRequested:Z

    .line 8
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->needUpdateDozeAfterScreenOffLate:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozeAfterScreenOff(Z)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
