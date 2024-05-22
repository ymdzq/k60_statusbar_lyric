.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onTouch$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newScrollX:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onTouch$1;->$newScrollX:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 4
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$onTouch$1;->$newScrollX:I

    .line 6
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 12
    return-void
    .line 15
.end method
