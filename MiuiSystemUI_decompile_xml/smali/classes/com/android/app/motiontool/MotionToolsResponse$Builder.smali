.class public final Lcom/android/app/motiontool/MotionToolsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->access$000()Lcom/android/app/motiontool/MotionToolsResponse;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/app/motiontool/ErrorResponse;

    .line 13
    invoke-static {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse;->access$200(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/ErrorResponse;)V

    .line 15
    return-void
    .line 18
.end method
