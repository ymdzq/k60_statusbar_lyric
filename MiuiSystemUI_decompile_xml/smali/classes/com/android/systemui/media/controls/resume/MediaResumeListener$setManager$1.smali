.class public final Lcom/android/systemui/media/controls/resume/MediaResumeListener$setManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener$setManager$1;->this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener$setManager$1;->this$0:Lcom/android/systemui/media/controls/resume/MediaResumeListener;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string p2, "qs_media_resumption"

    .line 10
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->useMediaResumption:Z

    .line 17
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 19
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x0

    .line 23
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->useMediaResumption:Z

    .line 24
    if-nez p2, :cond_1

    .line 26
    goto/16 :goto_2

    .line 28
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->useMediaResumption:Z

    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 32
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    iget-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 39
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 63
    iget-boolean v3, v3, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 65
    xor-int/2addr v3, v0

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 82
    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 99
    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 112
    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 122
    iget v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 129
    check-cast v2, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 130
    iget-object v2, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 138
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 140
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 142
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    .line 144
    goto :goto_1

    .line 147
    :cond_4
    :goto_2
    return-void
.end method
