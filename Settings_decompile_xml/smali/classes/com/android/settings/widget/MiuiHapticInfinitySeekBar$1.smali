.class Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;
.super Ljava/lang/Object;
.source "MiuiHapticInfinitySeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmUserMoveFlag(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "haptic_feedback_infinite_progress"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p1, p2}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$mprogressToLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;I)F

    move-result p1

    .line 225
    iget-object p3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p3}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmLastLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)F

    move-result p3

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_2

    .line 226
    iget-object p3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p3, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fputmLastLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;F)V

    .line 227
    iget-object p3, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$msetHapticLevel(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;Landroid/content/Context;F)V

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$mgetPointX(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fputmPointsX(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;F)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    .line 232
    iget-object p1, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 233
    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;->onSeekBarProgressChange(I)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;->onSeekBarStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$1;->this$0:Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->-$$Nest$fgetmListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;)Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;->onSeekBarStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
