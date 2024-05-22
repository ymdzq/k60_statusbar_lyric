.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/MediaHostStatesManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$9;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHostStateChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$9;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->desiredLocation:I

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    invoke-static {p0, v0, p2}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;ILcom/android/systemui/media/controls/ui/MediaHostState;)V

    .line 17
    :cond_1
    return-void
    .line 20
.end method
