.class public final Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController$TimeListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/ClockFaceController;

    .line 4
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onTimeTick()V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method
