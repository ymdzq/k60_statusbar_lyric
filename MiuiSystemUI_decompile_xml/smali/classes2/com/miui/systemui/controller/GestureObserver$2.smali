.class public final Lcom/miui/systemui/controller/GestureObserver$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
