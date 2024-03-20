.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

.field public static final INSTANCE$1:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

.field public static final INSTANCE$2:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

.field public static final INSTANCE$3:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

.field public static final INSTANCE$5:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE$1:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 10
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE$2:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;-><init>(I)V

    .line 21
    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 26
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;-><init>(I)V

    .line 29
    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE$3:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 36
    const/4 v1, 0x5

    .line 38
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;-><init>(I)V

    .line 39
    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->INSTANCE$5:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;

    .line 42
    return-void
    .line 44
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->$r8$classId:I

    const-string v0, "OngoingCallController"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    return-void

    .line 8
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    return-void

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mOngoingProcessRequiresStatusBarVisible:Z

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void

    .line 13
    :pswitch_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mOngoingProcessRequiresStatusBarVisible:Z

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void

    .line 16
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mOngoingProcessRequiresStatusBarVisible:Z

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V

    return-void

    .line 3
    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V

    return-void

    .line 4
    :pswitch_3
    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    return-void

    .line 5
    :pswitch_4
    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    return-void

    .line 6
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$removeChip$1;->accept(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
