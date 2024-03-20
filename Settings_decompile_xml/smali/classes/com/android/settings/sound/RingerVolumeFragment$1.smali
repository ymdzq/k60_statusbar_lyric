.class Lcom/android/settings/sound/RingerVolumeFragment$1;
.super Landroid/os/Handler;
.source "RingerVolumeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$1;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$1;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$mupdateSlidersAndMutedStates(Lcom/android/settings/sound/RingerVolumeFragment;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 114
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$sfgetSEEKBAR_TYPE()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 116
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$sfgetSEEKBAR_TYPE()[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$1;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {v1, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$mupdateSlidersAndMutedStates(Lcom/android/settings/sound/RingerVolumeFragment;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
