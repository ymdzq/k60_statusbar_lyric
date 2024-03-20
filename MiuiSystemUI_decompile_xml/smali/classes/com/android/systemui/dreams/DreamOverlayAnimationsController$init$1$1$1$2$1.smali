.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $px:F

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    iput p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$px:F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$px:F

    invoke-static {v0, p0, p1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->access$setElementsTranslationYAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FI)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 5
    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$px:F

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->access$setElementsAlphaAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FIZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->accept(I)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$1$2$1;->accept(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
