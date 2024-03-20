.class Lcom/android/settings/notification/MiuiMusicMuteActivity$2;
.super Ljava/lang/Object;
.source "MiuiMusicMuteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiMusicMuteActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiMusicMuteActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiMusicMuteActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity$2;->this$0:Lcom/android/settings/notification/MiuiMusicMuteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity$2;->this$0:Lcom/android/settings/notification/MiuiMusicMuteActivity;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiMusicMuteActivity;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiMusicMuteActivity;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/MiuiMusicMuteActivity;->-$$Nest$mupdateMusicMute(Lcom/android/settings/notification/MiuiMusicMuteActivity;Landroid/content/Context;Z)V

    const-string p1, "MiuiMusicMuteActivity"

    const-string p2, "Niel---- [Y]unmute."

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity$2;->this$0:Lcom/android/settings/notification/MiuiMusicMuteActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
