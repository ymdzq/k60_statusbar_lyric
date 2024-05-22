.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId$inlined:I

.field public final synthetic $it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 4
    iput p2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$displayId$inlined:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-interface {p0}, Lcom/android/systemui/settings/DisplayTracker$Callback;->onDisplayChanged()V

    .line 20
    :cond_0
    return-void

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    iget p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$displayId$inlined:I

    .line 36
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/DisplayTracker$Callback;->onDisplayAdded(I)V

    .line 38
    :cond_1
    return-void

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;->$displayId$inlined:I

    .line 54
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/DisplayTracker$Callback;->onDisplayRemoved(I)V

    .line 56
    :cond_2
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
