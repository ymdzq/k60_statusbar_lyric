.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $isIconRipple:Z

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->$isIconRipple:Z

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 5
    iget-boolean p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->$isIconRipple:Z

    .line 7
    if-eqz p2, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 11
    invoke-static {p0, p1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    .line 17
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 23
    return-void
    .line 26
.end method
