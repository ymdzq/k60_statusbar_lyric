.class Lcom/android/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmZenMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fputmMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fputmZenMuted(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmStream(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmCallback(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, v0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x35

    .line 153
    invoke-static {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->-$$Nest$fgetmJankMonitor(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
