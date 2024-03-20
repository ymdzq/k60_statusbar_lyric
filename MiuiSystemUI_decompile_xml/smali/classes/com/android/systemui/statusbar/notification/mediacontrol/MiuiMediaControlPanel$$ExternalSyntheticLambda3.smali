.class public final synthetic Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$13:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public final synthetic f$2:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;IIIIIIIILandroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$4:I

    .line 11
    iput p5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$5:I

    .line 13
    iput p6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$6:I

    .line 15
    iput p7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$9:I

    .line 17
    iput p8, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$10:I

    .line 19
    iput p9, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$11:I

    .line 21
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$13:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    iget v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$4:I

    .line 8
    iget v4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$5:I

    .line 10
    iget v5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$6:I

    .line 12
    iget v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$9:I

    .line 14
    iget v7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$10:I

    .line 16
    iget v8, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$11:I

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda3;->f$13:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 20
    filled-new-array {v1, v2}, [I

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->setBackground([I)V

    .line 26
    const/16 v1, 0xff

    .line 29
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 31
    move-result v2

    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 36
    move-result v3

    .line 39
    filled-new-array {v2, v3}, [I

    .line 40
    move-result-object v2

    .line 43
    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 44
    move-result v1

    .line 47
    invoke-static {v9, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 48
    move-result v3

    .line 51
    filled-new-array {v1, v3}, [I

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {v0, v2, v1, p0, v0}, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->setPaintColor([I[ILandroid/graphics/drawable/GradientDrawable$Orientation;Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;)V

    .line 56
    return-void
    .line 59
.end method
