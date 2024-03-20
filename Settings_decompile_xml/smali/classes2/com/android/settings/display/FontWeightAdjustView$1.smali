.class Lcom/android/settings/display/FontWeightAdjustView$1;
.super Ljava/lang/Object;
.source "FontWeightAdjustView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FontWeightAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FontWeightAdjustView;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FontWeightAdjustView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/display/LargeFontUtils;->setFontWeight(Landroid/content/Context;I)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontWeightAdjustView;->-$$Nest$mgetPointX(Lcom/android/settings/display/FontWeightAdjustView;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/android/settings/display/FontWeightAdjustView;->-$$Nest$fputmPointsX(Lcom/android/settings/display/FontWeightAdjustView;F)V

    .line 225
    iget-object p1, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    .line 227
    iget-object p1, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontWeightAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/display/FontWeightAdjustView;)Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/settings/display/FontWeightAdjustView$1;->this$0:Lcom/android/settings/display/FontWeightAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontWeightAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/display/FontWeightAdjustView;)Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;->onWeightChange(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 0
    return-void
.end method
