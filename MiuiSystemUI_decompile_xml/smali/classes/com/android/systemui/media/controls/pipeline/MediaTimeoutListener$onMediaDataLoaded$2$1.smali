.class public final Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 38
    sget-object v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logDelayedUpdate$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logDelayedUpdate$2;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 42
    const-string v4, "MediaTimeout"

    .line 44
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 47
    move-result-object v2

    .line 50
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    .line 59
    if-eqz v0, :cond_1

    .line 61
    move-object v5, v0

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    invoke-interface {v5, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    return-void
    .line 71
.end method
