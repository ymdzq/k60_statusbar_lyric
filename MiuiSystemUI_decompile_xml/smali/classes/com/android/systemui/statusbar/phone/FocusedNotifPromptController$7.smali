.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;->val$tag:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsAnimating:Z

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;->val$tag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->onAnimCompleted(Ljava/lang/String;ZZ)V

    .line 9
    return-void
    .line 12
.end method
