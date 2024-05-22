.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnification;

    .line 10
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$1:I

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnification;->showMagnificationSettingsPanel(I)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 20
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;->f$1:I

    .line 22
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnification;->showMagnificationSettingsPanel(I)V

    .line 26
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
