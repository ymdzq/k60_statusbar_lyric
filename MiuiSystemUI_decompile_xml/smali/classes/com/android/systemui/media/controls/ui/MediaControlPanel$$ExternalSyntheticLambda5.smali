.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;Landroidx/constraintlayout/widget/ConstraintSet;ZLandroidx/constraintlayout/widget/ConstraintSet;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$1:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 6
    iput-boolean p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$2:Z

    .line 8
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$3:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$1:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$2:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$3:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    .line 21
    move-result v0

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    .line 28
    move-result p1

    .line 31
    invoke-static {p0, p1, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 32
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$1:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$2:Z

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda5;->f$3:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    .line 49
    move-result v0

    .line 52
    invoke-static {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    .line 56
    move-result p1

    .line 59
    invoke-static {p0, p1, v2}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setVisibleAndAlpha$1(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 60
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
