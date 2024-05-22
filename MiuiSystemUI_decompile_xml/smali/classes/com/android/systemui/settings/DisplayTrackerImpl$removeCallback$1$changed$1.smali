.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 9
    packed-switch v0, :pswitch_data_1

    .line 11
    goto :goto_0

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 47
    :cond_0
    :goto_1
    return v1

    .line 48
    :goto_2
    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 49
    packed-switch v0, :pswitch_data_2

    .line 51
    goto :goto_3

    .line 54
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 55
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 57
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 63
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 70
    goto :goto_4

    .line 71
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 72
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 80
    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 87
    :cond_1
    :goto_4
    return v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 96
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 102
.end method
