.class Lcom/android/settings/sound/RingerVolumeFragment$4;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/RingerVolumeFragment;->restoreAllVolumes()V
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

    .line 222
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$4;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$4;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->doRestoreAllVolumes()V

    return-void
.end method
