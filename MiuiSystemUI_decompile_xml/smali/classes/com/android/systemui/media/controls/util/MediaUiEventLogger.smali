.class public final Lcom/android/systemui/media/controls/util/MediaUiEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final logger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    .line 7
    const/high16 v0, 0x100000

    .line 9
    invoke-direct {p1, v0}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final getNewInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final logCarouselPosition(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "Unknown media carousel location "

    .line 18
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 27
    :cond_1
    sget-object p1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    sget-object p1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 36
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 38
    return-void
    .line 41
.end method

.method public final logMediaRemoved(ILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 4
    invoke-interface {p0, v0, p1, p3, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 6
    return-void
    .line 9
.end method
