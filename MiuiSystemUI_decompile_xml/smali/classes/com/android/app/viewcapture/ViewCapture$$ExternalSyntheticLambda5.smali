.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    .line 4
    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    .line 9
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    .line 11
    check-cast p1, Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 15
    move-result-object p1

    .line 18
    new-instance v2, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;

    .line 19
    invoke-direct {v2, v0, p0, v1}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;-><init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V

    .line 21
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 28
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$0:Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    .line 33
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    .line 35
    check-cast p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/app/viewcapture/data/WindowData;->newBuilder()Lcom/android/app/viewcapture/data/WindowData$Builder;

    .line 42
    move-result-object v2

    .line 45
    iget-object v3, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 48
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 51
    check-cast v4, Lcom/android/app/viewcapture/data/WindowData;

    .line 53
    invoke-static {v4, v3}, Lcom/android/app/viewcapture/data/WindowData;->access$700(Lcom/android/app/viewcapture/data/WindowData;Ljava/lang/String;)V

    .line 55
    iget-object v3, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 58
    iget-object v4, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 60
    iget v4, v4, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    .line 62
    add-int/lit8 v5, v4, -0x1

    .line 64
    aget-object v3, v3, v5

    .line 66
    if-nez v3, :cond_0

    .line 68
    iget v3, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 70
    add-int/lit8 v4, v3, 0x1

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 74
    if-ltz v4, :cond_1

    .line 76
    iget-object v1, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 78
    iget v1, v1, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    .line 80
    iget v3, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 82
    add-int/2addr v3, v1

    .line 84
    sub-int/2addr v3, v4

    .line 85
    rem-int/2addr v3, v1

    .line 86
    invoke-static {}, Lcom/android/app/viewcapture/data/ViewNode;->newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;

    .line 87
    move-result-object v1

    .line 90
    iget-object v5, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 91
    aget-object v5, v5, v3

    .line 93
    invoke-virtual {v5, v0, p0, v1}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 95
    invoke-static {}, Lcom/android/app/viewcapture/data/FrameData;->newBuilder()Lcom/android/app/viewcapture/data/FrameData$Builder;

    .line 98
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 102
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 105
    check-cast v6, Lcom/android/app/viewcapture/data/FrameData;

    .line 107
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 109
    move-result-object v1

    .line 112
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 113
    invoke-static {v6, v1}, Lcom/android/app/viewcapture/data/FrameData;->access$300(Lcom/android/app/viewcapture/data/FrameData;Lcom/android/app/viewcapture/data/ViewNode;)V

    .line 115
    iget-object v1, p1, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    .line 118
    aget-wide v6, v1, v3

    .line 120
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 122
    iget-object v1, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 125
    check-cast v1, Lcom/android/app/viewcapture/data/FrameData;

    .line 127
    invoke-static {v1, v6, v7}, Lcom/android/app/viewcapture/data/FrameData;->access$100(Lcom/android/app/viewcapture/data/FrameData;J)V

    .line 129
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 132
    iget-object v1, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 135
    check-cast v1, Lcom/android/app/viewcapture/data/WindowData;

    .line 137
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 139
    move-result-object v3

    .line 142
    check-cast v3, Lcom/android/app/viewcapture/data/FrameData;

    .line 143
    invoke-static {v1, v3}, Lcom/android/app/viewcapture/data/WindowData;->access$200(Lcom/android/app/viewcapture/data/WindowData;Lcom/android/app/viewcapture/data/FrameData;)V

    .line 145
    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 149
    move-result-object p0

    .line 152
    check-cast p0, Lcom/android/app/viewcapture/data/WindowData;

    .line 153
    return-object p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 156
.end method
