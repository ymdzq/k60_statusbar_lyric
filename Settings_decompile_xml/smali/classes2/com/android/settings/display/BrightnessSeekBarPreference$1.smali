.class Lcom/android/settings/display/BrightnessSeekBarPreference$1;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->access$000(Lcom/android/settings/display/BrightnessSeekBarPreference;IZ)V

    if-eqz p3, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fgetmSeekBarAnimator(Lcom/android/settings/display/BrightnessSeekBarPreference;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fgetmSeekBarAnimator(Lcom/android/settings/display/BrightnessSeekBarPreference;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0, p2, v1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$msetBrightness(Lcom/android/settings/display/BrightnessSeekBarPreference;IZ)V

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fputmIsTracking(Lcom/android/settings/display/BrightnessSeekBarPreference;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$fputmIsTracking(Lcom/android/settings/display/BrightnessSeekBarPreference;Z)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->-$$Nest$msetBrightness(Lcom/android/settings/display/BrightnessSeekBarPreference;IZ)V

    return-void
.end method
