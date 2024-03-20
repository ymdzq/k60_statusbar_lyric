.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification$2;IZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 4
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    iput-boolean p3, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$2:Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 8
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$2:Z

    .line 12
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iput-boolean p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    .line 26
    :cond_0
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 29
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$1:I

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$2:Z

    .line 33
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 43
    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 53
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    goto :goto_2

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    .line 60
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v2

    .line 67
    if-eqz p0, :cond_2

    .line 68
    const v3, 0x7f080add    # @drawable/accessibility_window_magnification_drag_handle_background_change 'res/drawable/accessibility_window_magnification_drag_handle_background_change.xml'

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const v3, 0x7f080adc    # @drawable/accessibility_window_magnification_drag_handle_background 'res/drawable/accessibility_window_magnification_drag_handle_background.xml'

    .line 74
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 84
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 86
    if-eqz p0, :cond_3

    .line 88
    const p0, 0x7f06030f    # @color/magnification_border_color '#f29900'

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    const p0, 0x7f060312    # @color/magnification_drag_handle_stroke '#000000'

    .line 94
    :goto_1
    invoke-virtual {v2, p0}, Landroid/content/Context;->getColor(I)I

    .line 97
    move-result p0

    .line 100
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 101
    invoke-direct {v1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    :cond_4
    :goto_2
    return-void

    .line 111
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 112
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$1:I

    .line 114
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;->f$2:Z

    .line 116
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 118
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 125
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 126
    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 130
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setEditMagnifierSizeMode(Z)V

    .line 136
    :cond_5
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 140
.end method
