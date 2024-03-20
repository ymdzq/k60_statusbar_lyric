.class Lcom/android/settings/emergency/ui/SosSettings$1;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->openMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$1;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$1;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmSosPlayerPref(Lcom/android/settings/emergency/ui/SosSettings;)Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/emergency/ui/view/SosCustomPreference;->setPlayIcon(Z)V

    return-void
.end method
