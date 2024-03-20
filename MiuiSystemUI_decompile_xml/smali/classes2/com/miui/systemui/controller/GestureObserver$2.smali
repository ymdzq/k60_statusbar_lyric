.class public final Lcom/miui/systemui/controller/GestureObserver$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/GestureObserver;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/GestureObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$2;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver$2;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mInPinnedMode:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/miui/systemui/controller/GestureObserver;->mInPinnedMode:Z

    .line 8
    invoke-virtual {p0}, Lcom/miui/systemui/controller/GestureObserver;->updateFullscreenDisableState()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
