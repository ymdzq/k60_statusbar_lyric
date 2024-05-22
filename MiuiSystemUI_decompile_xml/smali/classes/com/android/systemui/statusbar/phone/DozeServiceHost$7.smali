.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$7;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardShowing:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mInteractive:Z

    .line 9
    if-nez p1, :cond_0

    .line 11
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->needUpdateDozeAfterScreenOffLate:Z

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$7;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozeAfterScreenOff(Z)V

    .line 19
    :cond_1
    :goto_0
    return-void
    .line 22
.end method
