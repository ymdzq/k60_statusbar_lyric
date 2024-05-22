.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    iget p2, p1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 4
    if-nez p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getRelativeScrollX()I

    .line 11
    move-result p1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 15
    iget p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 17
    div-int p3, p1, p2

    .line 19
    rem-int/2addr p1, p2

    .line 21
    iget p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 22
    const/4 p3, 0x1

    .line 24
    const/4 p4, 0x0

    .line 25
    if-eqz p2, :cond_1

    .line 26
    move p2, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p2, p4

    .line 30
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 31
    if-eqz p1, :cond_2

    .line 33
    move p5, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move p5, p4

    .line 37
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 38
    if-nez v0, :cond_3

    .line 40
    if-eq p2, p5, :cond_5

    .line 42
    :cond_3
    iput p4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 44
    if-eqz v0, :cond_4

    .line 46
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 48
    if-eqz p2, :cond_4

    .line 50
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->qsExpanded:Z

    .line 52
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object p2

    .line 57
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    .line 58
    invoke-interface {p5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object p5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAROUSEL_PAGE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 68
    const/4 v0, 0x0

    .line 70
    iget-object p2, p2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 71
    invoke-interface {p2, p5, p4, v0, p4}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    .line 76
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    invoke-interface {p2, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 83
    :cond_5
    iget p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 86
    int-to-float p2, p2

    .line 88
    iget p5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 89
    const/4 v0, 0x0

    .line 91
    if-lez p5, :cond_6

    .line 92
    int-to-float p1, p1

    .line 94
    int-to-float p5, p5

    .line 95
    div-float/2addr p1, p5

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    move p1, v0

    .line 98
    :goto_2
    add-float/2addr p2, p1

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->isRtl()Z

    .line 100
    move-result p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 108
    move-result p1

    .line 111
    int-to-float p1, p1

    .line 112
    sub-float/2addr p1, p2

    .line 113
    int-to-float p2, p3

    .line 114
    sub-float p2, p1, p2

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 117
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 119
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 122
    cmpg-float p1, p1, v0

    .line 124
    if-nez p1, :cond_8

    .line 126
    move p1, p3

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    move p1, p4

    .line 130
    :goto_3
    if-eqz p1, :cond_a

    .line 131
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 133
    if-eqz p1, :cond_9

    .line 135
    goto :goto_4

    .line 137
    :cond_9
    move p3, p4

    .line 138
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 139
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    .line 141
    return-void
    .line 144
.end method
