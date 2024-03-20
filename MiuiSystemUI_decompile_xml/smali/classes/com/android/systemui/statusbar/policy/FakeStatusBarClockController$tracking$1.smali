.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->tracking:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimPending:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    move v1, v2

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setClockShow(Z)V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 31
    if-nez v0, :cond_2

    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->tracking:Z

    .line 35
    if-nez v0, :cond_2

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimPending:Z

    .line 39
    if-eqz v0, :cond_3

    .line 41
    :cond_2
    move v1, v2

    .line 43
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setClockShow(Z)V

    .line 44
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
