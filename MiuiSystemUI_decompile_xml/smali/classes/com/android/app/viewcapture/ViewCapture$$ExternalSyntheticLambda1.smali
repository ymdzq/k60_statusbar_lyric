.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 8
    check-cast p1, Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 16
    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;

    .line 20
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;I)V

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 26
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 31
    check-cast p1, Lcom/android/app/viewcapture/data/WindowData;

    .line 33
    invoke-static {}, Lcom/android/app/viewcapture/data/MotionWindowData;->newBuilder()Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/android/app/viewcapture/data/WindowData;->getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 39
    move-result-object p1

    .line 42
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 43
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 46
    check-cast v1, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 48
    invoke-static {v1, p1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$400(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    .line 50
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 53
    move-result-object p0

    .line 56
    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;

    .line 57
    invoke-direct {p1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda9;-><init>()V

    .line 59
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 62
    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 70
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 73
    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 75
    invoke-static {p1, p0}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$900(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 80
    move-result-object p0

    .line 83
    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 84
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 88
.end method
